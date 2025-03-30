import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/places/bloc/places_layout/places_layout_bloc.dart';
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
        dataLoaded: (places) => GridView.count(
          crossAxisCount: 10,
          children: places.map((place) => PlaceCell(place: place)).toList(),
        ),
        errorLoading: () => const Center(child: Text('Ошибка'))
      )
    );
  }
}