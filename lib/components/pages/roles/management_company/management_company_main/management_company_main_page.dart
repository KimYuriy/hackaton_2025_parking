import 'package:flutter/material.dart';
import 'package:parking_admin/components/default_components/buttons/default_button.dart';

class ManagementCompanyMainPage extends StatelessWidget {
  static const route = "/management_company_main";
  const ManagementCompanyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Management company main page"),
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
