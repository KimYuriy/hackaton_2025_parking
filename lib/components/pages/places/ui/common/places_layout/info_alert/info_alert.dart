import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_type_enum/place_type_enum.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_layout/info_alert/text_row.dart';

class InfoAlertDialog extends StatelessWidget {
  const InfoAlertDialog({
    super.key,
    required this.placeInfo
  });

  final ParkingPlaceModel placeInfo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: placeInfo.placeStatus.statusColor,
      title: Text('Место ${placeInfo.placeNumber}'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextRow(title: 'Владелец: ', content: placeInfo.fullName),
          TextRow(title: 'Прикрепленная машина: ', content: placeInfo.carNumber),
          TextRow(title: 'Тип места: ', content: placeInfo.placeType.typeName)
        ],
      ),
    );
  }
}