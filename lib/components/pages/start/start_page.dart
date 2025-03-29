import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/place_type_enum/place_type_enum.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/private_parking_place_model.dart';
import 'package:parking_admin/components/pages/start/ui/common/free_places_text.dart';
import 'package:parking_admin/components/pages/start/ui/common/places_layout/places_layout.dart';

class StartPage extends StatelessWidget {
  static const route = '/';

  StartPage({super.key});

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
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => constraints.maxWidth > 700
          ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: PlacesLayout(places: places)
              ),
              Flexible(
                flex: 1,
                child: FreePlacesText(freePlacesCount: 5)
              )
            ],
          )
          : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FreePlacesText(freePlacesCount: 5),
              PlacesLayout(places: places)
            ],
          )
        ),
      ),
    );
  }
}