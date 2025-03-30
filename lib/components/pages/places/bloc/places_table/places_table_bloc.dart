import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/services/network/places/places_api.dart';

part 'places_table_events.dart';
part 'places_table_states.dart';
part 'places_table_bloc.freezed.dart';

class PlacesTableBloc extends Bloc<PlacesTableEvents, PlacesTableStates> {
  final PlacesApi _placesApi;

  List<ParkingPlaceModel> places = [];

  PlacesTableBloc({ required PlacesApi placesApi }): _placesApi = placesApi, super(const PlacesTableStates.loading()) {
    on<PlacesTableEvents>((event, emit) async {
      await event.when(
        loadAll: () => _loadAll(emit: emit),
        loadOccupied: () => _loadOccupied(emit: emit),
        loadAvailable: () => _loadAvailable(emit: emit),
        loadBlocked: () => _loadBlocked(emit: emit)
      );
    });
  }
  
  _loadAll({required Emitter<PlacesTableStates> emit}) async {
    try {
      places = await _placesApi.getAllPlaces();
      emit(PlacesTableStates.dataLoaded(places: places));
    } catch (e) {
      emit(const PlacesTableStates.errorLoading());
    }
  }
  
  _loadOccupied({required Emitter<PlacesTableStates> emit}) async {
    try {
      final occupiedPlaces = places.where((place) => place.placeStatus == PlaceStatus.occupied).toList();
      emit(PlacesTableStates.dataLoaded(places: occupiedPlaces));
    } catch (e) {
      emit(const PlacesTableStates.errorLoading());
    }
  }
  
  _loadAvailable({required Emitter<PlacesTableStates> emit}) async {

  }
  
  _loadBlocked({required Emitter<PlacesTableStates> emit}) async {

  }
}