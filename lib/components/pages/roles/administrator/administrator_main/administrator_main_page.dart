import 'package:flutter/material.dart';
import 'package:parking_admin/components/default_components/buttons/default_button.dart';

class AdministratorMainPage extends StatelessWidget {
  static const route = "/administrator_main";
  const AdministratorMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Administration main page"),
              const SizedBox(height: 10),
              DefaultButton(
                text: "Назад",
                onPressed: () {
                  Navigator.pop(context);
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
