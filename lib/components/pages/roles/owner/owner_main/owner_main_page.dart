import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/default_components/buttons/default_button.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/bloc/owner_bloc.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/ui/change_number_alert.dart';
import 'package:parking_admin/services/local_data/auth_service.dart';

class OwnerMainPage extends StatelessWidget {
  static const route = "/owner_main";
  const OwnerMainPage({super.key});

  List<DataColumn> getColumns() => const [
    DataColumn(label: Text('№ места')),
    DataColumn(label: Text('№ машины')),
    DataColumn(label: Text('')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Страница владельца"),
              BlocBuilder<OwnerBloc, OwnerStates>(
                builder: (context, state) => state.when(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  errorLoading: () => const Center(child: Text('Ошибка')),
                  carsLoaded: (cars) => SingleChildScrollView(
                    child: DataTable(
                      columns: getColumns(),
                      rows: cars.map((car) => DataRow(cells: [
                        DataCell(Text(car.place)),
                        DataCell(Text(car.number)),
                        DataCell(PopupMenuButton(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              onTap: () => showDialog(
                                context: context,
                                builder: (context) => ChangeNumberAlert(
                                  data: car
                                )
                              ),
                              child: const Text('Изменить номер машины')
                            ),
                            PopupMenuItem(
                              onTap: () {},
                              child: const Text('Передать парковочное место')
                            ),
                          ],
                        )),
                      ])).toList()
                    ),
                  ),
                )
              ),
              DefaultButton(
                text: "Назад",
                onPressed: () {
                  Navigator.pop(context);
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
