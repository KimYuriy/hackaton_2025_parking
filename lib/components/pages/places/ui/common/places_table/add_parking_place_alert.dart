import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_type_enum/place_type_enum.dart';

class AddParkingPlaceAlert extends StatelessWidget {
  AddParkingPlaceAlert({
    super.key,
    required this.onComplete
  });

  final spotNumberController = TextEditingController();

  PlaceType type = PlaceType.guest;

  final void Function(Map<String, dynamic>) onComplete;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Добавить новое парковочное место"),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: spotNumberController,
              decoration: const InputDecoration(labelText: "№ места"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Обязательное поле';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            DropdownButton(
              value: type,
              items: PlaceType.values.map((type) => DropdownMenuItem(
                value: type,
                child: Text(type.typeName),
              )).toList(),
              onChanged: (value) {
                type = value!;
              }
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Отмена')
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              onComplete({
                "spot_number": spotNumberController.value.text,
                "type": type.name,
                "status": "available",
                "x_coordinate": 0,
                "y_coordinate": 0
              });
              Navigator.pop(context);
            }
          },
          child: const Text('Сохранить')
        )
      ],
    );
  }
}