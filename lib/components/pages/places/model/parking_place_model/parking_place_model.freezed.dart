// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParkingPlaceModel _$ParkingPlaceModelFromJson(Map<String, dynamic> json) {
  return _ParkingPlaceModel.fromJson(json);
}

/// @nodoc
mixin _$ParkingPlaceModel {
  int get id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get carNumber => throw _privateConstructorUsedError;
  String get placeNumber => throw _privateConstructorUsedError;
  PlaceType get placeType => throw _privateConstructorUsedError;
  PlaceStatus get placeStatus => throw _privateConstructorUsedError;

  /// Serializes this ParkingPlaceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParkingPlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParkingPlaceModelCopyWith<ParkingPlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingPlaceModelCopyWith<$Res> {
  factory $ParkingPlaceModelCopyWith(
          ParkingPlaceModel value, $Res Function(ParkingPlaceModel) then) =
      _$ParkingPlaceModelCopyWithImpl<$Res, ParkingPlaceModel>;
  @useResult
  $Res call(
      {int id,
      int? user_id,
      String fullName,
      String carNumber,
      String placeNumber,
      PlaceType placeType,
      PlaceStatus placeStatus});
}

/// @nodoc
class _$ParkingPlaceModelCopyWithImpl<$Res, $Val extends ParkingPlaceModel>
    implements $ParkingPlaceModelCopyWith<$Res> {
  _$ParkingPlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParkingPlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = freezed,
    Object? fullName = null,
    Object? carNumber = null,
    Object? placeNumber = null,
    Object? placeType = null,
    Object? placeStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      carNumber: null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String,
      placeNumber: null == placeNumber
          ? _value.placeNumber
          : placeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as PlaceType,
      placeStatus: null == placeStatus
          ? _value.placeStatus
          : placeStatus // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParkingPlaceModelImplCopyWith<$Res>
    implements $ParkingPlaceModelCopyWith<$Res> {
  factory _$$ParkingPlaceModelImplCopyWith(_$ParkingPlaceModelImpl value,
          $Res Function(_$ParkingPlaceModelImpl) then) =
      __$$ParkingPlaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? user_id,
      String fullName,
      String carNumber,
      String placeNumber,
      PlaceType placeType,
      PlaceStatus placeStatus});
}

/// @nodoc
class __$$ParkingPlaceModelImplCopyWithImpl<$Res>
    extends _$ParkingPlaceModelCopyWithImpl<$Res, _$ParkingPlaceModelImpl>
    implements _$$ParkingPlaceModelImplCopyWith<$Res> {
  __$$ParkingPlaceModelImplCopyWithImpl(_$ParkingPlaceModelImpl _value,
      $Res Function(_$ParkingPlaceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParkingPlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = freezed,
    Object? fullName = null,
    Object? carNumber = null,
    Object? placeNumber = null,
    Object? placeType = null,
    Object? placeStatus = null,
  }) {
    return _then(_$ParkingPlaceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      carNumber: null == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String,
      placeNumber: null == placeNumber
          ? _value.placeNumber
          : placeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as PlaceType,
      placeStatus: null == placeStatus
          ? _value.placeStatus
          : placeStatus // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParkingPlaceModelImpl implements _ParkingPlaceModel {
  const _$ParkingPlaceModelImpl(
      {required this.id,
      required this.user_id,
      required this.fullName,
      required this.carNumber,
      required this.placeNumber,
      required this.placeType,
      required this.placeStatus});

  factory _$ParkingPlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParkingPlaceModelImplFromJson(json);

  @override
  final int id;
  @override
  final int? user_id;
  @override
  final String fullName;
  @override
  final String carNumber;
  @override
  final String placeNumber;
  @override
  final PlaceType placeType;
  @override
  final PlaceStatus placeStatus;

  @override
  String toString() {
    return 'ParkingPlaceModel(id: $id, user_id: $user_id, fullName: $fullName, carNumber: $carNumber, placeNumber: $placeNumber, placeType: $placeType, placeStatus: $placeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingPlaceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.placeNumber, placeNumber) ||
                other.placeNumber == placeNumber) &&
            (identical(other.placeType, placeType) ||
                other.placeType == placeType) &&
            (identical(other.placeStatus, placeStatus) ||
                other.placeStatus == placeStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user_id, fullName, carNumber,
      placeNumber, placeType, placeStatus);

  /// Create a copy of ParkingPlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingPlaceModelImplCopyWith<_$ParkingPlaceModelImpl> get copyWith =>
      __$$ParkingPlaceModelImplCopyWithImpl<_$ParkingPlaceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParkingPlaceModelImplToJson(
      this,
    );
  }
}

abstract class _ParkingPlaceModel implements ParkingPlaceModel {
  const factory _ParkingPlaceModel(
      {required final int id,
      required final int? user_id,
      required final String fullName,
      required final String carNumber,
      required final String placeNumber,
      required final PlaceType placeType,
      required final PlaceStatus placeStatus}) = _$ParkingPlaceModelImpl;

  factory _ParkingPlaceModel.fromJson(Map<String, dynamic> json) =
      _$ParkingPlaceModelImpl.fromJson;

  @override
  int get id;
  @override
  int? get user_id;
  @override
  String get fullName;
  @override
  String get carNumber;
  @override
  String get placeNumber;
  @override
  PlaceType get placeType;
  @override
  PlaceStatus get placeStatus;

  /// Create a copy of ParkingPlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParkingPlaceModelImplCopyWith<_$ParkingPlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
