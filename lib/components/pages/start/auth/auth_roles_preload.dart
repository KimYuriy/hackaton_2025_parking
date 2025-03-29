import 'package:flutter/material.dart';
import 'package:parking_admin/components/default_components/buttons/default_button.dart';

class AuthRolesPreload extends StatelessWidget {
  static const route = '/auth_roles_preload';
  const AuthRolesPreload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DefaultButton(
                text: "Администратор",
                onPressed: () {

                }
            ),
            const SizedBox(height: 10),

            const SizedBox(height: 10),

            const SizedBox(height: 10),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
