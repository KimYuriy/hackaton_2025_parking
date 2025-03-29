import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';

class PlaceCell extends StatelessWidget {
  const PlaceCell({
    super.key,
    required this.place
  });

  final ParkingPlaceModel place;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: place.placeStatus.statusColor,
      ),
    );
  }
}