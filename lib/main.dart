import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/network/network_api.dart';
import 'package:parking_admin/components/pages/auth/auth_roles_preload.dart';
import 'package:parking_admin/components/pages/places/bloc/places_page_bloc.dart';
import 'package:parking_admin/components/pages/places/places_page.dart';

void main() {
  runApp(App(networkApi: NetworkApi()));
}

class App extends StatelessWidget {
  const App({
    super.key,
    required this.networkApi
  });

  final NetworkApi networkApi;
  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PlacesPageBloc(networkApi: networkApi)..add(const PlacesPageEvents.loadData()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Parking - Admin',
        initialRoute: PlacesPage.route,
        routes: {
          PlacesPage.route: (_) => PlacesPage(),
          AuthRolesPreload.route: (_) => const AuthRolesPreload()
        },
      ),
    );
  }
}