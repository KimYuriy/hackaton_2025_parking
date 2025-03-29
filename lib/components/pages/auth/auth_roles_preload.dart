import 'package:flutter/material.dart';
import 'package:parking_admin/components/default_components/buttons/default_button.dart';
import 'package:parking_admin/components/pages/roles/administrator/administrator_main/administrator_main_page.dart';
import 'package:parking_admin/components/pages/roles/management_company/management_company_main/management_company_main_page.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/owner_main_page.dart';
import 'package:parking_admin/components/pages/roles/tenant/tenant_main/tenant_main_page.dart';

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
              DefaultButton(
                  text: "Администратор",
                  onPressed: () {
                    Navigator.pushNamed(context, AdministratorMainPage.route);
                  }
              ),
              const SizedBox(height: 10),
              DefaultButton(
                  text: "Представитель управляющей компании",
                  onPressed: () {
                    Navigator.pushNamed(context, ManagementCompanyMainPage.route);
                  }
              ),
              const SizedBox(height: 10),
              DefaultButton(
                  text: "Владелец",
                  onPressed: () {
                    Navigator.pushNamed(context, OwnerMainPage.route);
                  }
              ),
              const SizedBox(height: 10),
              DefaultButton(
                  text: "Арендатор",
                  onPressed: () {
                    Navigator.pushNamed(context, TenantMainPage.route);
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
