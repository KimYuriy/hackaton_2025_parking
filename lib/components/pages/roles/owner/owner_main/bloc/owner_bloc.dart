import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/model/user_car/user_car.dart';
import 'package:parking_admin/services/network/owner/owner_api.dart';

part 'owner_events.dart';
part 'owner_states.dart';
part 'owner_bloc.freezed.dart';

class OwnerBloc extends Bloc<OwnerEvents, OwnerStates> {
  final OwnerApi _ownerApi;

  OwnerBloc({ required OwnerApi ownerApi }): _ownerApi = ownerApi, super(const OwnerStates.loading()) {
    on<OwnerEvents>((event, emit) async {
      await event.when(
        loadUserCars: (id) async {
          try {
            final allPlaces = await _ownerApi.getAllPlaces();
            final userCars = allPlaces
              .where((place) => place.user_id == id)
              .map((place) => UserCar(
                placeId: place.id,
                carId: place.car_id,
                place: place.placeNumber,
                number: place.carNumber
              ))
              .toList();
            emit(OwnerStates.carsLoaded(cars: userCars));
          } catch (e) {
            log('Ошибка запроса loadUserCars: $e');
          }
        },
        updateCarNumber: (userId, carId, newNumber) async => await _ownerApi.updateCarNumber(userId: userId, carId: carId, newNumber: newNumber),
      );
    });
  }
}