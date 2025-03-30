import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_type_enum/place_type_enum.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/user/user.dart';
import 'package:parking_admin/services/network/places/places_api.dart';

part 'edit_row_events.dart';
part 'edit_row_states.dart';
part 'edit_row_bloc.freezed.dart';

class EditRowBloc extends Bloc<EditRowEvents, EditRowStates> {
  final PlacesApi _placesApi;

  EditRowBloc({ required PlacesApi placesApi }): _placesApi = placesApi, super(const EditRowStates.loading()) {
    on<EditRowEvents>((event, emit) async {
      await event.when(
        updateData: (data) => _updateData(placeData: data, emit: emit),
        getAllUsers: () => _getAllUsers(emit: emit),
        getCarsOfUser: (id) => _getCarsOfUser(userId: id, emit: emit)
      );
    });
  }
  
  _updateData({required ParkingPlaceModel placeData, required Emitter<EditRowStates> emit}) async {
    final json = {
      "spot_number": placeData.placeNumber
    };
    await _placesApi.updatePlace(id: placeData.id, json: json);
  }
  
  _getAllUsers({required Emitter<EditRowStates> emit}) async {
    try {
      final allUsers = await _placesApi.getAllUsers();
      emit(EditRowStates.foundUsers(users: allUsers));
    } catch (e) {
      log(e.toString());
      emit(const EditRowStates.errorLoading());
    }

  }
  
  _getCarsOfUser({required int userId, required Emitter<EditRowStates> emit}) async {

  }
}