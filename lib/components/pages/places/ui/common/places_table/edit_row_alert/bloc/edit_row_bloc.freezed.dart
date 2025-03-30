// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_row_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditRowEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParkingPlaceModel data) updateData,
    required TResult Function() getAllUsers,
    required TResult Function(int userId) getCarsOfUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParkingPlaceModel data)? updateData,
    TResult? Function()? getAllUsers,
    TResult? Function(int userId)? getCarsOfUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParkingPlaceModel data)? updateData,
    TResult Function()? getAllUsers,
    TResult Function(int userId)? getCarsOfUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetCarsOfUser value) getCarsOfUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetCarsOfUser value)? getCarsOfUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetCarsOfUser value)? getCarsOfUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRowEventsCopyWith<$Res> {
  factory $EditRowEventsCopyWith(
          EditRowEvents value, $Res Function(EditRowEvents) then) =
      _$EditRowEventsCopyWithImpl<$Res, EditRowEvents>;
}

/// @nodoc
class _$EditRowEventsCopyWithImpl<$Res, $Val extends EditRowEvents>
    implements $EditRowEventsCopyWith<$Res> {
  _$EditRowEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditRowEvents
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateDataImplCopyWith<$Res> {
  factory _$$UpdateDataImplCopyWith(
          _$UpdateDataImpl value, $Res Function(_$UpdateDataImpl) then) =
      __$$UpdateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParkingPlaceModel data});

  $ParkingPlaceModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateDataImplCopyWithImpl<$Res>
    extends _$EditRowEventsCopyWithImpl<$Res, _$UpdateDataImpl>
    implements _$$UpdateDataImplCopyWith<$Res> {
  __$$UpdateDataImplCopyWithImpl(
      _$UpdateDataImpl _value, $Res Function(_$UpdateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditRowEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UpdateDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ParkingPlaceModel,
    ));
  }

  /// Create a copy of EditRowEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParkingPlaceModelCopyWith<$Res> get data {
    return $ParkingPlaceModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UpdateDataImpl implements _UpdateData {
  const _$UpdateDataImpl({required this.data});

  @override
  final ParkingPlaceModel data;

  @override
  String toString() {
    return 'EditRowEvents.updateData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of EditRowEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDataImplCopyWith<_$UpdateDataImpl> get copyWith =>
      __$$UpdateDataImplCopyWithImpl<_$UpdateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParkingPlaceModel data) updateData,
    required TResult Function() getAllUsers,
    required TResult Function(int userId) getCarsOfUser,
  }) {
    return updateData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParkingPlaceModel data)? updateData,
    TResult? Function()? getAllUsers,
    TResult? Function(int userId)? getCarsOfUser,
  }) {
    return updateData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParkingPlaceModel data)? updateData,
    TResult Function()? getAllUsers,
    TResult Function(int userId)? getCarsOfUser,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetCarsOfUser value) getCarsOfUser,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetCarsOfUser value)? getCarsOfUser,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetCarsOfUser value)? getCarsOfUser,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class _UpdateData implements EditRowEvents {
  const factory _UpdateData({required final ParkingPlaceModel data}) =
      _$UpdateDataImpl;

  ParkingPlaceModel get data;

  /// Create a copy of EditRowEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDataImplCopyWith<_$UpdateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllUsersImplCopyWith<$Res> {
  factory _$$GetAllUsersImplCopyWith(
          _$GetAllUsersImpl value, $Res Function(_$GetAllUsersImpl) then) =
      __$$GetAllUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllUsersImplCopyWithImpl<$Res>
    extends _$EditRowEventsCopyWithImpl<$Res, _$GetAllUsersImpl>
    implements _$$GetAllUsersImplCopyWith<$Res> {
  __$$GetAllUsersImplCopyWithImpl(
      _$GetAllUsersImpl _value, $Res Function(_$GetAllUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditRowEvents
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllUsersImpl implements _GetAllUsers {
  const _$GetAllUsersImpl();

  @override
  String toString() {
    return 'EditRowEvents.getAllUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParkingPlaceModel data) updateData,
    required TResult Function() getAllUsers,
    required TResult Function(int userId) getCarsOfUser,
  }) {
    return getAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParkingPlaceModel data)? updateData,
    TResult? Function()? getAllUsers,
    TResult? Function(int userId)? getCarsOfUser,
  }) {
    return getAllUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParkingPlaceModel data)? updateData,
    TResult Function()? getAllUsers,
    TResult Function(int userId)? getCarsOfUser,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetCarsOfUser value) getCarsOfUser,
  }) {
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetCarsOfUser value)? getCarsOfUser,
  }) {
    return getAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetCarsOfUser value)? getCarsOfUser,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers(this);
    }
    return orElse();
  }
}

abstract class _GetAllUsers implements EditRowEvents {
  const factory _GetAllUsers() = _$GetAllUsersImpl;
}

/// @nodoc
abstract class _$$GetCarsOfUserImplCopyWith<$Res> {
  factory _$$GetCarsOfUserImplCopyWith(
          _$GetCarsOfUserImpl value, $Res Function(_$GetCarsOfUserImpl) then) =
      __$$GetCarsOfUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$GetCarsOfUserImplCopyWithImpl<$Res>
    extends _$EditRowEventsCopyWithImpl<$Res, _$GetCarsOfUserImpl>
    implements _$$GetCarsOfUserImplCopyWith<$Res> {
  __$$GetCarsOfUserImplCopyWithImpl(
      _$GetCarsOfUserImpl _value, $Res Function(_$GetCarsOfUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditRowEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetCarsOfUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCarsOfUserImpl implements _GetCarsOfUser {
  const _$GetCarsOfUserImpl({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'EditRowEvents.getCarsOfUser(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCarsOfUserImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of EditRowEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCarsOfUserImplCopyWith<_$GetCarsOfUserImpl> get copyWith =>
      __$$GetCarsOfUserImplCopyWithImpl<_$GetCarsOfUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParkingPlaceModel data) updateData,
    required TResult Function() getAllUsers,
    required TResult Function(int userId) getCarsOfUser,
  }) {
    return getCarsOfUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParkingPlaceModel data)? updateData,
    TResult? Function()? getAllUsers,
    TResult? Function(int userId)? getCarsOfUser,
  }) {
    return getCarsOfUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParkingPlaceModel data)? updateData,
    TResult Function()? getAllUsers,
    TResult Function(int userId)? getCarsOfUser,
    required TResult orElse(),
  }) {
    if (getCarsOfUser != null) {
      return getCarsOfUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetCarsOfUser value) getCarsOfUser,
  }) {
    return getCarsOfUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetCarsOfUser value)? getCarsOfUser,
  }) {
    return getCarsOfUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetCarsOfUser value)? getCarsOfUser,
    required TResult orElse(),
  }) {
    if (getCarsOfUser != null) {
      return getCarsOfUser(this);
    }
    return orElse();
  }
}

abstract class _GetCarsOfUser implements EditRowEvents {
  const factory _GetCarsOfUser({required final int userId}) =
      _$GetCarsOfUserImpl;

  int get userId;

  /// Create a copy of EditRowEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCarsOfUserImplCopyWith<_$GetCarsOfUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditRowStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> users, List<User> carsOfUser)
        foundUsers,
    required TResult Function() errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> carsOfUser)? foundUsers,
    TResult? Function()? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> carsOfUser)? foundUsers,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_FoundUsers value) foundUsers,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FoundUsers value)? foundUsers,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FoundUsers value)? foundUsers,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRowStatesCopyWith<$Res> {
  factory $EditRowStatesCopyWith(
          EditRowStates value, $Res Function(EditRowStates) then) =
      _$EditRowStatesCopyWithImpl<$Res, EditRowStates>;
}

/// @nodoc
class _$EditRowStatesCopyWithImpl<$Res, $Val extends EditRowStates>
    implements $EditRowStatesCopyWith<$Res> {
  _$EditRowStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditRowStates
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
    extends _$EditRowStatesCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditRowStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'EditRowStates.loading()';
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
    required TResult Function(List<User> users, List<User> carsOfUser)
        foundUsers,
    required TResult Function() errorLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> carsOfUser)? foundUsers,
    TResult? Function()? errorLoading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> carsOfUser)? foundUsers,
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
    required TResult Function(_FoundUsers value) foundUsers,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FoundUsers value)? foundUsers,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FoundUsers value)? foundUsers,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EditRowStates {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FoundUsersImplCopyWith<$Res> {
  factory _$$FoundUsersImplCopyWith(
          _$FoundUsersImpl value, $Res Function(_$FoundUsersImpl) then) =
      __$$FoundUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users, List<User> carsOfUser});
}

/// @nodoc
class __$$FoundUsersImplCopyWithImpl<$Res>
    extends _$EditRowStatesCopyWithImpl<$Res, _$FoundUsersImpl>
    implements _$$FoundUsersImplCopyWith<$Res> {
  __$$FoundUsersImplCopyWithImpl(
      _$FoundUsersImpl _value, $Res Function(_$FoundUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditRowStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? carsOfUser = null,
  }) {
    return _then(_$FoundUsersImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      carsOfUser: null == carsOfUser
          ? _value._carsOfUser
          : carsOfUser // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$FoundUsersImpl implements _FoundUsers {
  const _$FoundUsersImpl(
      {final List<User> users = const [],
      final List<User> carsOfUser = const []})
      : _users = users,
        _carsOfUser = carsOfUser;

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<User> _carsOfUser;
  @override
  @JsonKey()
  List<User> get carsOfUser {
    if (_carsOfUser is EqualUnmodifiableListView) return _carsOfUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carsOfUser);
  }

  @override
  String toString() {
    return 'EditRowStates.foundUsers(users: $users, carsOfUser: $carsOfUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoundUsersImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._carsOfUser, _carsOfUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_carsOfUser));

  /// Create a copy of EditRowStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoundUsersImplCopyWith<_$FoundUsersImpl> get copyWith =>
      __$$FoundUsersImplCopyWithImpl<_$FoundUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> users, List<User> carsOfUser)
        foundUsers,
    required TResult Function() errorLoading,
  }) {
    return foundUsers(users, carsOfUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> carsOfUser)? foundUsers,
    TResult? Function()? errorLoading,
  }) {
    return foundUsers?.call(users, carsOfUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> carsOfUser)? foundUsers,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (foundUsers != null) {
      return foundUsers(users, carsOfUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_FoundUsers value) foundUsers,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return foundUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FoundUsers value)? foundUsers,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) {
    return foundUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FoundUsers value)? foundUsers,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (foundUsers != null) {
      return foundUsers(this);
    }
    return orElse();
  }
}

abstract class _FoundUsers implements EditRowStates {
  const factory _FoundUsers(
      {final List<User> users, final List<User> carsOfUser}) = _$FoundUsersImpl;

  List<User> get users;
  List<User> get carsOfUser;

  /// Create a copy of EditRowStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoundUsersImplCopyWith<_$FoundUsersImpl> get copyWith =>
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
    extends _$EditRowStatesCopyWithImpl<$Res, _$ErrorLoadingImpl>
    implements _$$ErrorLoadingImplCopyWith<$Res> {
  __$$ErrorLoadingImplCopyWithImpl(
      _$ErrorLoadingImpl _value, $Res Function(_$ErrorLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditRowStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorLoadingImpl implements _ErrorLoading {
  const _$ErrorLoadingImpl();

  @override
  String toString() {
    return 'EditRowStates.errorLoading()';
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
    required TResult Function(List<User> users, List<User> carsOfUser)
        foundUsers,
    required TResult Function() errorLoading,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> carsOfUser)? foundUsers,
    TResult? Function()? errorLoading,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> carsOfUser)? foundUsers,
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
    required TResult Function(_FoundUsers value) foundUsers,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FoundUsers value)? foundUsers,
    TResult? Function(_ErrorLoading value)? errorLoading,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_FoundUsers value)? foundUsers,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class _ErrorLoading implements EditRowStates {
  const factory _ErrorLoading() = _$ErrorLoadingImpl;
}
