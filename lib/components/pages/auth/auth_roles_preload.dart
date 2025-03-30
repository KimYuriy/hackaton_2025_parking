import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/default_components/buttons/default_button.dart';
import 'package:parking_admin/components/pages/auth/login/ui/login_page.dart';
import 'package:parking_admin/components/pages/places/bloc/places_layout/places_layout_bloc.dart';
import 'package:parking_admin/components/pages/places/places_page.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/bloc/owner_bloc.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/owner_main_page.dart';
import 'package:parking_admin/components/pages/roles/tenant/tenant_main/tenant_main_page.dart';
import 'package:parking_admin/services/local_data/auth_service.dart';

class AuthRolesPreload extends StatelessWidget {
  static const route = '/auth_roles_preload';
  const AuthRolesPreload({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.surface,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (AuthService.userRole == 'admin')
                DefaultButton(
                  text: "Администратор",
                  onPressed: () {
                    context.read<PlacesLayoutBloc>().add(const PlacesLayoutEvents.loadData());
                    Navigator.pushNamed(context, PlacesPage.route);
                  }
                ),
              const SizedBox(height: 10),
              if (AuthService.userRole == 'resident')
                DefaultButton(
                  text: "Владелец",
                  onPressed: () {
                    context.read<OwnerBloc>().add(OwnerEvents.loadUserCars(id: AuthService.userId));
                    Navigator.pushNamed(context, OwnerMainPage.route);
                  }
                ),
              const SizedBox(height: 10),
              if (AuthService.userRole == 'tenant')
                DefaultButton(
                  text: "Арендатор",
                  onPressed: () {
                    Navigator.pushNamed(context, TenantMainPage.route);
                  }
                ),
              Spacer(),
              DefaultButton(
                text: 'Выйти',
                onPressed: () {
                  AuthService.removeToken();
                  AuthService.removeUserId();
                  Navigator.pushNamed(context, LoginPage.route);
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
