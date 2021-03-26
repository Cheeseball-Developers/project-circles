import 'dart:async';
import 'dart:core';
import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:nearby_connections/nearby_connections.dart';
import 'package:projectcircles/domain/circle/connection_failure.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/domain/files/payload_info.dart';
import 'package:projectcircles/domain/settings/settings_failure.dart';
import 'package:projectcircles/infrastructure/database/app_database.dart';
import 'package:projectcircles/infrastructure/files/file_info_dtos.dart';
import 'package:projectcircles/infrastructure/settings/my_shared_preferences.dart';

@LazySingleton()
class NearbyConnections {
  final Nearby _nearby = Nearby();
  final AppDatabase _appDatabase;
  final MySharedPreferences _preferences;

  NearbyConnections(this._appDatabase, this._preferences);

  String? _username;
  String _endName = ""; //currently connected device name
  File? _tempFile; //store file mapped to corresponding payloadId
  //Map<int, String> map = {};
  List<FileInfo> fileInfos = [];
  int fileIndex = 0;
  User? discoveredDevice;
  User? incomingRequest;
  String? host; // host username
  int? lastFilePayloadId;

  final logger = Logger();

  final StreamController<User> onEndFound = StreamController<User>.broadcast();
  Stream<User>? discoveredDeviceStream;

  final StreamController<String> onEndLost =
      StreamController<String>.broadcast();

  Stream<String>? lostDeviceStream;

  final StreamController<String> onHostLost =
      StreamController<String>.broadcast();

  Stream<String>? onHostLostStream;

  final StreamController<String> onDiscovererLost =
      StreamController<String>.broadcast();

  Stream<String>? onDiscovererLostStream;

  final StreamController<User> onRequestSent =
      StreamController<User>.broadcast();

  Stream<User>? incomingRequestStream;

  StreamController<Either<ConnectionFailure, Unit>> onConnectionResultDisc =
      StreamController<Either<ConnectionFailure, Unit>>.broadcast();

  Stream<Either<ConnectionFailure, Unit>>? onConnectionResultDiscStream;

  final StreamController<FileInfo> sendingFileInfo =
      StreamController<FileInfo>.broadcast();

  Stream<FileInfo>? sendingFileInfoStream;

  Either<ConnectionFailure, Unit>? connectionResult;

  final StreamController<PayloadInfo> progressOfFile =
      StreamController<PayloadInfo>.broadcast();
  Stream<PayloadInfo>? progressOfFileStream;

  final StreamController<String> response =
      StreamController<String>.broadcast();
  Stream<String>? responseStream;

  final StreamController<String> fileSharingSuccessful =
      StreamController<String>.broadcast();
  Stream<String>? fileSharingSuccessfulStream;

  final StreamController<String> fileInfoSharingSuccessful =
      StreamController<String>.broadcast();
  Stream<String>? fileInfoSharingSuccessfulStream;

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
      logger.i("Asking for location permission");
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
      logger.i("Enabling location");
      await _nearby.enableLocationServices();
    }
    return;
  }

  Future<void> askStroragePermission() async {
    if (!await _nearby.checkExternalStoragePermission()) {
      logger.i('Asking for storage permission');
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

    logger.i("Advertising...");
    final bool a = await _nearby.startAdvertising(_username!, strategy,
        serviceId: _serviceId, onConnectionInitiated:
            (String endId, ConnectionInfo connectionInfo) async {
      logger.i(
          "A connection is being initiated to ${connectionInfo.endpointName}");
      host = _username;
      _endName = connectionInfo.endpointName;
      incomingRequest = User(
          uid: UniqueId.fromUniqueString(endId),
          name: Name(connectionInfo.endpointName));
      onRequestSent.sink.add(incomingRequest!);
    }, onConnectionResult: (id, Status status) {
      logger.i("Status of the connection to $_endName, id: $id,  : $status");
      {
        if (status == Status.CONNECTED) {
          //_endId = id;
          logger.i(
              "Connection successfully established to the discoverer $_endName");
        } else if (status == Status.REJECTED) {
          logger.i("Connection rejected by discoverer $_endName : $id");
        } else if (status == Status.ERROR) {
          logger.w("Error in connecting to $id..Please try again");
        }
      }
    }, onDisconnected: (String id) {
      onDiscovererLost.sink.add(id);
      logger.w("Disconnected from: $id");
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
    logger.i("Discovering....");
    logger.i("This is my username: $_username");
    discoveredDeviceStream = onEndFound.stream;
    lostDeviceStream = onEndLost.stream;
    onConnectionResultDisc =
        StreamController<Either<ConnectionFailure, Unit>>.broadcast();
    onConnectionResultDiscStream = onConnectionResultDisc.stream;
    sendingFileInfoStream = sendingFileInfo.stream;
    progressOfFileStream = progressOfFile.stream;
    responseStream = response.stream;
    fileSharingSuccessfulStream = fileSharingSuccessful.stream;
    fileInfoSharingSuccessfulStream = fileInfoSharingSuccessful.stream;

    final bool a = await _nearby.startDiscovery(
      _username!,
      strategy,
      serviceId: _serviceId,
      onEndpointFound: (String id, String name, String serviceId) {
        discoveredDevice =
            User(uid: UniqueId.fromUniqueString(id), name: Name(name));
        logger.i("Connection found at id: $id and name: $name");

        // add to the sink
        onEndFound.sink.add(discoveredDevice!);
        _endName = name;
      },
      onEndpointLost: (String? id) {
        onEndLost.sink.add(id!);
        logger.i("Endpoint lost to host $id");
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
    logger.i("Stop Discovering...");
    await _nearby.stopDiscovery();
  }

  /// Stop all EndPoints
  Future<void> stopAllEndpoints() async {
    _nearby.stopAllEndpoints();
    logger.i("Stopping all the endpoints");
  }

  Future<void> disconnectFromEndPoint({required String endpointId}) async {
    _nearby.disconnectFromEndpoint(endpointId);
    logger.i("Stopped an endPoint $endpointId");
  }

  ///request Connection called by the discoverer after successfully finding an endpoint
  Future<Either<ConnectionFailure, Unit>> requestConnection(
      {required String endpointId}) async {
    logger.i("Requested a Connection to $endpointId");
    onHostLostStream = onHostLost.stream;
    bool a;
    try {
      a = await _nearby.requestConnection(_username!, endpointId,
          onConnectionInitiated:
              (String endId, ConnectionInfo connectionInfo) async {
        logger.i("Initiating a connection to ${connectionInfo.endpointName}");
        //TODO: Check the authentication token
        logger.i(
            "Check if the token is same ${connectionInfo.authenticationToken}");
        final Either<ConnectionFailure, Unit> _acceptConnection =
            await acceptConnection(endId: endId);
        _acceptConnection.fold((failure) {
          logger.w(
              "Failure occurred on Initiating a connection more precisely $failure");
          return left(const ConnectionFailure.unexpected());
        },
            (success) => {
                  logger.i(
                      "Connection is accepted from me waiting for host: $success to $endId")
                });
      }, onConnectionResult: (id, Status status) {
        logger.i(
          "Status of the connection to host $id : $status,\n status values: ${status.index}",
        );
        if (status == Status.CONNECTED) {
          onConnectionResultDisc.sink.add(right(unit));
          onConnectionResultDisc.close();
          logger.i(
              "Connection accepted by the host and the connection is successful");
        } else if (status == Status.REJECTED) {
          onConnectionResultDisc.sink
              .add(left(const ConnectionFailure.cancelledByUser()));
          logger.i("Connection rejected by host : $id");
        } else if (status == Status.ERROR) {
          onConnectionResultDisc.sink
              .add(left(const ConnectionFailure.unexpected()));
          logger.w("Error in connecting to $host..Please try again");
        }
      }, onDisconnected: (String id) {
        logger.i("Disconnected! Connect again to: $id");
        onHostLost.sink.add(id);
      });
    } catch (e) {
      logger.e('some error occurred in requesting a '
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
    logger.i(info.authenticationToken);
  }

  //Accept Connection to connect successfully
  Future<Either<ConnectionFailure, Unit>> acceptConnection(
      {required String endId}) async {
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
      //TODO: return according to the returned values of the above functions
      return right(unit);
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  //Reject Connection
  Future<Either<ConnectionFailure, Unit>> rejectConnection(
      {required String endId}) async {
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
      logger.d(
          '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5 hehe i am initatited on sending a file payload');
      //TODO add the message of file transfer started
      logger.i("File transfer started from $endId");
      _tempFile = File(payload.filePath!);

      /*if (fileIndex < fileInfos.length) {
        if (await _tempFile.exists()) {
          _tempFile
              .rename("${_tempFile.parent.path}/${fileInfos[fileIndex].name}");
          logger.d('parent dir:${_tempFile.parent}');
        } else {
          logger.d("File doesn't exist");
        }
      }*/

      final Either<SettingsFailure, Directory> failureOrDirectory =
          await _preferences.getDirectory();
      failureOrDirectory.fold((f) => null, (directory) async {
        final String psp = directory.path;
        //creates a directory if not present
        Directory(psp).create();
        Directory(_tempFile!.parent.path).delete();
        logger.d('Directory o : $psp');

        _tempFile!.rename("$psp/${fileInfos[fileIndex].name}");
      });

      fileIndex += 1;

      return right(unit);
    } else if (payload.type == PayloadType.BYTES) {
      logger.i("Bytes payload received");
      //converting the bytes received to string
      final String str = String.fromCharCodes(payload.bytes!);

      logger.i("Bytes received from $endId:  $str");

      //receiving the fileInfo
      //name, path, size, thumbnail,hash
      if (str.contains('*')) {
        _isFileInfo = true;
        final List<String> info = str.split("***");
        for (final fileInfo in info) {
          final List<String> keyFileInfo = fileInfo.split("*");
          final String keyFileName = keyFileInfo[0];
          final int keyFileSize = int.parse(keyFileInfo[1]);
          final List<String> thumbnailPixels =
              keyFileInfo[2].substring(1, keyFileInfo[2].length - 1).split(",");
          final List<int> thumbnailList = [];
          thumbnailPixels.forEach((pixel) {
            thumbnailList.add(int.parse(pixel));
          });
          final Uint8List keyFileThumbnail = Uint8List.fromList(thumbnailList);
          final int keyFileHash = int.parse(keyFileInfo[3]);

          final Either<SettingsFailure, Directory> failureOrDirectory =
              await _preferences.getDirectory();

          failureOrDirectory.fold((f) => null, (directory) {
            final FileInfo fileInfo = FileInfo(
              hash: keyFileHash,
              path: "${directory.path}/$keyFileName",
              bytesSize: keyFileHash,
              thumbnail: keyFileThumbnail,
              name: keyFileName,
            );
            //streaming the fileInfo
            sendingFileInfo.sink.add(fileInfo);

            fileInfos.add(fileInfo);

            final FileTransferItem item = FileInfoDto(
              hash: keyFileHash,
              name: keyFileName,
              path: "${directory.path}/$keyFileName",
              bytesSize: keyFileSize,
              thumbnail: keyFileThumbnail,
              dateTime: DateTime.now(),
            ).toFileTransferItem();

            //_appDatabase.fileTransferItemDao.addFileTransferItem(item);
          });
        }
      }

      if (str.contains('@')) {
        _isFile = false;
        logger.d('$_isFile isFile is set false when response is got');
        final String responseGot = str.split('@').last;
        final String r = '$endId@$responseGot';

        response.sink.add(r);
        if (responseGot == 'false') {
          logger.i('$endId denied');
        }
      }

      return right(unit);

      // used for file payload as file payload is mapped as
      // payloadId:filename
      /*if (str.contains(':')) {
        final int payloadId = int.parse(str.split(':')[0]);
        final String fileName = str.split(':').last;
        logger.d('----fileName: $fileName');
        if (map.containsKey(payloadId)) {
          if (await _tempFile.exists()) {
            _tempFile.rename("${_tempFile.parent.path}/$fileName");
            logger.d('parent dir:${_tempFile.parent}');
          } else {
            logger.d("File doesn't exist");
          }
        } else {
          //add to map if not already
          map[payloadId] = fileName;
        }
      }
      return right(unit);*/
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///Gives the status of the payLoadReceived
  //TODO : implement the states according to the status and show it in the UI
  Future<Either<ConnectionFailure, Unit>> onPayloadTransferUpdate(
      String endId, PayloadTransferUpdate payloadTransferUpdate) async {
    if (payloadTransferUpdate.status == PayloadStatus.IN_PROGRESS) {
      if (_isFile) {
        logger.v(
            'Percentage : ${payloadTransferUpdate.bytesTransferred * 100 / payloadTransferUpdate.totalBytes}');
        logger.d('----------------I am added to progressStream for progress');
        progressOfFile.sink.add(PayloadInfo(
            payloadId: payloadTransferUpdate.id,
            progress: payloadTransferUpdate.bytesTransferred /
                payloadTransferUpdate.totalBytes,
            endId: endId));
      }
      logger.d('Total Bytes: ${payloadTransferUpdate.totalBytes}');
      logger.d(
          "Sending Receiving files/data to $endId ${payloadTransferUpdate.bytesTransferred}");
      return right(unit);
    } else if (payloadTransferUpdate.status == PayloadStatus.SUCCESS) {
      if (_isFile) {
        logger.d(
            '$_isFile %%%%%%% hehe i am called  for file transfer complete lets see');
        fileSharingSuccessful.sink.add(endId);
      } else if (_isFileInfo) {
        fileInfoSharingSuccessful.sink.add(endId);
        logger.i(
            "sent/recieved data to $endId, ${payloadTransferUpdate.totalBytes}");
      }
      /*if (map.containsKey(payloadTransferUpdate.id)) {
        logger.i(
            "sent /recieved files to $endId, ${payloadTransferUpdate.totalBytes}");

        //rename the file now
        final String name = map[payloadTransferUpdate.id];

        ///storage/emulated/0/Download/Nearby
        //final List<String> prp = _tempFile.parent.path.split('/');
        //prp.removeLast();
        //prp.removeWhere((element) => element == 'Nearby');
        //final String pp = '${prp.join('/')}/Circles';
        //logger.d('Directory p : $pp');
        final Either<SettingsFailure, Directory> failureOrDirectory =
            await _preferences.getDirectory();
        failureOrDirectory.fold((f) => null, (directory) async {
          final String psp = directory.path;
          //creates a directory if not present
          Directory(psp).create();
          Directory(_tempFile.parent.path).delete();
          logger.d('Directory o : $psp');

          _tempFile.rename("$psp/$name");
        });
      } else {
        //bytes not received till yet
        map[payloadTransferUpdate.id] = "";
      }*/
      return right(unit);
    }

    ///
    else {
      logger.w("Not received/sent file, some error occurred");
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///Sending Files
  Future<Either<ConnectionFailure, Unit>> sendFilePayload(
      {required String receiver, required List<File> files}) async {
    //Sending the number of files that are being sent
    for (final file in files) {
      logger.d('filePath: ${file.path}');

      /// Returns the payloadID as soon as file transfer has begun
      ///
      /// File is received in DOWNLOADS_DIRECTORY and is given a generic name
      /// without extension
      /// You must also send a bytes payload to send the filename and extension
      /// so that receiver can rename the file accordingly
      /// Send the payloadID and filename to receiver as bytes payload

      logger.d('$_isFile  isfile is set true in sending');
      await _nearby.sendFilePayload(receiver, file.path).then((id) async {
        lastFilePayloadId = id;
      });
      _isFile = true;
      logger.i("Sending File to $receiver");

      //Sending the fileName and payloadId to the receiver
      logger.i("Currently sending file is: ${file.path.split('/').last}");
    }

    if (lastFilePayloadId != null) {
      return right(unit);
    }
    return left(const ConnectionFailure.unexpected());
  }

  Future<void> acceptOrRejectFiles(
      {required bool response, required String endId}) async {
    logger.i('Sending response $response to the host');
    _nearby.sendBytesPayload(
        endId, Uint8List.fromList("Response@$response".codeUnits));
  }

  Future<void> sendFilenameSizeBytesPayload(
      {required List<User> users,
      required List<FileInfo> outgoingFiles}) async {
    logger.i("Sending the file name and size");
    _isFile = false;
    logger.d('$_isFile isfile is set false in sending fileinfo');
    String info = '';

    for (final int outgoingFileInfoIndex
        in Iterable.generate(outgoingFiles.length)) {
      final file = outgoingFiles[outgoingFileInfoIndex];
      info +=
          "${file.name}*${file.bytesSize}*${file.thumbnail}*${file.hash}***";
      if (outgoingFileInfoIndex % 3 == 2 ||
          outgoingFileInfoIndex == outgoingFiles.length - 1) {
        for (final user in users) {
          _nearby.sendBytesPayload(
            user.uid.getOrCrash(),
            //name, path, size, thumbnail,hash
            Uint8List.fromList(info.substring(0, info.length - 3).codeUnits),
          );
        }
        info = '';
      }
    }
  }

  Future<void> cancelPayload(int payloadId) async {
    await _nearby.cancelPayload(payloadId);
  }
}
