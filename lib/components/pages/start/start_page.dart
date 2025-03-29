import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/start/ui/common/nav_drawer.dart';
import 'package:parking_admin/components/pages/start/ui/common/places_layout/places_layout.dart';
import 'package:parking_admin/components/pages/start/ui/common/private_parking_places_table.dart';

class StartPage extends StatelessWidget {
  static const route = '/';

  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PlacesLayout(),
      ),
    );
  }
}