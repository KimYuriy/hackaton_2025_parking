import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/private_parking_place_model.dart';
import 'package:parking_admin/components/pages/start/ui/common/places_layout/place_cell.dart';

class PlacesLayout extends StatelessWidget {
  const PlacesLayout({
    super.key,
    required this.places
  });

  final List<PrivateParkingPlaceModel> places;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 10,
      children: places.map((place) => PlaceCell(place: place)).toList(),
    );
  }
}