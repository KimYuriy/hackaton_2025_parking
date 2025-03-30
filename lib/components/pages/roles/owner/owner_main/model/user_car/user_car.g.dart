// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCarImpl _$$UserCarImplFromJson(Map<String, dynamic> json) =>
    _$UserCarImpl(
      placeId: (json['placeId'] as num).toInt(),
      carId: (json['carId'] as num?)?.toInt(),
      place: json['place'] as String,
      number: json['number'] as String,
    );

Map<String, dynamic> _$$UserCarImplToJson(_$UserCarImpl instance) =>
    <String, dynamic>{
      'placeId': instance.placeId,
      'carId': instance.carId,
      'place': instance.place,
      'number': instance.number,
    };
