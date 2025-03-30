import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/places/bloc/places_layout/places_layout_bloc.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_status_enum/place_status_enum.dart';
import 'package:parking_admin/components/pages/places/ui/common/control_panel/control_panel.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_layout/place_cell.dart';

class PlacesLayout extends StatelessWidget {
  const PlacesLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlacesLayoutBloc, PlacesLayoutStates>(
      builder: (context, state) => state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        dataLoaded: (places) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: GridView.count(
                crossAxisCount: 10,
                children: places.map((place) => PlaceCell(place: place)).toList(),
              ),
            ),
            Flexible(
              flex: 1,
              child: ControlPanel(freeCount: places.where((item) => item.placeStatus == PlaceStatus.available).length)
            )
          ],
        ),
        errorLoading: () => const Center(child: Text('Ошибка'))
      )
    );
  }
}