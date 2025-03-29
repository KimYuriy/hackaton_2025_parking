import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:parking_admin/components/pages/auth/auth_roles_preload.dart';
import 'package:parking_admin/components/pages/auth/login/model/login_response_model.dart';
import 'package:parking_admin/services/local_data/auth_service.dart';
import 'package:parking_admin/services/network/auth/login_api.dart';
import 'package:parking_admin/services/network/auth/registration_api.dart';
import 'dart:developer' as dev;

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final RegistrationApi registrationApi = RegistrationApi();
  final LoginApi loginApi = LoginApi();
  LoginBloc() : super(LoginInitial()) {
    on<MakeLoginEvent>((event, emit) async {
      try {
        LoginResponseModel loginResponseData = await loginApi.login(
            event.username,
            event.password
        );
        AuthService.saveToken(loginResponseData.accessToken);

        dev.log("Типо зарегался с данными \nusername: ${event.username}\npassword: ${event.password}");
        Navigator.pushNamed(
            event.context,
            AuthRolesPreload.route
        );
      } on Exception catch(e) {
        emit(LoginErrorState(exception: e));
      }
    });

    on<InitializeWaitState>((event, emit) {
      emit(LoginWaitForState());
    });
  }
}
