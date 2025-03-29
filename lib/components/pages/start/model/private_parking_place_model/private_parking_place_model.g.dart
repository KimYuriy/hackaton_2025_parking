// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_parking_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivateParkingPlaceModelImpl _$$PrivateParkingPlaceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivateParkingPlaceModelImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      carNumber: json['carNumber'] as String,
      placeNumber: json['placeNumber'] as String,
      placeType: $enumDecode(_$PlaceTypeEnumMap, json['placeType']),
      placeStatus: $enumDecode(_$PlaceStatusEnumMap, json['placeStatus']),
    );

Map<String, dynamic> _$$PrivateParkingPlaceModelImplToJson(
        _$PrivateParkingPlaceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'carNumber': instance.carNumber,
      'placeNumber': instance.placeNumber,
      'placeType': _$PlaceTypeEnumMap[instance.placeType]!,
      'placeStatus': _$PlaceStatusEnumMap[instance.placeStatus]!,
    };

const _$PlaceTypeEnumMap = {
  PlaceType.owned: 'owned',
  PlaceType.guest: 'guest',
  PlaceType.specialVehicle: 'specialVehicle',
  PlaceType.forRent: 'forRent',
};

const _$PlaceStatusEnumMap = {
  PlaceStatus.available: 'available',
  PlaceStatus.occupied: 'occupied',
  PlaceStatus.blocked: 'blocked',
};
