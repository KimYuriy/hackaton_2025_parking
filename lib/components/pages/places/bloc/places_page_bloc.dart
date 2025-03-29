import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_admin/services/network/network_api.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';

part 'places_page_events.dart';
part 'places_page_states.dart';
part 'places_page_bloc.freezed.dart';

class PlacesPageBloc extends Bloc<PlacesPageEvents, PlacesPageStates> {
  final NetworkApi _networkApi;
  
  List<ParkingPlaceModel> places = [];
  int freeCount = 0;

  PlacesPageBloc({ required NetworkApi networkApi }): _networkApi = networkApi, super(const PlacesPageStates.loading()) {
    on<PlacesPageEvents>((event, emit) async {
      await event.when(
        loadData: () => _loadData(emit: emit),
        showOnlyAvailable: () => _showOnlyAvailable(emit: emit),
        showOnlyOccupied: () => _showOnlyOccupied(emit: emit),
        showOnlyBlocked: () => _showOnlyBlocked(emit: emit)
      );
    });
  }
  
  _loadData({required Emitter<PlacesPageStates> emit}) async {
    places = await _networkApi.getAllPlaces();
    freeCount = places.where((place) => place.placeStatus == PlaceStatus.available).length;
    emit(PlacesPageStates.dataLoaded(allPlaces: places));
  }
  
  _showOnlyAvailable({ required Emitter<PlacesPageStates> emit }) {
    final freePlaces = places.where((place) => place.placeStatus == PlaceStatus.available).toList();
    emit(PlacesPageStates.dataLoaded(allPlaces: freePlaces));
  }
  
  _showOnlyOccupied({ required Emitter<PlacesPageStates> emit }) {
    final occupiedPlaces = places.where((place) => place.placeStatus == PlaceStatus.occupied).toList();
    emit(PlacesPageStates.dataLoaded(allPlaces: occupiedPlaces));
  }
  
  _showOnlyBlocked({required Emitter<PlacesPageStates> emit }) {
    final blockedPlaces = places.where((place) => place.placeStatus == PlaceStatus.blocked).toList();
    emit(PlacesPageStates.dataLoaded(allPlaces: blockedPlaces));
  }
}