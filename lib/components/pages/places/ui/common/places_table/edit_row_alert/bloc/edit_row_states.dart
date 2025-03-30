part of 'edit_row_bloc.dart';

@freezed
class EditRowStates with _$EditRowStates {
  const factory EditRowStates.loading() = _Loading;
  const factory EditRowStates.foundUsers({
    @Default([]) List<User> users,
    @Default([]) List<User> carsOfUser
  }) = _FoundUsers;
  const factory EditRowStates.errorLoading() = _ErrorLoading;
}