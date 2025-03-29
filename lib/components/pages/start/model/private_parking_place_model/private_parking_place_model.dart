import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/place_status_enum/place_status_enum.dart';

import 'place_type_enum/place_type_enum.dart';

part 'private_parking_place_model.freezed.dart';
part 'private_parking_place_model.g.dart';

@freezed
class PrivateParkingPlaceModel with _$PrivateParkingPlaceModel {
  const factory PrivateParkingPlaceModel({
    required int id,
    required String fullName,
    required String carNumber,
    required String placeNumber,
    required PlaceType placeType,
    required PlaceStatus placeStatus
  }) = _PrivateParkingPlaceModel;

  factory PrivateParkingPlaceModel.fromJson(Map<String, dynamic> json) => _$PrivateParkingPlaceModelFromJson(json);
}