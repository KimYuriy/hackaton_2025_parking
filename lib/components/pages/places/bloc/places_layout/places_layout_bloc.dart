import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/services/network/places/places_api.dart';

part 'places_layout_events.dart';
part 'places_layout_states.dart';
part 'places_layout_bloc.freezed.dart';

class PlacesLayoutBloc extends Bloc<PlacesLayoutEvents, PlacesLayoutStates> {
  final PlacesApi _placesApi;
  
  List<ParkingPlaceModel> places = [];
  int freeCount = 0;

  PlacesLayoutBloc({ required PlacesApi placesApi }): _placesApi = placesApi, super(const PlacesLayoutStates.loading()) {
    on<PlacesLayoutEvents>((event, emit) async {
      await event.when(
        loadData: () => _loadData(emit: emit)
      );
    });
  }
  
  _loadData({required Emitter<PlacesLayoutStates> emit}) async {
    places = await _placesApi.getAllPlaces();
    freeCount = places.where((place) => place.placeStatus == PlaceStatus.available).length;
    emit(PlacesLayoutStates.dataLoaded(allPlaces: places));
  }
}