import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/auth/auth_roles_preload.dart';
import 'package:parking_admin/components/pages/auth/registration/ui/registration_page.dart';
import 'package:parking_admin/components/utils/loading_indicator_dialog.dart';
import 'package:parking_admin/services/local_data/auth_service.dart';

class PreloadPage extends StatefulWidget {
  static const route = "/preload";
  const PreloadPage({super.key});

  @override
  State<PreloadPage> createState() => _PreloadPageState();
}

class _PreloadPageState extends State<PreloadPage> {

  @override
  void initState() {
    getCurrentPage();
    super.initState();
  }

  Future<void> getCurrentPage() async {
    String? token = await AuthService.getToken();
    if (token != null) {
      Navigator.pushNamed(
        context,
        AuthRolesPreload.route
      );
    } else {
      Navigator.pushNamed(
        context,
        RegistrationPage.route
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const LoadingIndicatorDialog();
  }
}
