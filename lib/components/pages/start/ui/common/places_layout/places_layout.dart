import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/place_type_enum/place_type_enum.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/private_parking_place_model.dart';
import 'package:parking_admin/components/pages/start/ui/common/places_layout/place_cell.dart';

class PlacesLayout extends StatelessWidget {
  PlacesLayout({super.key});

  final places = List.generate(
    100,
    (index) => PrivateParkingPlaceModel(
      id: index + 1,
      fullName: "ФИО ${index + 1}",
      carNumber: "Машина ${index + 1}",
      placeNumber: "B${index + 1}",
      placeType: PlaceType.values[Random().nextInt(PlaceType.values.length - 1)],
      placeStatus: PlaceStatus.values[Random().nextInt(PlaceStatus.values.length - 1)]
    )
  );

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 10,
      children: places.map((place) => PlaceCell(place: place)).toList(),
    );
  }
}