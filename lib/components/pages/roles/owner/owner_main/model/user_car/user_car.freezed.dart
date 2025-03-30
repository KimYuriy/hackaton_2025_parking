// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCar _$UserCarFromJson(Map<String, dynamic> json) {
  return _UserCar.fromJson(json);
}

/// @nodoc
mixin _$UserCar {
  int get placeId => throw _privateConstructorUsedError;
  int? get carId => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;

  /// Serializes this UserCar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCarCopyWith<UserCar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCarCopyWith<$Res> {
  factory $UserCarCopyWith(UserCar value, $Res Function(UserCar) then) =
      _$UserCarCopyWithImpl<$Res, UserCar>;
  @useResult
  $Res call({int placeId, int? carId, String place, String number});
}

/// @nodoc
class _$UserCarCopyWithImpl<$Res, $Val extends UserCar>
    implements $UserCarCopyWith<$Res> {
  _$UserCarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? carId = freezed,
    Object? place = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCarImplCopyWith<$Res> implements $UserCarCopyWith<$Res> {
  factory _$$UserCarImplCopyWith(
          _$UserCarImpl value, $Res Function(_$UserCarImpl) then) =
      __$$UserCarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int placeId, int? carId, String place, String number});
}

/// @nodoc
class __$$UserCarImplCopyWithImpl<$Res>
    extends _$UserCarCopyWithImpl<$Res, _$UserCarImpl>
    implements _$$UserCarImplCopyWith<$Res> {
  __$$UserCarImplCopyWithImpl(
      _$UserCarImpl _value, $Res Function(_$UserCarImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? carId = freezed,
    Object? place = null,
    Object? number = null,
  }) {
    return _then(_$UserCarImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCarImpl implements _UserCar {
  const _$UserCarImpl(
      {required this.placeId,
      required this.carId,
      required this.place,
      required this.number});

  factory _$UserCarImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCarImplFromJson(json);

  @override
  final int placeId;
  @override
  final int? carId;
  @override
  final String place;
  @override
  final String number;

  @override
  String toString() {
    return 'UserCar(placeId: $placeId, carId: $carId, place: $place, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCarImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, carId, place, number);

  /// Create a copy of UserCar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCarImplCopyWith<_$UserCarImpl> get copyWith =>
      __$$UserCarImplCopyWithImpl<_$UserCarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCarImplToJson(
      this,
    );
  }
}

abstract class _UserCar implements UserCar {
  const factory _UserCar(
      {required final int placeId,
      required final int? carId,
      required final String place,
      required final String number}) = _$UserCarImpl;

  factory _UserCar.fromJson(Map<String, dynamic> json) = _$UserCarImpl.fromJson;

  @override
  int get placeId;
  @override
  int? get carId;
  @override
  String get place;
  @override
  String get number;

  /// Create a copy of UserCar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCarImplCopyWith<_$UserCarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
