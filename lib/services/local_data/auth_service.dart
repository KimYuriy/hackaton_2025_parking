import 'package:encrypt_shared_preferences/provider.dart';
import 'package:flutter/material.dart';

class AuthService {
  static var _sharedPref = EncryptedSharedPreferences.getInstance();

  static Future<void> init() async {
    await EncryptedSharedPreferences.initialize('0123456789123456');
    _sharedPref = EncryptedSharedPreferences.getInstance();
  }

  static Future<void> saveToken(String token) async {
    await _sharedPref.setString('jwt_token', token);
  }

  static Future<String?> getToken() async {
    return await _sharedPref.getString('jwt_token');
  }

  static Future<void> removeToken() async {
    await _sharedPref.remove('jwt_token');
  }
}