import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:parking_admin/components/pages/auth/auth_roles_preload.dart';
import 'package:parking_admin/components/pages/auth/login/model/login_response_model.dart';
import 'package:parking_admin/components/pages/auth/registration/model/registration_response_model.dart';
import 'package:parking_admin/services/local_data/auth_service.dart';
import 'package:parking_admin/services/network/auth/login_api.dart';
import 'package:parking_admin/services/network/auth/registration_api.dart';
import 'dart:developer' as dev;

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationApi registrationApi = RegistrationApi();
  final LoginApi loginApi = LoginApi();
  RegistrationBloc() : super(RegistrationInitial()) {
    on<MakeRegistrationEvent>((event, emit) async {
      try {
        print("BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB");
        RegistrationResponseModel registrationResponseData = await registrationApi.registration(
          event.username,
          event.email,
          event.password
        );
        LoginResponseModel loginResponseData = await loginApi.login(
            event.username,
            event.password
        );
        AuthService.saveToken(loginResponseData.accessToken);

        dev.log("Типо зарегался с данными \nusername: ${event.username}\nemail: ${event.email}\npassword: ${event.password}");
        Navigator.pushNamed(
            event.context,
            AuthRolesPreload.route
        );
      } on Exception catch(e) {
        print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
        emit(RegistrationErrorState(exception: e));
      }
    });

    on<InitializeWaitState>((event, emit) {
      emit(RegistrationWaitForState());
    });
  }
}
