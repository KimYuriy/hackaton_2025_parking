part of 'places_page_bloc.dart';

@freezed
class PlacesPageStates with _$PlacesPageStates {
  const factory PlacesPageStates.loading() = _Loading;
  const factory PlacesPageStates.dataLoaded({
    required List<ParkingPlaceModel> allPlaces,
    required int freePlacesCount
  }) = _DataLoaded;
  const factory PlacesPageStates.errorLoading() = _ErrorLoading;
}