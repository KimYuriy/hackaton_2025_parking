import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'owner_access_request_event.dart';
part 'owner_access_request_state.dart';

class OwnerAccessRequestBloc extends Bloc<OwnerAccessRequestEvent, OwnerAccessRequestState> {
  OwnerAccessRequestBloc() : super(OwnerAccessRequestInitial()) {
    on<OwnerAccessRequestEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
