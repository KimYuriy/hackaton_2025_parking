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

    // return List.generate(
    //   100,
    //   (index) => ParkingPlaceModel(
    //     id: index + 1,
    //     fullName: "ФИО ${index + 1}",
    //     carNumber: "Машина ${index + 1}",
    //     placeNumber: "B${index + 1}",
    //     placeType: PlaceType.values[Random().nextInt(PlaceType.values.length - 1)],
    //     placeStatus: PlaceStatus.values[Random().nextInt(PlaceStatus.values.length - 1)]
    //   )
    // );
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
    }
  }
}