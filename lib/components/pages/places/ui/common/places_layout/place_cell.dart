import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_layout/info_alert/info_alert.dart';

class PlaceCell extends StatelessWidget {
  const PlaceCell({
    super.key,
    required this.place
  });

  final ParkingPlaceModel place;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        context: context,
        builder: (_) => InfoAlertDialog(placeInfo: place)
      ),
      child: Card(
        color: place.placeStatus.statusColor,
        child: Center(
          child: Text(place.placeNumber),
        ),
      ),
    );
  }
}