import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';

import 'place_type_enum/place_type_enum.dart';

part 'parking_place_model.freezed.dart';
part 'parking_place_model.g.dart';

@freezed
class ParkingPlaceModel with _$ParkingPlaceModel {
  const factory ParkingPlaceModel({
    required int id,
    required String fullName,
    required String carNumber,
    required String placeNumber,
    required PlaceType placeType,
    required PlaceStatus placeStatus
  }) = _ParkingPlaceModel;

  factory ParkingPlaceModel.fromJson(Map<String, dynamic> json) => _$ParkingPlaceModelFromJson(json);
}