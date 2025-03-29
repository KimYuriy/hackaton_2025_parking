part of 'places_page_bloc.dart';

@freezed
class PlacesPageEvents with _$PlacesPageEvents {
  const factory PlacesPageEvents.loadData() = _LoadData;
  const factory PlacesPageEvents.showOnlyAvailable({ required bool showAvailable }) = _ShowOnlyAvailable;
  const factory PlacesPageEvents.showOnlyOccupied({ required bool showOccupied }) = _ShowOnlyOccupied;
  const factory PlacesPageEvents.showOnlyBlocked({ required bool showBlocked }) = _ShowOnlyBlocked;
}