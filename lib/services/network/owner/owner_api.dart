import 'dart:convert';

import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/services/network/network_api.dart';

class OwnerApi extends NetworkApi {
  Future<List<ParkingPlaceModel>> getAllPlaces() async {
    try {
      final response = await dio.get('/api/parking_places/');
      final List data = jsonDecode(jsonEncode(response.data));
      return data.map((place) => ParkingPlaceModel.fromJson(place)).toList();
    } catch (e) {
      throw Exception('Ошибка запроса getAllPlaces: $e');
    }
  }

  Future<void> updateCarNumber({ required int userId, required int carId, required String newNumber }) async {
    await dio.put('/vehicles/$carId', data: {
      "license_plate": newNumber,
      "is_special": false
    });
  }
}