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
import 'package:projectcircles/domain/files/apps_load_failure.dart';

@LazySingleton()
class NearbyConnections {
  final Nearby _nearby = Nearby();
  String _username;
  String _endId = ''; //currently connected device ID
  String _endName = ""; //currently connected device name
  File _tempFile; //store file mapped to corresponding payloadId
  Map<int, String> map = {};
  User discoveredDevice;
  Map<String, String> members; //all the devices connected to host
  String host; // host username

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

  // initail setup
  Future<bool> isLocationPermitted() async {
    if (await _nearby.checkLocationPermission()) {
      return true;
    }
    return false;
  }

  // asks for permission only if its not given
  Future<void> permitLocation() async {
    if (!await isLocationPermitted()) {
      _nearby.askLocationPermission();
    }
    return;
  }

  Future<bool> isLocationEnabled() async {
    if (await _nearby.checkLocationEnabled()) {
      return true;
    }
    return false;
  }

  // opens dialogue to enable location service
  Future<void> enableLocation() async {
    if (!await isLocationEnabled()) {
      _nearby.enableLocationServices();
    }
    return;
  }

  /// Network and Connection

  ///host starts advertising
  Future<Either<ConnectionFailure, Unit>> startAdvertising() async {
    debugPrint("Advertising...");
    final bool a = await _nearby.startAdvertising(_username, strategy,
        serviceId: _serviceId, onConnectionInitiated:
            (String endId, ConnectionInfo connectionInfo) async {
      debugPrint("Initiating a connection to $endId");
      final Either<ConnectionFailure, bool> _onConnectionInit =
          await onConnectionInit(endId, connectionInfo,
              acceptConnection: true); //host will default accept the connection
      _onConnectionInit.fold((failure) {
        debugPrint("Failure occurred more precisely $failure");
        return left(const ConnectionFailure.unexpected());
      }, (success) {
        host = _username;
        _endName = connectionInfo.endpointName;
        debugPrint("Connection Initiated : $success");
      });
    }, onConnectionResult: (id, Status status) {
      debugPrint("Status of the connection to $_endName ,id: $id,  : $status");
      {
        if (status == Status.CONNECTED) {
          _endId = id;
          members.putIfAbsent(id, () => _endName);
          debugPrint(
              "Connection successfully established to the dicoverer $_endName");
        } else if (status == Status.REJECTED) {
          debugPrint("Connection rejected by discoverer $_endName : $id");
        } else if (status == Status.ERROR) {
          debugPrint("Error in connecting to $id..Please try again");
        }
      }
    }, onDisconnected: (String id) {
      debugPrint("Disconnected to : $id start advertising again to connect them");
      members.remove(id);
    });
    if (a) {
      //TODO: Return according to the retuned values of the above functions
      return right(unit);
    }
    return left(const ConnectionFailure.unexpected());
  }

  //Stop Adverting
  Future<void> stopAdvertising() async {
    await _nearby.stopAdvertising();
  }

  //Start Discovering
  Stream<Either<ConnectionFailure, User>> startDiscovering() async* {
    debugPrint("Discovering....");
    debugPrint("this is my username: $_username");
    final bool a = await _nearby.startDiscovery(
      _username,
      strategy,
      serviceId: _serviceId,
      onEndpointFound: (String id, String name, String serviceId) async {
        //TODO: stream the device names found
        discoveredDevice = User(uid: UniqueId.fromUniqueString(id) , name: Name(name));
        debugPrint("Connection found at id: $id and name: $name");

        //request a connection which thereby calls onConnection init

        //final Either<ConnectionFailure, Unit> _requestConnection =
        //  await requestConnection(_username, id);
        //_requestConnection.fold((failure){
        //debugPrint(
        //  "Failure occurred in requesting a connection more precisely $failure");
        //return left(const ConnectionFailure.unexpected());
        //}, (success) {
        //debugPrint("Successfully accepted a connection $success");
        //});
      },
      onEndpointLost: (String id) {
        //TODO: Print that endpoint is lost or disconnected to the endpoint and remove a member
        debugPrint("Endpoint lost to host $id");
      },
    );
    if (a && discoveredDevice!=null) {
      yield right(discoveredDevice);
    }
    else if (discoveredDevice==null){
      print('No devices Found till now... continue advertising');
      yield left (const ConnectionFailure.timedOut());
    }
    else{
      yield left(const ConnectionFailure.unexpected());
    }

  }

  ///Stop Discovering
  Future<void> stopDiscovering() async {
    debugPrint("Stop Discovering..");
    await _nearby.stopDiscovery();
  }

  /// Stop all EndPoints
  Future<void> stopAllEndpoints() async {
    _nearby.stopAllEndpoints();
    debugPrint("Stopping all the endpoints");
  }

  ///request Connection
  Future<Either<ConnectionFailure, Unit>> requestConnection(
      {@required String username,
      @required String endpointId,
      @required bool acceptConnection}) async {
    final bool a = await _nearby.requestConnection(username, endpointId,
        onConnectionInitiated:
            (String endId, ConnectionInfo connectionInfo) async {
      debugPrint("Initiating a connection to $endId");
      final Either<ConnectionFailure, bool> _onConnectionInit =
          await onConnectionInit(endId, connectionInfo,
              acceptConnection: acceptConnection);
      _onConnectionInit.fold((failure) {
        debugPrint(
            "Failure occurred on Initiating a connection more precisely $failure");
        return left(const ConnectionFailure.unexpected());
      }, (success) => {debugPrint("Connection Initiated yo: $success")});
    }, onConnectionResult: (id, Status status) {
      debugPrint("Status of the connection to host $host $id : $status");
      if (status == Status.CONNECTED) {
        debugPrint("Connection accepted by the host : $host");
      } else if (status == Status.REJECTED) {
        debugPrint("Connection rejected by host$host : $id");
      } else if (status == Status.ERROR) {
        debugPrint("Error in connecting to $host..Please try again");
      }
    }, onDisconnected: (String id) {
      //TODO: return that disconnected
      debugPrint("Disconnected! Connect again to: $id");
    });
    if (a) {
      return right(unit);
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///on connection Initiated to accept/reject connection :
  /// both the advertiser and discoverer has to call this
  /// Both need to accept connection to start sending/receiving
  //TODO : Get the value of the connection is accepted or rejected by the application /bloc default set is True

  Future<Either<ConnectionFailure, bool>> onConnectionInit(
      String endId, ConnectionInfo info,
      {@required bool acceptConnection}) async {
    bool a;

    ///accepts here
    if (acceptConnection) {
      a = await _nearby.acceptConnection(endId,
          onPayLoadRecieved: (String endId, Payload payload) {
        //TODO this is the called as soon as the file transfer is started
        onPayloadRecieved(endId, payload);
      }, onPayloadTransferUpdate:
              (String endId, PayloadTransferUpdate payloadTransferUpdate) {
        //TODO: Again with the values that are returned
        onPayloadTransferUpdate(endId, payloadTransferUpdate);
      });

      /// Reject a connection
    } else {
      debugPrint("Rejected connection by me : $_username");
      a = await _nearby.rejectConnection(endId);
    }

    if (a) {
      //TODO: return according to the returned values of thr above functions
      return right(a);
    } else {
      return left(const ConnectionFailure.unexpected());
    }
  }

  ///onPayload Recieved :
  ///we store the payload in a _tempFile which is reference
  ///to the current file being transferred
  ///also saves the fileName and extension
  Future<Either<AppsLoadFailure, bool>> onPayloadRecieved(
      String endId, Payload payload) async {
    if (payload.type == PayloadType.FILE) {
      //TODO add the message of file transfer started
      debugPrint("File transfer started from $endId");
      _tempFile = File(payload.filePath);
      return right(true);
    } else if (payload.type == PayloadType.BYTES) {
      //converting the bytes recieved to string
      final String str = String.fromCharCodes(payload.bytes);
      debugPrint("File name received from $endId:  $str");

      // used for file payload as file payload is mapped as
      // payloadId:filename
      if (str.contains(':')) {
        final int payloadId = int.parse(str.split(':')[0]);
        final String fileName = str.split(':')[1];
        if (map.containsKey(payloadId)) {
          if (await _tempFile.exists()) {
            _tempFile.rename("${_tempFile.parent.path}/$fileName");
          } else {
            debugPrint("File doesn't exist");
          }
        } else {
          //add to map if not already
          map[payloadId] = fileName;
        }
      }
      return right(true);
    } else {
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }

  ///Gives the status of the payLoadRecieved
  //TODO : implement the states according to the status and show it in the UI
  Either<AppsLoadFailure, bool> onPayloadTransferUpdate(
      String endId, PayloadTransferUpdate payloadTransferUpdate) {
    if (payloadTransferUpdate.status == PayloadStatus.IN_PROGRRESS) {
      debugPrint(
          "Receiving files from $endId ${payloadTransferUpdate.bytesTransferred}");
      return right(true);
    } else if (payloadTransferUpdate.status == PayloadStatus.SUCCESS) {
      debugPrint(
          "Received files from $endId, ${payloadTransferUpdate.totalBytes}");
      if (map.containsKey(payloadTransferUpdate.id)) {
        //rename the file now
        final String name = map[payloadTransferUpdate.id];
        _tempFile.rename("${_tempFile.parent.path}/$name");
      } else {
        //bytes not received till yet
        map[payloadTransferUpdate.id] = "";
      }
      return right(true);
    } else {
      debugPrint("Not received file, some error occurred");
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }

  ///Sending Files
  Future<Either<AppsLoadFailure, bool>> sendFilePayload(
      {@required Map<File, double> files}) async {
    int payLoadId;

    members.forEach((key, value) {
      files.forEach( (file, progress)async {
        /// Returns the payloadID as soon as file transfer has begun
        ///
        /// File is received in DOWNLOADS_DIRECTORY and is given a generic name
        /// without extension
        /// You must also send a bytes payload to send the filename and extension
        /// so that receiver can rename the file accordingly
        /// Send the payloadID and filename to receiver as bytes payload
        payLoadId = await _nearby.sendFilePayload(key, file.path);
        debugPrint("Sending File to $value");
        /// Sending the fileName and payloadId to the receiver
        _nearby.sendBytesPayload(
            key,
            Uint8List.fromList(
                "$payLoadId:${file.path.split('/').last}".codeUnits));
      });
    });
    if (payLoadId != null) {
      return right(true);
    }
    return left(const AppsLoadFailure.unexpectedFailure());
  }
}
