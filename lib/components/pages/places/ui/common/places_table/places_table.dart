import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';

class PlacesTable extends StatelessWidget {
  PlacesTable({
    super.key,
    required this.places
  });

  final List<ParkingPlaceModel> places;

  //TODO: Допилить под актуальный json
  List<DataRow> getRows({ required List<ParkingPlaceModel> data }) => data.map((place) => DataRow(
    color: WidgetStateProperty.all<Color>(place.placeStatus.statusColor!),
    cells: [
      DataCell(Text(place.placeNumber)),
      DataCell(Text(place.placeType.name)),
      DataCell(Text(place.fullName)),
      DataCell(Text(place.carNumber)),
      DataCell(Text(place.placeStatus.statusName)),
      DataCell(
        const Icon(Icons.edit),
        onTap: () {}
      )
    ])).toList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        columns: const [
          DataColumn(label: Text('№ места')),
          DataColumn(label: Text('Тип места')),
          DataColumn(label: Text('ФИО владельца')),
          DataColumn(label: Text('№ машины')),
          DataColumn(label: Text('Статус')),
          DataColumn(label: Text('')) //TODO: Заменить на PopupMenuButton с опциями "Добавить запись", "Удалить всё"
        ],
        rows: getRows(data: places),
      ),
    );
  }
}