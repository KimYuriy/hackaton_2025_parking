import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:parking_admin/services/network/owner/owner_api.dart';

part 'rent_place_event.dart';
part 'rent_place_state.dart';

class RentPlaceBloc extends Bloc<RentPlaceEvent, RentPlaceState> {
  final OwnerApi ownerApi = OwnerApi();
  RentPlaceBloc() : super(RentPlaceInitial()) {
    on<RentPlaceEvent>((event, emit) {

    });
  }
}
