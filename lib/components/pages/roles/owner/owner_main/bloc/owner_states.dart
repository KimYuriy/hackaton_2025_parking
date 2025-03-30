part of 'owner_bloc.dart';

@freezed
class OwnerStates with _$OwnerStates {
  const factory OwnerStates.loading() = _Loading;
  const factory OwnerStates.carsLoaded({ required List<UserCar> cars }) = _CarsLoaded;
  const factory OwnerStates.errorLoading() = _ErrorLoading;
}