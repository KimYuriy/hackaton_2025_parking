import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/services/network/network_api.dart';

part 'places_layout_events.dart';
part 'places_layout_states.dart';
part 'places_layout_bloc.freezed.dart';

class PlacesLayoutBloc extends Bloc<PlacesLayoutEvents, PlacesLayoutStates> {
  final NetworkApi _networkApi;
  
  List<ParkingPlaceModel> places = [];
  int freeCount = 0;

  PlacesLayoutBloc({ required NetworkApi networkApi }): _networkApi = networkApi, super(const PlacesLayoutStates.loading()) {
    on<PlacesLayoutEvents>((event, emit) async {
      await event.when(
        loadData: () => _loadData(emit: emit),
        showOnlyAvailable: () => _showOnlyAvailable(emit: emit),
        showOnlyOccupied: () => _showOnlyOccupied(emit: emit),
        showOnlyBlocked: () => _showOnlyBlocked(emit: emit)
      );
    });
  }
  
  _loadData({required Emitter<PlacesLayoutStates> emit}) async {
    places = await _networkApi.getAllPlaces();
    freeCount = places.where((place) => place.placeStatus == PlaceStatus.available).length;
    emit(PlacesLayoutStates.dataLoaded(allPlaces: places));
  }
  
  _showOnlyAvailable({ required Emitter<PlacesLayoutStates> emit }) {
    final freePlaces = places.where((place) => place.placeStatus == PlaceStatus.available).toList();
    emit(PlacesLayoutStates.dataLoaded(allPlaces: freePlaces));
  }
  
  _showOnlyOccupied({ required Emitter<PlacesLayoutStates> emit }) {
    final occupiedPlaces = places.where((place) => place.placeStatus == PlaceStatus.occupied).toList();
    emit(PlacesLayoutStates.dataLoaded(allPlaces: occupiedPlaces));
  }
  
  _showOnlyBlocked({required Emitter<PlacesLayoutStates> emit }) {
    final blockedPlaces = places.where((place) => place.placeStatus == PlaceStatus.blocked).toList();
    emit(PlacesLayoutStates.dataLoaded(allPlaces: blockedPlaces));
  }
}