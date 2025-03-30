part of 'places_table_bloc.dart';

@freezed
class PlacesTableEvents with _$PlacesTableEvents {
  const factory PlacesTableEvents.loadAll() = _LoadAll;
  const factory PlacesTableEvents.loadOccupied() = _LoadOccupied;
  const factory PlacesTableEvents.loadAvailable() = _LoadAvailable;
  const factory PlacesTableEvents.loadBlocked() = _LoadBlocked;
}