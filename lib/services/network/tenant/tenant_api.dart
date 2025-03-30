import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/roles/tenant/tenant_rent_place/model/for_rent_parking_spot_model.dart';
import 'package:parking_admin/services/network/network_api.dart';

class TenantApi extends NetworkApi {

  Future<List<ForRentParkingSpotModel>> getFreePlaces() async {
    try {
      final response = await dio.get('/parking-spots/available');

      if (response.statusCode == 200) {
        List<ForRentParkingSpotModel> content = (response.data as List)
            .map((json) => ForRentParkingSpotModel.fromJson(json))
            .toList();
        return content;
      } else {
        throw Exception('Ошибка запроса getFreePlaces: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Ошибка запроса getFreePlaces: $e');
    }
  }

  Future<bool> rentPlace(int placeId, String vehicleNumber, DateTime date) async {
    try {
      String date1 = date.toString().trim().replaceAll(" ", "T");
      print(date1);
      final response = await dio.post(
          "/parking-spots/${placeId}/reserve",
          data: {
            "license_plate": vehicleNumber,
            "until": date1
          }
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Ошибка аренды: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Ошибка аренды: $e');
    }
  }

}