import 'dart:math';

import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_type_enum/place_type_enum.dart';
import 'package:parking_admin/services/network/network_api.dart';

class PlacesApi extends NetworkApi {

  Future<List<ParkingPlaceModel>> getAllPlaces() async {
    // try {
    //   final response = await dio.get('/api/parking-places/');
    //   final List data = response.data;
    //   dev.log(data.toString());
    //   return data.map((place) => ParkingPlaceModel.fromJson(place)).toList();
    // } on DioException catch (e) {
    //   throw Exception('Ошибка запроса: $e');
    // }

    return List.generate(
        100,
            (index) => ParkingPlaceModel(
            id: index + 1,
            fullName: "ФИО ${index + 1}",
            carNumber: "Машина ${index + 1}",
            placeNumber: "B${index + 1}",
            placeType: PlaceType.values[Random().nextInt(PlaceType.values.length - 1)],
            placeStatus: PlaceStatus.values[Random().nextInt(PlaceStatus.values.length - 1)]
        )
    );
  }

}