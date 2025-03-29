import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/start/start_page.dart';

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
      initialRoute: StartPage.route,
      routes: {
        StartPage.route: (_) => StartPage()
      },
    );
  }
}