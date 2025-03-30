import 'package:dio/dio.dart';
import 'package:parking_admin/services/local_data/auth_service.dart';

class NetworkApi {
  final dio = Dio(BaseOptions(
    baseUrl: 'http://192.168.253.223:8000',
  ));

  NetworkApi() {
    dio.interceptors.add(AuthInterceptor());
  }
}

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final jwtToken = AuthService.getToken();

    if (jwtToken != null) {
      options.headers['Authorization'] = 'Bearer $jwtToken';
    }
    
    super.onRequest(options, handler);
  }
}