part of 'places_layout_bloc.dart';

@freezed
class PlacesLayoutStates with _$PlacesLayoutStates {
  const factory PlacesLayoutStates.loading() = _Loading;
  const factory PlacesLayoutStates.dataLoaded({ required List<ParkingPlaceModel> allPlaces }) = _DataLoaded;
  const factory PlacesLayoutStates.errorLoading() = _ErrorLoading;
}