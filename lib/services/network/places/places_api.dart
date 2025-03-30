import 'dart:convert';
import 'dart:developer';

import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/user/user.dart';
import 'package:parking_admin/services/network/network_api.dart';

class PlacesApi extends NetworkApi {
  Future<List<ParkingPlaceModel>> getAllPlaces() async {
    try {
      final response = await dio.get('/api/parking_places/');
      final List data = jsonDecode(jsonEncode(response.data));
      return data.map((place) => ParkingPlaceModel.fromJson(place)).toList();
    } catch (e) {
      throw Exception('Ошибка запроса getAllPlaces: $e');
    }
  }

  Future<List<User>> getAllUsers() async {
    try {
      final response = await dio.get('/admin/users');
      final List data = jsonDecode(jsonEncode(response.data));
      log(data.toString());
      return data.map((user) => User.fromJson(user)).toList();
    } catch (e) {
      throw Exception('Ошибка запроса getAllUsers: $e');
    }
  }

  Future<void> updatePlace({ required int id, required Map<String, String> json }) async {
    try {
      await dio.patch('/parking-spots/$id', data: json);
    } catch (e) {
      log('Ошибка запроса updatePlace: $e');
      throw Exception('Ошибка запроса updatePlace: $e');
    }
  }

  Future<void> addPlace({ required Map<String, dynamic> json }) async {
    try {
      await dio.post('/parking-spots/', data: json);
    } catch (e) {
      throw Exception('Ошибка запроса addPlace: $e');
    }
  }
}