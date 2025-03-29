import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:parking_admin/components/pages/auth/registration/model/registration_response_model.dart';
import 'package:parking_admin/services/network/network_api.dart';

class RegistrationApi extends NetworkApi {
  Future<RegistrationResponseModel> registration (
      String username,
      String email,
      String password) async {
    try {
      final response = await dio.post(
        '/auth/register',
        data: jsonEncode({
          "username": username,
          "email": email,
          "password": password
        })
      );

      if (response.statusCode == 200) {
        return RegistrationResponseModel.fromJson(response.data);
      } else {
        throw Exception('Ошибка при регистрации, код запрос - ${response.statusCode}, '
            'тело - ${response.data}');
      }

    } on DioException catch (e) {
      throw Exception('Ошибка запрос: $e');
    }
  }
}