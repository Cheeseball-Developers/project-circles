import 'dart:core';
import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:nearby_connections/nearby_connections.dart';
import 'package:projectcircles/injection.dart';
import '../../domain/files/apps_load_failure.dart';

class NearbyConnections {
  final Nearby _nearby;
  final String username;
  String _endId = ''; //currently connected device ID
  File _tempFile;
  Map<int, String> map = {}; //store filename mapped to corresponding payloadId

  NearbyConnections(this._nearby, {@required this.username});



  /// **P2P_CLUSTER** - best for small payloads and multiplayer games
  ///
  /// **P2P_STAR** - best for medium payloads, higher bandwidth than cluster
  ///
  /// **P2P_POINT_TO_POINT** - single connection, very high bandwidth

  /// for now P2P_Point ,can be switched according to the needs current set has high bandwidth
  static const Strategy strategy = Strategy.P2P_POINT_TO_POINT;


  // initail setup
  Future<bool> isLocationPermitted() async {
    if (await _nearby.checkLocationPermission()) {
      return true;
    }
    return false;
  }

  Future<bool> isLocationEnabled() async {
    if (await _nearby.checkLocationEnabled()) {
      return true;
    }
    return false;
  }

  // opens dialogue to enable location service
  Future<bool> enableLocation() async {
    if (!await isLocationEnabled()) {
      _nearby.enableLocationServices();
      return true;
    }
    return false;
  }

  // asks for permission only if its not given
  Future<bool> permitLocation() async {
    if (!await isLocationPermitted()) {
      _nearby.askLocationPermission();
      return true;
    }
    return false;
  }

  /// Network and Connection

  ///host starts advertising
  Future<Either<AppsLoadFailure, bool>> startAdvertising() async {
    debugPrint("Advertising...");
    final bool a = await _nearby.startAdvertising(username, strategy,
        onConnectionInitiated: (String endId, ConnectionInfo connectionInfo) {
      //TODO: Implement the states as it returns various states

      _endId = endId;
      debugPrint("Initiating a connection");
      onConnectionInit(endId, connectionInfo, acceptConnection: true);
    }, onConnectionResult: (id, Status status) {
      //TODO: Implement something idk
      debugPrint(status.toString());
    }, onDisconnected: (String id) {
      debugPrint("Disconnected : $id");
    });
    if (a) {
      //TODO: Return according to the retuned values of the above functions
      return right(a);
    }
    return left(const AppsLoadFailure.unexpectedFailure());
  }

  //Stop Adverting
  Future<void> stopAdvertising() async {
    await _nearby.stopAdvertising();
  }

  //Start Discovering
  Future<Either<AppsLoadFailure, bool>> startDiscovering() async {
    debugPrint("Discovering....");
    final bool a = await _nearby.startDiscovery(
      username,
      strategy,
      onEndpointFound: (String id, String name, String serviceId) {
        //TODO: show that connection is found
        debugPrint("Connection found:  $id");
        requestConnection(username, id);
      },
      onEndpointLost: (String id) {
        //TODO: Print that endpoint is lost or disconnected to the endpoint
        debugPrint("endpoint lost $id");
      },
    );
    if (a) {
      //TODO: Return according to the returned values of the above functions
      return right(a);
    }
    return left(const AppsLoadFailure.unexpectedFailure());
  }

  ///Stop Discovering
  Future<void> stopDiscovering() async {
    debugPrint("Stop Discovering..");
    await _nearby.stopAdvertising();
  }

  /// Stop all EndPoints
  Future<void> stopAllEndpoints() async {
    debugPrint("Stopping all the endpoints");
  }

  ///request Connection
  Future<Either<AppsLoadFailure, bool>> requestConnection(
      String username, String endpointId) async {
    final bool a = await _nearby.requestConnection(username, endpointId,
        onConnectionInitiated: (String endId, ConnectionInfo connectionInfo) {
      //TODO: Implement the states as it returns various states lol basically do something with this return type
      debugPrint("Initiating a connection to $endId");
      onConnectionInit(endId, connectionInfo, acceptConnection: true);
    }, onConnectionResult: (id, Status status) {
      debugPrint("Status of the connection is : ${status.toString()}");
      //TODO: Implement something idk
    }, onDisconnected: (String id) {
      //TODO: return that disconnected
      debugPrint("Disconnected! Connect again to: $id");
    });
    if (a) {
      return right(a);
    } else {
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }

  ///on connection Initiated to accept/reject connection :
  /// both the advertiser and discoverer has to call this
  // Both need to accept connection to start sending/receiving

  //TODO : Get the value of the connection is accepted or rejected by the application /bloc
  Future<Either<AppsLoadFailure, bool>> onConnectionInit(
      String endId, ConnectionInfo info, {@required bool acceptConnection}) async {
    bool a;
    ///accepts here
    if(acceptConnection){
      a = await _nearby.acceptConnection(endId,
        onPayLoadRecieved: (String endId, Payload payload) {
          //TODO something with the values that are returned
          onPayloadRecieved(endId, payload);
        }, onPayloadTransferUpdate:
            (String endId, PayloadTransferUpdate payloadTransferUpdate) {
          //TODO: Again with the values that are returned
          onPayloadTransferUpdate(endId, payloadTransferUpdate);
          if (map.containsKey(payloadTransferUpdate.id)) {
            //rename the file now
            final String name = map[payloadTransferUpdate.id];
            _tempFile.rename("${_tempFile.parent.path}/$name");
          } else {
            //bytes not received till yet
            map[payloadTransferUpdate.id] = "";
          }
        });}
    else {
      debugPrint("Rejected Connection by : $username");
      a = await _nearby.rejectConnection(endId);
    }

    if (a) {
      //TODO: return according to the returned values of thr above functions
      return right(a);
    } else {
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }

  /// Reject a connection

  ///onPayload Recieved :
  ///we store the payload in a _tempFile which is reference 
  ///to the current file being transferred
  ///also saves the fileName and extension
  Future<Either<AppsLoadFailure, bool>> onPayloadRecieved(
      String endId, Payload payload) async {
    if (payload.type == PayloadType.FILE) {
      //TODO add the message of file transfer started
      debugPrint("File transfer started to $endId");
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
      debugPrint("Receiving files${payloadTransferUpdate.bytesTransferred}");
      return right(true);
    } else if (payloadTransferUpdate.status == PayloadStatus.SUCCESS) {
      debugPrint("Received files${payloadTransferUpdate.totalBytes}");
      return right(true);
    } else {
      debugPrint("Not received file, some error occurred");
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }

  ///Sending Files
  Future<Either<AppsLoadFailure, bool>> sendFilePayload() async {
    Iterable<File> files;
    int payloadId;
    //TODO: File picker implemented here, lol tera wala implement krna padega yaha
    final FilePickerResult result =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      files = result.paths.map((path) => File(path));
    }
    files.forEach((file) async {
      /// Returns the payloadID as soon as file transfer has begun
      ///
      /// File is received in DOWNLOADS_DIRECTORY and is given a generic name
      /// without extension
      /// You must also send a bytes payload to send the filename and extension
      /// so that receiver can rename the file accordingly
      /// Send the payloadID and filename to receiver as bytes payload
      ///
      payloadId = await _nearby.sendFilePayload(_endId, file.path);
      debugPrint("Sending File to $_endId");

      /// Sending the fileName and payloadId to the receiver
      _nearby.sendBytesPayload(
          _endId,
          Uint8List.fromList(
              "$payloadId:${file.path.split('/').last}".codeUnits));
    });
    if (payloadId != null) {
      return right(true);
    }

    return left(const AppsLoadFailure.unexpectedFailure());
  }

  String get end_id {
    return _endId;
  }
}
