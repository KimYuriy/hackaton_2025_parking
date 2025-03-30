import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/places/bloc/places_table/places_table_bloc.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_type_enum/place_type_enum.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_table/edit_row_alert/bloc/edit_row_bloc.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_table/edit_row_alert/edit_row_alert.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_table/table_control_panel.dart';

class PlacesTable extends StatelessWidget {
  const PlacesTable({
    super.key,
  });

  //TODO: Допилить под актуальный json
  List<DataRow> getRows({ required List<ParkingPlaceModel> data, required BuildContext context }) => data.map((place) => DataRow(
    color: WidgetStateProperty.all<Color>(place.placeStatus.statusColor!),
    cells: [
      DataCell(Text(place.placeNumber)),
      DataCell(Text(place.placeType.typeName)),
      DataCell(Text(place.fullName)),
      DataCell(Text(place.carNumber)),
      DataCell(Text(place.placeStatus.statusName)),
      DataCell(
        const Icon(Icons.edit),
        onTap: () {
          context.read<EditRowBloc>().add(const EditRowEvents.getAllUsers());
          showDialog(
            context: context,
            builder: (context) => EditRowAlert(data: place)
          );
        }
      )
    ])).toList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlacesTableBloc, PlacesTableStates>(
      builder: (context, state) => state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        dataLoaded: (places) => Row(
          children: [
            Flexible(
              flex: 3,
              child: SingleChildScrollView(
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('№ места')),
                    DataColumn(label: Text('Тип места')),
                    DataColumn(label: Text('ФИО владельца')),
                    DataColumn(label: Text('№ машины')),
                    DataColumn(label: Text('Статус')),
                    DataColumn(label: Text(''))
                  ],
                  rows: getRows(
                    context: context,
                    data: places
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: TableControlPanel(
                freeCount: places.where((place) => place.placeStatus == PlaceStatus.available).length,
                onItemSelected: (value) {
                  switch (value) {
                    case 'all':
                      context.read<PlacesTableBloc>().add(const PlacesTableEvents.loadAll());
                      break;
                    case 'available':
                      context.read<PlacesTableBloc>().add(const PlacesTableEvents.loadAvailable());
                      break;
                    case 'owned':
                      context.read<PlacesTableBloc>().add(const PlacesTableEvents.loadOccupied());
                      break;
                    case 'blocked':
                      context.read<PlacesTableBloc>().add(const PlacesTableEvents.loadBlocked());
                      break;
                  }
                }
              ))
          ],
        ),
        errorLoading: () => const Center(child: Text('Ошибка загрузки'))
      )
    );
  }
}