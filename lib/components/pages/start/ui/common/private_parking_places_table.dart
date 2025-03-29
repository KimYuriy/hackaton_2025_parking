import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/place_type_enum/place_type_enum.dart';
import 'package:parking_admin/components/pages/start/model/private_parking_place_model/private_parking_place_model.dart';

class PrivateParkingPlacesTable extends StatelessWidget {
  PrivateParkingPlacesTable({super.key});

  final placesData = [
    const PrivateParkingPlaceModel(
      id: 1,
      fullName: 'Ким Ю.М.',
      carNumber: "Т366КМ",
      placeNumber: "B13",
      placeType: PlaceType.owned,
      placeStatus: PlaceStatus.occupied
    )
  ];

  //TODO: Допилить под актуальный json
  List<DataRow> getRows({ required List<PrivateParkingPlaceModel> data }) => data.map((place) => DataRow(cells: [
    DataCell(Text(place.placeNumber)),
    DataCell(Text(place.placeType.name)),
    DataCell(Text(place.fullName)),
    DataCell(Text(place.carNumber)),
    DataCell(
      const Icon(Icons.edit),
      onTap: () {}
    )
  ])).toList();

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('№ места')),
        DataColumn(label: Text('Тип места')),
        DataColumn(label: Text('ФИО владельца')),
        DataColumn(label: Text('№ машины')),
        DataColumn(label: Text('')) //TODO: Заменить на PopupMenuButton с опциями "Добавить запись", "Удалить всё"
      ],
      rows: getRows(data: placesData),
    );
  }
}