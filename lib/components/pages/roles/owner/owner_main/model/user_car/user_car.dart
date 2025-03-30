import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_car.freezed.dart';
part 'user_car.g.dart';

@freezed
class UserCar with _$UserCar {
  const factory UserCar({
    required int placeId,
    required int? carId,
    required String place,
    required String number
  }) = _UserCar;

  factory UserCar.fromJson(Map<String, dynamic> json) => _$UserCarFromJson(json);
}