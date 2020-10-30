import 'dart:async';
import 'dart:core';
import 'dart:io';
import 'dart:typed_data';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:nearby_connections/nearby_connections.dart';
import 'package:projectcircles/domain/circle/connection_failure.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/domain/files/payload_info.dart';

@LazySingleton()
class NearbyConnections {
  final Nearby _nearby = Nearby();
  String _username;
  String _endName = ""; //currently connected device name
  File _tempFile; //store file mapped to corresponding payloadId
  Map<int, String> map = {};
  User discoveredDevice;
  User incomingRequest;
  String host; // host username

  final StreamController<User> onEndFound = StreamController<User>.broadcast();
  Stream<User> discoveredDeviceStream;

  final StreamController<String> onEndLost =
      StreamController<String>.broadcast();

  Stream<String> lostDeviceStream;

  final StreamController<String> onHostLost =
      StreamController<String>.broadcast();

  Stream<String> onHostLostStream;

  final StreamController<String> onDiscovererLost =
      StreamController<String>.broadcast();

  Stream<String> onDiscovererLostStream;

  final StreamController<User> onRequestSent =
      StreamController<User>.broadcast();

  Stream<User> incomingRequestStream;

  final StreamController<Either<ConnectionFailure, Unit>>
      onConnectionResultDisc =
      StreamController<Either<ConnectionFailure, Unit>>.broadcast();
  Stream<Either<ConnectionFailure, Unit>> onConnectionResultDiscStream;

  final StreamController<FileInfo> sendingFileInfo =
      StreamController<FileInfo>.broadcast();
  Stream<FileInfo> sendingFileInfoStream;

  Either<ConnectionFailure, Unit> connectionResult;

  final StreamController<PayloadInfo> progressOfFile =
      StreamController<PayloadInfo>.broadcast();
  Stream<PayloadInfo> progressOfFileStream;

  final StreamController<String> response =
      StreamController<String>.broadcast();
  Stream<String> responseStream;

  final StreamController<String> fileSharingSuccessful =
      StreamController<String>.broadcast();
  Stream<String> fileSharingSuccessfulStream;

  final StreamController<String> fileInfoSharingSuccessful =
      StreamController<String>.broadcast();
  Stream<String> fileInfoSharingSuccessfulStream;

  bool _isFile = false;
  bool _isFileInfo = false;

  List<User> members = [];

  /// **P2P_CLUSTER** - best for small payloads and multiplayer games
  ///
  /// **P2P_STAR** - best for medium payloads, higher bandwidth than cluster
  ///
  /// **P2P_POINT_TO_POINT** - single connection, very high bandwidth

  /// for now P2P_Point ,can be switched according to the needs current set has high bandwidth
  static const Strategy strategy = Strategy.P2P_STAR;
  static const String _serviceId = "cheeseball.projectcircles";

  set setUsername(String username) {
    _username = username;
  }

  // initial setup
  Future<bool> isLocationPermitted() async {
    if (await _nearby.checkLocationPermission()) {
      return true;
    }
    return false;
  }

  /// asks for permission only if its not given
  Future<void> permitLocation() async {
    if (!await isLocationPermitted()) {
      debugPrint("yay asking permsission");
      await _nearby.askLocationPermission();
    }
    return;
  }

  /// asks for enabling loaction only if it is not enabled
  Future<bool> isLocationEnabled() async {
    if (await _nearby.checkLocationEnabled()) {
      return true;
    }
    return false;
  }

  // opens dialogue to enable location service
  Future<void> enableLocation() async {
    if (!await isLocationEnabled()) {
      debugPrint("enabling location");
      await _nearby.enableLocationServices();
    }
    return;
  }

  Future<void> askStroragePermission() async {
    if (!await _nearby.checkExternalStoragePermission()) {
      debugPrint('Asking for storage permission');
      _nearby.askExternalStoragePermission();
    }
  }

  /// Network and Connection
  ///host starts advertising
  Future<Either<ConnectionFailure, Unit>> startAdvertising() async {
    incomingRequestStream = onRequestSent.stream;
    onDiscovererLostStream = onDiscovererLost.stream;
    sendingFileInfoStream = sendingFileInfo.stream;
    progressOfFileStream = progressOfFile.stream;
    responseStream = response.stream;
    fileSharingSuccessfulStream = fileSharingSuccessful.stream;
    fileInfoSharingSuccessfulStream = fileInfoSharingSuccessful.stream;

    debugPrint("Advertising...");
    final bool a = await _nearby.startAdvertising(_username, strategy,
        serviceId: _serviceId, onConnectionInitiated:
            (String endId, ConnectionInfo connectionInfo) async {
      debugPrint(
          "A connection is being initiated to ${connectionInfo.endpointName}");
      host = _username;
      _endName = connectionInfo.endpointName;
      incomingRequest = User(
          uid: UniqueId.fromUniqueString(endId),
          name: Name(connectionInfo.endpointName));
      onRequestSent.sink.add(incomingRequest);
    }, onConnectionResult: (id, Status status) {
      debugPrint(
          "Status of the connection to yyo $_endName ,id: $id,  : $status");
      {
        if (status == Status.CONNECTED) {
          //_endId = id;
          debugPrint(
              "Connection successfully established to the dicoverer $_endName");
        } else if (status == Status.REJECTED) {
          debugPrint("Connection rejected by discoverer $_endName : $id");
        } else if (status == Status.ERROR) {
          debugPrint("Error in connecting to $id..Please try again");
        }
      }
    }, onDisconnected: (String id) {
      onDiscovererLost.sink.add(id);
      debugPrint("Disconnected to : $id");
    });
    if (a) {
      return right(unit);
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///Stop Advertising
  ///After calling stopAdvertising(), the advertiser can still receive connection
  ///requests from discoverers that discovered while advertising was active.
  ///After calling stopDiscovery(), the discoverer can still request connections
  ///to advertisers that were discovered; however,the discoverer will not
  /// discover any new advertisers until it starts discovery again.
  Future<void> stopAdvertising() async {
    await _nearby.stopAdvertising();
  }

  ///Start Discovering
  Future<Either<ConnectionFailure, Unit>> startDiscovering() async {
    debugPrint("Discovering....");
    debugPrint("this is my username: $_username");
    discoveredDeviceStream = onEndFound.stream;
    lostDeviceStream = onEndLost.stream;
    onConnectionResultDiscStream = onConnectionResultDisc.stream;
    sendingFileInfoStream = sendingFileInfo.stream;
    progressOfFileStream = progressOfFile.stream;
    responseStream = response.stream;
    fileSharingSuccessfulStream = fileSharingSuccessful.stream;
    fileInfoSharingSuccessfulStream = fileInfoSharingSuccessful.stream;

    final bool a = await _nearby.startDiscovery(
      _username,
      strategy,
      serviceId: _serviceId,
      onEndpointFound: (String id, String name, String serviceId) {
        discoveredDevice =
            User(uid: UniqueId.fromUniqueString(id), name: Name(name));
        debugPrint("Connection found at id: $id and name: $name");

        // add to the sink hehe
        onEndFound.sink.add(discoveredDevice);
        _endName = name;
      },
      onEndpointLost: (String id) {
        onEndLost.sink.add(id);
        debugPrint("Endpoint lost to host $id");
      },
    );
    if (a && discoveredDevice != null) {
      return right(unit);
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///Stop Discovering
  ///
  /// This doesn't disconnect from already connected Endpoint
  /// It is reccomended to call this method
  /// once you have connected to an endPoint
  /// as discovery uses heavy radio operations
  /// which may affect connection speed and integrity
  Future<void> stopDiscovering() async {
    debugPrint("Stop Discovering..");
    await _nearby.stopDiscovery();
  }

  /// Stop all EndPoints
  Future<void> stopAllEndpoints() async {
    _nearby.stopAllEndpoints();
    debugPrint("Stopping all the endpoints");
  }

  Future<void> disconnectFromEndPoint(String endpointId) async {
    _nearby.disconnectFromEndpoint(endpointId);
    debugPrint("Stopped an endPoint $endpointId");
  }

  ///request Connection called by the discoverer after successfully finding an endpoint
  Future<Either<ConnectionFailure, Unit>> requestConnection(
      {@required String endpointId}) async {
    debugPrint("Requested a Connection to $endpointId");
    onHostLostStream = onHostLost.stream;
    bool a;
    try {
      a = await _nearby.requestConnection(_username, endpointId,
          onConnectionInitiated:
              (String endId, ConnectionInfo connectionInfo) async {
        debugPrint("Initiating a connection to ${connectionInfo.endpointName}");
        //TODO: Check the authentication token
        debugPrint(
            "Check if the token is same ${connectionInfo.authenticationToken}");
        //accept by default in discoverer side
        //TODO: Accept only after the host has accepted the connection
        final Either<ConnectionFailure, Unit> _acceptConnection =
            await acceptConnection(endId: endId);
        _acceptConnection.fold((failure) {
          debugPrint(
              "Failure occurred on Initiating a connection more precisely $failure");
          return left(const ConnectionFailure.unexpected());
        },
            (success) => {
                  debugPrint(
                      "Connection is automatically accepted from me waiting for host yo: $success to $endId")
                });
      }, onConnectionResult: (id, Status status) {
        debugPrint(
          "Status of the connection to host $id : $status,\n status values: ${status.index}",
        );
        if (status == Status.CONNECTED) {
          onConnectionResultDisc.sink.add(right(unit));
          onConnectionResultDisc.close();
          debugPrint(
              "Connection accepted by the host and the connection is successful");
        } else if (status == Status.REJECTED) {
          onConnectionResultDisc.sink
              .add(left(const ConnectionFailure.cancelledByUser()));
          debugPrint("Connection rejected by host : $id");
        } else if (status == Status.ERROR) {
          onConnectionResultDisc.sink
              .add(left(const ConnectionFailure.unexpected()));
          debugPrint("Error in connecting to $host..Please try again");
        }
      }, onDisconnected: (String id) {
        debugPrint("Disconnected! Connect again to: $id");
        onHostLost.sink.add(id);
      });
    } catch (e) {
      debugPrint('some error occurred in requesting a '
          'connection, maybe due to host has closed the circle,\n more precisely the error is $e');
      return left(const ConnectionFailure.endPointUnknown());
    }

    if (a) {
      return right(unit);
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///on connection Initiated to accept/reject connection :
  /// both the advertiser and discoverer has to call this
  /// Both need to accept connection to start sending/receiving

  void onConnectionInit(String endId, ConnectionInfo info) {
    //TODO : connectionInfo code should match
    debugPrint(info.authenticationToken);
  }

  //Accept Connection to connect successfully
  Future<Either<ConnectionFailure, Unit>> acceptConnection(
      {@required String endId}) async {
    final a = await _nearby.acceptConnection(endId,
        onPayLoadRecieved: (String endId, Payload payload) {
      //TODO this is the called as soon as the file transfer is started
      onPayloadReceived(endId, payload);
    }, onPayloadTransferUpdate:
            (String endId, PayloadTransferUpdate payloadTransferUpdate) {
      //TODO: Again with the values that are returned
      onPayloadTransferUpdate(endId, payloadTransferUpdate);
    });
    if (a) {
      //TODO: return according to the returned values of thr above functions
      return right(unit);
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  //Reject Connection
  Future<Either<ConnectionFailure, Unit>> rejectConnection(
      {@required String endId}) async {
    final a = await _nearby.rejectConnection(endId);
    if (a) {
      //TODO: return according to the returned values of thr above functions
      return right(unit);
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///onPayload Received:
  ///we store the payload in a _tempFile which is reference
  ///to the current file being transferred
  ///also saves the fileName and extension

  Future<Either<ConnectionFailure, Unit>> onPayloadReceived(
      String endId, Payload payload) async {
    if (payload.type == PayloadType.FILE) {
      _isFile = true;
      //TODO add the message of file transfer started
      debugPrint("File transfer started from $endId");
      _tempFile = File(payload.filePath);
      return right(unit);
    } else if (payload.type == PayloadType.BYTES) {
      debugPrint("bytes payload received");
      //converting the bytes received to string
      final String str = String.fromCharCodes(payload.bytes);

      debugPrint("Bytes received from $endId:  $str");

      //receiving the fileInfo
      if (str.contains('*')) {
        _isFileInfo = true;
        final String keyFileName = str.split('*').first;
        final int fileSize = int.parse(str.split('*').last);

        //streaming the fileInfo
        sendingFileInfo.sink.add(FileInfo(
          name: 'Filename to be added here in nearby',
          hash: 1234,
          path: keyFileName,
          bytesSize: fileSize,
          thumbnail: Uint8List(4),
        ));
      }

      if (str.contains('@')) {
        final responseGot = str.split('@').last;
        if (responseGot == 'true') {
          response.sink.add(endId);
        } else {
          debugPrint('$endId denied');
        }
      }

      // used for file payload as file payload is mapped as
      // payloadId:filename
      if (str.contains(':')) {
        final int payloadId = int.parse(str.split(':')[0]);
        final String fileName = str.split(':').last;
        print('----fileName: $fileName');
        if (map.containsKey(payloadId)) {
          if (await _tempFile.exists()) {
            _tempFile.rename("${_tempFile.parent.path}/$fileName");
            debugPrint('parent dir:${_tempFile.parent}');
          } else {
            debugPrint("File doesn't exist");
          }
        } else {
          //add to map if not already
          map[payloadId] = fileName;
        }
      }
      return right(unit);
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///Gives the status of the payLoadReceived
  //TODO : implement the states according to the status and show it in the UI
  Future<Either<ConnectionFailure, Unit>> onPayloadTransferUpdate(
      String endId, PayloadTransferUpdate payloadTransferUpdate) async {
    if (payloadTransferUpdate.status == PayloadStatus.IN_PROGRRESS) {
      if (_isFile) {
        debugPrint(
            'percentage : ${payloadTransferUpdate.bytesTransferred * 100 / payloadTransferUpdate.totalBytes}');
        progressOfFile.sink.add(PayloadInfo(
            payloadId: payloadTransferUpdate.id,
            progress: (payloadTransferUpdate.bytesTransferred /
                    payloadTransferUpdate.totalBytes) *
                100));
      }
      debugPrint('total bytes: ${payloadTransferUpdate.totalBytes}');
      debugPrint(
          "Receiving/Sending files/data to $endId ${payloadTransferUpdate.bytesTransferred}");
      return right(unit);
    } else if (payloadTransferUpdate.status == PayloadStatus.SUCCESS) {
      debugPrint(
          "Received/sent files/data to $endId, ${payloadTransferUpdate.totalBytes}");
      if (_isFile) {
        fileSharingSuccessful.sink.add(endId);
      }
      if (_isFileInfo) {
        fileInfoSharingSuccessful.sink.add(endId);
      }
      if (map.containsKey(payloadTransferUpdate.id)) {
        //rename the file now
        final String name = map[payloadTransferUpdate.id];

        ///storage/emulated/0/Download/Nearby
        final List<String> prp = _tempFile.parent.path.split('/');
        prp.removeLast();
        prp.removeWhere((element) => element == 'Nearby');
        final String pp = '${prp.join('/')}/Circles';
        if (!await Directory(pp).exists()) {
          Directory(pp).create();
        }
        _tempFile.rename("$pp/$name");
      } else {
        //bytes not received till yet
        map[payloadTransferUpdate.id] = "";
      }
      return right(unit);
    } else {
      debugPrint("Not received file, some error occurred");
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///Sending Files
  Future<Either<ConnectionFailure, Unit>> sendFilePayload(
      {@required String receiver, @required List<File> files}) async {
    int payLoadId;
    //Sending the number of files that are being sent
    files.forEach((file) async {
      debugPrint('filePath: ${file.path}');

      /// Returns the payloadID as soon as file transfer has begun
      ///
      /// File is received in DOWNLOADS_DIRECTORY and is given a generic name
      /// without extension
      /// You must also send a bytes payload to send the filename and extension
      /// so that receiver can rename the file accordingly
      /// Send the payloadID and filename to receiver as bytes payload
      payLoadId = await _nearby.sendFilePayload(receiver, file.path);
      debugPrint("Sending File to $receiver");

      //Sending the fileName and payloadId to the receiver
      debugPrint("Currently sending file is: ${file.path.split('/').last}");
      _nearby.sendBytesPayload(
          receiver,
          Uint8List.fromList(
              "$payLoadId:${file.path.split('/').last}".codeUnits));
    });

    if (payLoadId != null) {
      return right(unit);
    }
    return left(const ConnectionFailure.unexpected());
  }

  Future<void> acceptOrRejectFiles(
      {@required bool response, @required String endId}) async {
    debugPrint('Sending response $response to the host');
    _nearby.sendBytesPayload(
        endId, Uint8List.fromList("response@$response".codeUnits));
  }

  Future<void> sendFilenameSizeBytesPayload(
      {@required List<User> users,
      @required List<FileInfo> outgoingFiles}) async {
    debugPrint("sending the file name and size");
    users.forEach((user) {
      outgoingFiles.forEach((file) {
        _nearby.sendBytesPayload(
            user.uid.getOrCrash(),
            Uint8List.fromList(
                "${file.path.split('/').last}*${file.bytesSize}".codeUnits));
      });
    });
  }

  Future<void> cancelPayload(int payloadId) async {
    await _nearby.cancelPayload(payloadId);
  }
}
