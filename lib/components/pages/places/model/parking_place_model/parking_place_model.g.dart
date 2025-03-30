// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParkingPlaceModelImpl _$$ParkingPlaceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParkingPlaceModelImpl(
      id: (json['id'] as num).toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      fullName: json['fullName'] as String,
      carNumber: json['carNumber'] as String,
      car_id: (json['car_id'] as num?)?.toInt(),
      placeNumber: json['placeNumber'] as String,
      placeType: $enumDecode(_$PlaceTypeEnumMap, json['placeType']),
      placeStatus: $enumDecode(_$PlaceStatusEnumMap, json['placeStatus']),
    );

Map<String, dynamic> _$$ParkingPlaceModelImplToJson(
        _$ParkingPlaceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'fullName': instance.fullName,
      'carNumber': instance.carNumber,
      'car_id': instance.car_id,
      'placeNumber': instance.placeNumber,
      'placeType': _$PlaceTypeEnumMap[instance.placeType]!,
      'placeStatus': _$PlaceStatusEnumMap[instance.placeStatus]!,
    };

const _$PlaceTypeEnumMap = {
  PlaceType.owned: 'owned',
  PlaceType.guest: 'guest',
  PlaceType.special: 'special',
  PlaceType.rent: 'rent',
};

const _$PlaceStatusEnumMap = {
  PlaceStatus.available: 'available',
  PlaceStatus.occupied: 'occupied',
  PlaceStatus.blocked: 'blocked',
};
