part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.startSearching() = StartSearching;
  const factory SearchEvent.stopSearching() = StopSearching;
  const factory SearchEvent.acceptConnection( {@required User discoveredUser,@required bool acceptOrReject}) = AcceptConnection;
}
