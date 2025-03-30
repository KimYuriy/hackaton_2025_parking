import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_admin/components/pages/places/bloc/places_table/places_table_bloc.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/parking_place_model.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/place_type_enum/place_type_enum.dart';
import 'package:parking_admin/components/pages/places/model/parking_place_model/user/user.dart';
import 'package:parking_admin/components/pages/places/ui/common/places_table/edit_row_alert/bloc/edit_row_bloc.dart';

class EditRowAlert extends StatelessWidget {
  EditRowAlert({
    super.key,
    required this.data
  });

  final ParkingPlaceModel data;

  final _formKey = GlobalKey<FormState>();

  PlaceType? _placeType;

  User? user;

  @override
  Widget build(BuildContext context) {
    final placeNumberController = TextEditingController(text: data.placeNumber);
    _placeType = data.placeType;
    user = User(
      id: data.id,
      username: data.fullName
    );

    return AlertDialog(
      title: Text('Редактировать место ${data.placeNumber}'),
      content: Form(
        key: _formKey,
        child: BlocBuilder<EditRowBloc, EditRowStates>(
          builder: (context, state) => state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            errorLoading: () => const Center(child: Text('Ошибка')),
            foundUsers: (users, carsOfUser) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Номер парковочного места"
                  ),
                  controller: placeNumberController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Обязательное поле';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                DropdownButton(
                  value: data.placeType,
                  items: PlaceType.values.map((type) => DropdownMenuItem(
                    value: type,
                    child: Text(type.typeName),
                  )).toList(),
                  onChanged: (value) {
                    _placeType = value;
                  }
                ),
                const SizedBox(height: 10),
                //TODO: Разобраться с исключением
                // if (users.isNotEmpty)
                  // DropdownButton(
                  //   value: user,
                  //   items: users.map((auser) => DropdownMenuItem(
                  //     value: auser,
                  //     child: Text(auser.username),
                  //   )).toList(),
                  //   onChanged: (value) {
                  //     user = value!;
                  //   }
                  // )
                //TODO: сделать выбор машин, привязанных к выбранному ранее пользовалетю
              ],
            ),
          )
        )
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'Отмена',
            style: TextStyle(color: Colors.red),
          )
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              context.read<EditRowBloc>().add(EditRowEvents.updateData(data: data.copyWith(
                placeNumber: placeNumberController.value.text,
                placeType: _placeType!
              )));
              context.read<PlacesTableBloc>().add(const PlacesTableEvents.loadAll());
              Navigator.pop(context);
            }
          },
          child: const Text('Сохранить')
        )
      ],
    );
  }
}