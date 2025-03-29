part of 'places_page_bloc.dart';

@freezed
class PlacesPageEvents with _$PlacesPageEvents {
  const factory PlacesPageEvents.loadData() = _LoadData;
  const factory PlacesPageEvents.showOnlyAvailable() = _ShowOnlyAvailable;
  const factory PlacesPageEvents.showOnlyOccupied() = _ShowOnlyOccupied;
  const factory PlacesPageEvents.showOnlyBlocked() = _ShowOnlyBlocked;
}