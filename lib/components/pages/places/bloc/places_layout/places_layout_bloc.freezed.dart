// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_layout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlacesLayoutEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesLayoutEventsCopyWith<$Res> {
  factory $PlacesLayoutEventsCopyWith(
          PlacesLayoutEvents value, $Res Function(PlacesLayoutEvents) then) =
      _$PlacesLayoutEventsCopyWithImpl<$Res, PlacesLayoutEvents>;
}

/// @nodoc
class _$PlacesLayoutEventsCopyWithImpl<$Res, $Val extends PlacesLayoutEvents>
    implements $PlacesLayoutEventsCopyWith<$Res> {
  _$PlacesLayoutEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacesLayoutEvents
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadDataImplCopyWith<$Res> {
  factory _$$LoadDataImplCopyWith(
          _$LoadDataImpl value, $Res Function(_$LoadDataImpl) then) =
      __$$LoadDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDataImplCopyWithImpl<$Res>
    extends _$PlacesLayoutEventsCopyWithImpl<$Res, _$LoadDataImpl>
    implements _$$LoadDataImplCopyWith<$Res> {
  __$$LoadDataImplCopyWithImpl(
      _$LoadDataImpl _value, $Res Function(_$LoadDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlacesLayoutEvents
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDataImpl implements _LoadData {
  const _$LoadDataImpl();

  @override
  String toString() {
    return 'PlacesLayoutEvents.loadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements PlacesLayoutEvents {
  const factory _LoadData() = _$LoadDataImpl;
}

/// @nodoc
mixin _$PlacesLayoutStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ParkingPlaceModel> allPlaces) dataLoaded,
    required TResult Function() errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ParkingPlaceModel> allPlaces)? dataLoaded,
    TResult? Function()? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ParkingPlaceModel> allPlaces)? dataLoaded,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesLayoutStatesCopyWith<$Res> {
  factory $PlacesLayoutStatesCopyWith(
          PlacesLayoutStates value, $Res Function(PlacesLayoutStates) then) =
      _$PlacesLayoutStatesCopyWithImpl<$Res, PlacesLayoutStates>;
}

/// @nodoc
class _$PlacesLayoutStatesCopyWithImpl<$Res, $Val extends PlacesLayoutStates>
    implements $PlacesLayoutStatesCopyWith<$Res> {
  _$PlacesLayoutStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacesLayoutStates
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
    extends _$PlacesLayoutStatesCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlacesLayoutStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PlacesLayoutStates.loading()';
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
    required TResult Function(List<ParkingPlaceModel> allPlaces) dataLoaded,
    required TResult Function() errorLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ParkingPlaceModel> allPlaces)? dataLoaded,
    TResult? Function()? errorLoading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ParkingPlaceModel> allPlaces)? dataLoaded,
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
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PlacesLayoutStates {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$DataLoadedImplCopyWith<$Res> {
  factory _$$DataLoadedImplCopyWith(
          _$DataLoadedImpl value, $Res Function(_$DataLoadedImpl) then) =
      __$$DataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ParkingPlaceModel> allPlaces});
}

/// @nodoc
class __$$DataLoadedImplCopyWithImpl<$Res>
    extends _$PlacesLayoutStatesCopyWithImpl<$Res, _$DataLoadedImpl>
    implements _$$DataLoadedImplCopyWith<$Res> {
  __$$DataLoadedImplCopyWithImpl(
      _$DataLoadedImpl _value, $Res Function(_$DataLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlacesLayoutStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allPlaces = null,
  }) {
    return _then(_$DataLoadedImpl(
      allPlaces: null == allPlaces
          ? _value._allPlaces
          : allPlaces // ignore: cast_nullable_to_non_nullable
              as List<ParkingPlaceModel>,
    ));
  }
}

/// @nodoc

class _$DataLoadedImpl implements _DataLoaded {
  const _$DataLoadedImpl({required final List<ParkingPlaceModel> allPlaces})
      : _allPlaces = allPlaces;

  final List<ParkingPlaceModel> _allPlaces;
  @override
  List<ParkingPlaceModel> get allPlaces {
    if (_allPlaces is EqualUnmodifiableListView) return _allPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPlaces);
  }

  @override
  String toString() {
    return 'PlacesLayoutStates.dataLoaded(allPlaces: $allPlaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._allPlaces, _allPlaces));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_allPlaces));

  /// Create a copy of PlacesLayoutStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataLoadedImplCopyWith<_$DataLoadedImpl> get copyWith =>
      __$$DataLoadedImplCopyWithImpl<_$DataLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ParkingPlaceModel> allPlaces) dataLoaded,
    required TResult Function() errorLoading,
  }) {
    return dataLoaded(allPlaces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ParkingPlaceModel> allPlaces)? dataLoaded,
    TResult? Function()? errorLoading,
  }) {
    return dataLoaded?.call(allPlaces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ParkingPlaceModel> allPlaces)? dataLoaded,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(allPlaces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements PlacesLayoutStates {
  const factory _DataLoaded(
      {required final List<ParkingPlaceModel> allPlaces}) = _$DataLoadedImpl;

  List<ParkingPlaceModel> get allPlaces;

  /// Create a copy of PlacesLayoutStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataLoadedImplCopyWith<_$DataLoadedImpl> get copyWith =>
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
    extends _$PlacesLayoutStatesCopyWithImpl<$Res, _$ErrorLoadingImpl>
    implements _$$ErrorLoadingImplCopyWith<$Res> {
  __$$ErrorLoadingImplCopyWithImpl(
      _$ErrorLoadingImpl _value, $Res Function(_$ErrorLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlacesLayoutStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorLoadingImpl implements _ErrorLoading {
  const _$ErrorLoadingImpl();

  @override
  String toString() {
    return 'PlacesLayoutStates.errorLoading()';
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
    required TResult Function(List<ParkingPlaceModel> allPlaces) dataLoaded,
    required TResult Function() errorLoading,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ParkingPlaceModel> allPlaces)? dataLoaded,
    TResult? Function()? errorLoading,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ParkingPlaceModel> allPlaces)? dataLoaded,
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
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class _ErrorLoading implements PlacesLayoutStates {
  const factory _ErrorLoading() = _$ErrorLoadingImpl;
}
