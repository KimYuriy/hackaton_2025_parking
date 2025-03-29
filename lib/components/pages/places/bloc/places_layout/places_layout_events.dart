part of 'places_layout_bloc.dart';

@freezed
class PlacesLayoutEvents with _$PlacesLayoutEvents {
  const factory PlacesLayoutEvents.loadData() = _LoadData;
  const factory PlacesLayoutEvents.showOnlyAvailable() = _ShowOnlyAvailable;
  const factory PlacesLayoutEvents.showOnlyOccupied() = _ShowOnlyOccupied;
  const factory PlacesLayoutEvents.showOnlyBlocked() = _ShowOnlyBlocked;
}