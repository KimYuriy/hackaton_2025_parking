import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/auth/auth_roles_preload.dart';
import 'package:parking_admin/components/pages/places/places_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parking - Admin',
      initialRoute: AuthRolesPreload.route,
      routes: {
        PlacesPage.route: (_) => PlacesPage(),
        AuthRolesPreload.route: (_) => const AuthRolesPreload()
      },
    );
  }
}