import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/places/bloc/places_layout/places_layout_bloc.dart';
import 'package:parking_admin/components/pages/places/bloc/places_table/places_table_bloc.dart';
import 'package:parking_admin/components/pages/places/ui/common/control_panel/control_panel.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_layout/places_layout.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_table/places_table.dart';

class PlacesPage extends StatefulWidget {
  static const route = '/';

  const PlacesPage({super.key});

  @override
  State<PlacesPage> createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
  int _currentBottomBarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _currentBottomBarIndex == 0
          ? const PlacesTable()
          : const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: PlacesLayout()
              ),
              Flexible(
                flex: 1,
                child: ControlPanel()
              )
            ]
          ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentBottomBarIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.table_chart_outlined),
              label: 'Табличный вид',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: 'Интерактивный вид'
            )
          ],
          onTap: (index) => setState(() {
            _currentBottomBarIndex = index;
            if (_currentBottomBarIndex == 0) {
              context.read<PlacesTableBloc>().add(const PlacesTableEvents.loadAll());
            } else {
              context.read<PlacesLayoutBloc>().add(const PlacesLayoutEvents.loadData());
            }
          })
        ),
      ),
    );
  }
}