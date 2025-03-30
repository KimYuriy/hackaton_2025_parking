part of 'edit_row_bloc.dart';

@freezed
class EditRowEvents with _$EditRowEvents {
  const factory EditRowEvents.updateData({ required ParkingPlaceModel data}) = _UpdateData;
  const factory EditRowEvents.getAllUsers() = _GetAllUsers;
  const factory EditRowEvents.getCarsOfUser({ required int userId }) = _GetCarsOfUser;
}