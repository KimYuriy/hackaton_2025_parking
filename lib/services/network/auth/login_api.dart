import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:parking_admin/components/pages/auth/login/model/login_response_model.dart';
import 'package:parking_admin/services/local_data/auth_service.dart';
import 'package:parking_admin/services/network/network_api.dart';

class LoginApi extends NetworkApi {
  Future<LoginResponseModel> login (
      String username,
      String password) async {
    try {
      final response = await dio.post(
        '/auth/login',
        options: Options(
          contentType: Headers.formUrlEncodedContentType, // Важно!
        ),
        data: {
          "grant_type": "password",
          "username": username,
          "password": password,
          "scope": "admin",
          "client_id": "string",
          "client_secret": "string",
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        log(data.toString());
        AuthService.saveUserId(data["user_id"] as int);
        AuthService.saveUserRole(data['user_role'] as String);
        return LoginResponseModel.fromJson(response.data);
      } else {
        throw Exception('Ошибка при входе в аккаунт, код запрос - ${response.statusCode}, '
            'тело - ${response.data}');
      }

    } on DioException catch (e) {
      throw Exception('Ошибка запрос: $e');
    }
  }
}