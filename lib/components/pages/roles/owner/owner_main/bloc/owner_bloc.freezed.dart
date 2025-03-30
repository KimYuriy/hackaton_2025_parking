// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OwnerEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loadUserCars,
    required TResult Function(int userId, int carId, String newNumber)
        updateCarNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? loadUserCars,
    TResult? Function(int userId, int carId, String newNumber)? updateCarNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loadUserCars,
    TResult Function(int userId, int carId, String newNumber)? updateCarNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUserCars value) loadUserCars,
    required TResult Function(_UpdateCarNumber value) updateCarNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadUserCars value)? loadUserCars,
    TResult? Function(_UpdateCarNumber value)? updateCarNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUserCars value)? loadUserCars,
    TResult Function(_UpdateCarNumber value)? updateCarNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerEventsCopyWith<$Res> {
  factory $OwnerEventsCopyWith(
          OwnerEvents value, $Res Function(OwnerEvents) then) =
      _$OwnerEventsCopyWithImpl<$Res, OwnerEvents>;
}

/// @nodoc
class _$OwnerEventsCopyWithImpl<$Res, $Val extends OwnerEvents>
    implements $OwnerEventsCopyWith<$Res> {
  _$OwnerEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerEvents
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadUserCarsImplCopyWith<$Res> {
  factory _$$LoadUserCarsImplCopyWith(
          _$LoadUserCarsImpl value, $Res Function(_$LoadUserCarsImpl) then) =
      __$$LoadUserCarsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$LoadUserCarsImplCopyWithImpl<$Res>
    extends _$OwnerEventsCopyWithImpl<$Res, _$LoadUserCarsImpl>
    implements _$$LoadUserCarsImplCopyWith<$Res> {
  __$$LoadUserCarsImplCopyWithImpl(
      _$LoadUserCarsImpl _value, $Res Function(_$LoadUserCarsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LoadUserCarsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadUserCarsImpl implements _LoadUserCars {
  const _$LoadUserCarsImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'OwnerEvents.loadUserCars(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUserCarsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of OwnerEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUserCarsImplCopyWith<_$LoadUserCarsImpl> get copyWith =>
      __$$LoadUserCarsImplCopyWithImpl<_$LoadUserCarsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loadUserCars,
    required TResult Function(int userId, int carId, String newNumber)
        updateCarNumber,
  }) {
    return loadUserCars(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? loadUserCars,
    TResult? Function(int userId, int carId, String newNumber)? updateCarNumber,
  }) {
    return loadUserCars?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loadUserCars,
    TResult Function(int userId, int carId, String newNumber)? updateCarNumber,
    required TResult orElse(),
  }) {
    if (loadUserCars != null) {
      return loadUserCars(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUserCars value) loadUserCars,
    required TResult Function(_UpdateCarNumber value) updateCarNumber,
  }) {
    return loadUserCars(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadUserCars value)? loadUserCars,
    TResult? Function(_UpdateCarNumber value)? updateCarNumber,
  }) {
    return loadUserCars?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUserCars value)? loadUserCars,
    TResult Function(_UpdateCarNumber value)? updateCarNumber,
    required TResult orElse(),
  }) {
    if (loadUserCars != null) {
      return loadUserCars(this);
    }
    return orElse();
  }
}

abstract class _LoadUserCars implements OwnerEvents {
  const factory _LoadUserCars({required final int id}) = _$LoadUserCarsImpl;

  int get id;

  /// Create a copy of OwnerEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadUserCarsImplCopyWith<_$LoadUserCarsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCarNumberImplCopyWith<$Res> {
  factory _$$UpdateCarNumberImplCopyWith(_$UpdateCarNumberImpl value,
          $Res Function(_$UpdateCarNumberImpl) then) =
      __$$UpdateCarNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, int carId, String newNumber});
}

/// @nodoc
class __$$UpdateCarNumberImplCopyWithImpl<$Res>
    extends _$OwnerEventsCopyWithImpl<$Res, _$UpdateCarNumberImpl>
    implements _$$UpdateCarNumberImplCopyWith<$Res> {
  __$$UpdateCarNumberImplCopyWithImpl(
      _$UpdateCarNumberImpl _value, $Res Function(_$UpdateCarNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? carId = null,
    Object? newNumber = null,
  }) {
    return _then(_$UpdateCarNumberImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      newNumber: null == newNumber
          ? _value.newNumber
          : newNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCarNumberImpl implements _UpdateCarNumber {
  const _$UpdateCarNumberImpl(
      {required this.userId, required this.carId, required this.newNumber});

  @override
  final int userId;
  @override
  final int carId;
  @override
  final String newNumber;

  @override
  String toString() {
    return 'OwnerEvents.updateCarNumber(userId: $userId, carId: $carId, newNumber: $newNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCarNumberImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.newNumber, newNumber) ||
                other.newNumber == newNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, carId, newNumber);

  /// Create a copy of OwnerEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCarNumberImplCopyWith<_$UpdateCarNumberImpl> get copyWith =>
      __$$UpdateCarNumberImplCopyWithImpl<_$UpdateCarNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loadUserCars,
    required TResult Function(int userId, int carId, String newNumber)
        updateCarNumber,
  }) {
    return updateCarNumber(userId, carId, newNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? loadUserCars,
    TResult? Function(int userId, int carId, String newNumber)? updateCarNumber,
  }) {
    return updateCarNumber?.call(userId, carId, newNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loadUserCars,
    TResult Function(int userId, int carId, String newNumber)? updateCarNumber,
    required TResult orElse(),
  }) {
    if (updateCarNumber != null) {
      return updateCarNumber(userId, carId, newNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUserCars value) loadUserCars,
    required TResult Function(_UpdateCarNumber value) updateCarNumber,
  }) {
    return updateCarNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadUserCars value)? loadUserCars,
    TResult? Function(_UpdateCarNumber value)? updateCarNumber,
  }) {
    return updateCarNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUserCars value)? loadUserCars,
    TResult Function(_UpdateCarNumber value)? updateCarNumber,
    required TResult orElse(),
  }) {
    if (updateCarNumber != null) {
      return updateCarNumber(this);
    }
    return orElse();
  }
}

abstract class _UpdateCarNumber implements OwnerEvents {
  const factory _UpdateCarNumber(
      {required final int userId,
      required final int carId,
      required final String newNumber}) = _$UpdateCarNumberImpl;

  int get userId;
  int get carId;
  String get newNumber;

  /// Create a copy of OwnerEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCarNumberImplCopyWith<_$UpdateCarNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OwnerStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserCar> cars) carsLoaded,
    required TResult Function() errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserCar> cars)? carsLoaded,
    TResult? Function()? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserCar> cars)? carsLoaded,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_CarsLoaded value) carsLoaded,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CarsLoaded value)? carsLoaded,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CarsLoaded value)? carsLoaded,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerStatesCopyWith<$Res> {
  factory $OwnerStatesCopyWith(
          OwnerStates value, $Res Function(OwnerStates) then) =
      _$OwnerStatesCopyWithImpl<$Res, OwnerStates>;
}

/// @nodoc
class _$OwnerStatesCopyWithImpl<$Res, $Val extends OwnerStates>
    implements $OwnerStatesCopyWith<$Res> {
  _$OwnerStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OwnerStatesCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OwnerStates.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserCar> cars) carsLoaded,
    required TResult Function() errorLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserCar> cars)? carsLoaded,
    TResult? Function()? errorLoading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserCar> cars)? carsLoaded,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_CarsLoaded value) carsLoaded,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CarsLoaded value)? carsLoaded,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CarsLoaded value)? carsLoaded,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OwnerStates {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CarsLoadedImplCopyWith<$Res> {
  factory _$$CarsLoadedImplCopyWith(
          _$CarsLoadedImpl value, $Res Function(_$CarsLoadedImpl) then) =
      __$$CarsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserCar> cars});
}

/// @nodoc
class __$$CarsLoadedImplCopyWithImpl<$Res>
    extends _$OwnerStatesCopyWithImpl<$Res, _$CarsLoadedImpl>
    implements _$$CarsLoadedImplCopyWith<$Res> {
  __$$CarsLoadedImplCopyWithImpl(
      _$CarsLoadedImpl _value, $Res Function(_$CarsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$CarsLoadedImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<UserCar>,
    ));
  }
}

/// @nodoc

class _$CarsLoadedImpl implements _CarsLoaded {
  const _$CarsLoadedImpl({required final List<UserCar> cars}) : _cars = cars;

  final List<UserCar> _cars;
  @override
  List<UserCar> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'OwnerStates.carsLoaded(cars: $cars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarsLoadedImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  /// Create a copy of OwnerStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarsLoadedImplCopyWith<_$CarsLoadedImpl> get copyWith =>
      __$$CarsLoadedImplCopyWithImpl<_$CarsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserCar> cars) carsLoaded,
    required TResult Function() errorLoading,
  }) {
    return carsLoaded(cars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserCar> cars)? carsLoaded,
    TResult? Function()? errorLoading,
  }) {
    return carsLoaded?.call(cars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserCar> cars)? carsLoaded,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (carsLoaded != null) {
      return carsLoaded(cars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_CarsLoaded value) carsLoaded,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return carsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CarsLoaded value)? carsLoaded,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) {
    return carsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CarsLoaded value)? carsLoaded,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (carsLoaded != null) {
      return carsLoaded(this);
    }
    return orElse();
  }
}

abstract class _CarsLoaded implements OwnerStates {
  const factory _CarsLoaded({required final List<UserCar> cars}) =
      _$CarsLoadedImpl;

  List<UserCar> get cars;

  /// Create a copy of OwnerStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarsLoadedImplCopyWith<_$CarsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorLoadingImplCopyWith<$Res> {
  factory _$$ErrorLoadingImplCopyWith(
          _$ErrorLoadingImpl value, $Res Function(_$ErrorLoadingImpl) then) =
      __$$ErrorLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorLoadingImplCopyWithImpl<$Res>
    extends _$OwnerStatesCopyWithImpl<$Res, _$ErrorLoadingImpl>
    implements _$$ErrorLoadingImplCopyWith<$Res> {
  __$$ErrorLoadingImplCopyWithImpl(
      _$ErrorLoadingImpl _value, $Res Function(_$ErrorLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorLoadingImpl implements _ErrorLoading {
  const _$ErrorLoadingImpl();

  @override
  String toString() {
    return 'OwnerStates.errorLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserCar> cars) carsLoaded,
    required TResult Function() errorLoading,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserCar> cars)? carsLoaded,
    TResult? Function()? errorLoading,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserCar> cars)? carsLoaded,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_CarsLoaded value) carsLoaded,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CarsLoaded value)? carsLoaded,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CarsLoaded value)? carsLoaded,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class _ErrorLoading implements OwnerStates {
  const factory _ErrorLoading() = _$ErrorLoadingImpl;
}
