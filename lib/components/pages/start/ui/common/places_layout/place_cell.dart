import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/private_parking_place_model.dart';

class PlaceCell extends StatelessWidget {
  const PlaceCell({
    super.key,
    required this.place
  });

  final PrivateParkingPlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: place.placeStatus.statusColor,
    );
  }
}