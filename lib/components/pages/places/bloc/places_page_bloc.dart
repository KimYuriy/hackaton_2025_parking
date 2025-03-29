import 'dart:developer';

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

  PlacesPageBloc({ required NetworkApi networkApi }): _networkApi = networkApi, super(const PlacesPageStates.loading()) {
    on<PlacesPageEvents>((event, emit) async {
      await event.when(
        loadData: () => _loadData(emit: emit),
        showOnlyAvailable: (showAvailable) => _showOnlyAvailable(showAvailable: showAvailable, emit: emit),
        showOnlyOccupied: (showOccupied) => _showOnlyOccupied(showOccupied: showOccupied, emit: emit),
        showOnlyBlocked: (showBlocked) => _showOnlyBlocked(showBlocked: showBlocked, emit: emit)
      );
    });
  }
  
  _loadData({required Emitter<PlacesPageStates> emit}) async {
    places = await _networkApi.getAllPlaces();
    final freeCount = places.where((place) => place.placeStatus == PlaceStatus.available).length;
    emit(PlacesPageStates.dataLoaded(allPlaces: places, freePlacesCount: freeCount));
  }
  
  _showOnlyAvailable({required bool showAvailable, required Emitter<PlacesPageStates> emit}) {

  }
  
  _showOnlyOccupied({required bool showOccupied, required Emitter<PlacesPageStates> emit}) {

  }
  
  _showOnlyBlocked({required bool showBlocked, required Emitter<PlacesPageStates> emit}) {

  }
}