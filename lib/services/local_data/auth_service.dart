import 'package:encrypt_shared_preferences/provider.dart';

class AuthService {
  static var _sharedPref = EncryptedSharedPreferences.getInstance();

  static Future<void> init() async {
    await EncryptedSharedPreferences.initialize('0123456789123456');
    _sharedPref = EncryptedSharedPreferences.getInstance();
  }

  static Future<void> saveToken(String token) async {
    await _sharedPref.setString('jwt_token', token);
  }

  static String? getToken() => _sharedPref.getString('jwt_token');

  static Future<void> removeToken() async {
    await _sharedPref.remove('jwt_token');
  }

  static Future<void> saveUserId(int id) async {
    await _sharedPref.setInt('user_id', id);
  }

  static Future<void> removeUserId() async {
    await _sharedPref.remove('user_id');
  }

  static int get userId => _sharedPref.getInt('user_id')!;

  static Future<void> saveUserRole(String role) async {
    await _sharedPref.setString('user_role', role);
  }

  static String get userRole => _sharedPref.getString('user_role')!;

  static Future<void> removeUserRole() async {
    await _sharedPref.remove('user_role');
  }
}