import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/places/bloc/places_page_bloc.dart';
import 'package:parking_admin/components/pages/places/ui/common/free_places_text.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_layout/places_layout.dart';

class PlacesPage extends StatelessWidget {
  static const route = '/';

  const PlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<PlacesPageBloc, PlacesPageStates>(
          builder: (context, state) => state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            dataLoaded: (places, freePlacesCount) => LayoutBuilder(
              builder: (context, constraints) => constraints.maxWidth > 700
              ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 3,
                    child: PlacesLayout(places: places)
                  ),
                  Flexible(
                    flex: 1,
                    child: FreePlacesText(freePlacesCount: freePlacesCount)
                  )
                ],
              )
              : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FreePlacesText(freePlacesCount: freePlacesCount),
                  PlacesLayout(places: places)
                ],
              )
            ),
            errorLoading: () => const Center(child: Text("Ошибка загрузки данных"))
          )
        ),
      ),
    );
  }
}