import 'package:encrypt_shared_preferences/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/auth/login/ui/login_page.dart';
import 'package:parking_admin/components/pages/auth/preload_page.dart';
import 'package:parking_admin/components/pages/auth/registration/ui/registration_page.dart';
import 'package:parking_admin/components/pages/places/bloc/places_layout/places_layout_bloc.dart';
import 'package:parking_admin/services/network/network_api.dart';
import 'package:parking_admin/components/pages/auth/auth_roles_preload.dart';
import 'package:parking_admin/components/pages/places/places_page.dart';
import 'package:parking_admin/components/pages/roles/administrator/administrator_main/administrator_main_page.dart';
import 'package:parking_admin/components/pages/roles/management_company/management_company_main/management_company_main_page.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/owner_main_page.dart';
import 'package:parking_admin/components/pages/roles/tenant/tenant_main/tenant_main_page.dart';
import 'package:parking_admin/components/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import 'services/local_data/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AuthService.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider())
      ],
      child: App(networkApi: NetworkApi())),
    );
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
        BlocProvider(create: (_) => PlacesLayoutBloc(networkApi: networkApi)..add(const PlacesLayoutEvents.loadData()))
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parking - Admin',
      theme: Provider.of<ThemeProvider>(context).themeData,
      initialRoute: PlacesPage.route,
      routes: {
        PlacesPage.route: (_) => PlacesPage(),
        AuthRolesPreload.route: (_) => const AuthRolesPreload(),
        AdministratorMainPage.route: (_) => const AdministratorMainPage(),
        ManagementCompanyMainPage.route: (_) => const ManagementCompanyMainPage(),
        OwnerMainPage.route: (_) => const OwnerMainPage(),
        TenantMainPage.route: (_) => const TenantMainPage(),
        PreloadPage.route: (_) => const PreloadPage(),
        RegistrationPage.route: (_) => const RegistrationPage(),
        LoginPage.route: (_) => const LoginPage()
      },
    ));
  }
}