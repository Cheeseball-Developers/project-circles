part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.startSearching() = StartSearching;
  const factory SearchEvent.deviceDiscovered(User user) = DeviceDiscovered;
  const factory SearchEvent.showAllDiscoveredDevices() =
      ShowAllDiscoveredDevices;
  const factory SearchEvent.dismissAllDiscoveredDevices() =
      DismissAllDiscoveredDevices;
  const factory SearchEvent.deviceLost() = DeviceLost;
  const factory SearchEvent.stopSearching() = StopSearching;
  const factory SearchEvent.requestConnection({@required User discoveredUser}) =
      RequestConnection;
  const factory SearchEvent.connectionResult(
      Either<ConnectionFailure, Unit> connectionStatus) = ConnectionResult;
  const factory SearchEvent.endConnectionRequest(
      {@required User cancelRequestUser}) = EndConnectionRequest;
}
