import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_layout/place_cell.dart';

class PlacesLayout extends StatelessWidget {
  const PlacesLayout({
    super.key,
    required this.places
  });

  final List<ParkingPlaceModel> places;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 10,
      children: places.map((place) => PlaceCell(place: place)).toList(),
    );
  }
}