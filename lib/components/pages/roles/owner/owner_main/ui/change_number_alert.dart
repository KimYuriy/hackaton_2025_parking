import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/bloc/owner_bloc.dart';
import 'package:parking_admin/components/pages/roles/owner/owner_main/model/user_car/user_car.dart';
import 'package:parking_admin/services/local_data/auth_service.dart';

class ChangeNumberAlert extends StatelessWidget {
  ChangeNumberAlert({
    super.key,
    required this.data
  });

  final UserCar data;

  final _formKey = GlobalKey<FormState>();

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = data.number;

    return AlertDialog(
      title: const Text('Изменить номер машины'),
      content: Form(
        key: _formKey,
        child: TextFormField(
          decoration: const InputDecoration(labelText: "Введите номер машины"),
          controller: controller,
        )
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Отмена')
        ),
        TextButton(
          onPressed: () async {
            if (_formKey.currentState!.validate() && data.carId != null) {
              context.read<OwnerBloc>().add(OwnerEvents.updateCarNumber(
                userId: AuthService.userId,
                carId: data.carId!,
                newNumber: controller.value.text
              ));
            }
          },
          child: const Text('Сохранить'),
        )
      ],
    );
  }
}