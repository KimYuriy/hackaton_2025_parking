part of 'places_table_bloc.dart';

@freezed
class PlacesTableStates with _$PlacesTableStates {
  const factory PlacesTableStates.loading() = _Loading;
  const factory PlacesTableStates.dataLoaded({ required List<ParkingPlaceModel> places }) = _DataLoaded;
  const factory PlacesTableStates.errorLoading() = _ErrorLoading;
}