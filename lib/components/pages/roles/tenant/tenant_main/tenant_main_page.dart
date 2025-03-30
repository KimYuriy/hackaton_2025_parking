import 'package:flutter/material.dart';
import 'package:parking_admin/components/default_components/buttons/default_button.dart';
import 'package:parking_admin/components/pages/roles/tenant/tenant_rent_place/ui/rent_place_page.dart';

class TenantMainPage extends StatelessWidget {
  static const route = "/tenant_main";
  const TenantMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Owner main page"),
              const SizedBox(height: 10,),
              DefaultButton(
                text: "Арендовать место",
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RentPlacePage.route
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
