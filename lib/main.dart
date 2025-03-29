import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/auth/auth_roles_preload.dart';
import 'package:parking_admin/components/pages/places/places_page.dart';
import 'package:parking_admin/components/pages/roles/administrator/administrator_main/administrator_main_page.dart';
import 'package:parking_admin/components/pages/roles/management_company/management_company_main/management_company_main_page.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/owner_main_page.dart';
import 'package:parking_admin/components/pages/roles/tenant/tenant_main/tenant_main_page.dart';

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
        AuthRolesPreload.route: (_) => const AuthRolesPreload(),
        AdministratorMainPage.route: (_) => const AdministratorMainPage(),
        ManagementCompanyMainPage.route: (_) => const ManagementCompanyMainPage(),
        OwnerMainPage.route: (_) => const OwnerMainPage(),
        TenantMainPage.route: (_) => const TenantMainPage(),
      },
    );
  }
}