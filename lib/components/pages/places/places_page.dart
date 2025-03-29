import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/places/bloc/places_page_bloc.dart';
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
        body: BlocBuilder<PlacesPageBloc, PlacesPageStates>(
          builder: (context, state) => state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            dataLoaded: (places) => _currentBottomBarIndex == 0
            ? PlacesTable(places: places)
            : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 3,
                  child: PlacesLayout(places: places)
                ),
                Flexible(
                  flex: 1,
                  child: ControlPanel()
                )
              ]
            ),
            errorLoading: () => const Center(child: Text("Ошибка загрузки данных"))
          )
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
          })
        ),
      ),
    );
  }
}