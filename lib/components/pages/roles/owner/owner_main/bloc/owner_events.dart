part of 'owner_bloc.dart';

@freezed
class OwnerEvents with _$OwnerEvents {
  const factory OwnerEvents.loadUserCars({ required int id }) = _LoadUserCars;
  const factory OwnerEvents.updateCarNumber({
    required int userId,
    required int carId,
    required String newNumber
  }) = _UpdateCarNumber;
}