part of 'rent_place_bloc.dart';

@immutable
sealed class RentPlaceEvent {}

class MakeRentPlaceEvent extends RentPlaceEvent {
  MakeRentPlaceEvent({required this.expiredDate});

  final DateTime expiredDate;
}

class GetFreeRentPlaces extends RentPlaceEvent {}
