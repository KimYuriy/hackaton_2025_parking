import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:parking_admin/components/pages/roles/tenant/tenant_rent_place/model/for_rent_parking_spot_model.dart';
import 'package:parking_admin/main.dart';
import 'package:parking_admin/services/network/tenant/tenant_api.dart';

class RentPlacePage extends StatefulWidget {
  static const route = "/rent_place";
  const RentPlacePage({super.key});

  @override
  State<RentPlacePage> createState() => _RentPlacePageState();
}

class _RentPlacePageState extends State<RentPlacePage> {
  final TenantApi _tenantApi = TenantApi();
  final _formKey = GlobalKey<FormState>();

  List<ForRentParkingSpotModel> _freeSpots = [];
  ForRentParkingSpotModel? _selectedSpot;
  String? _carNumber;
  DateTime? _expirationDate;

  @override
  void initState() {
    super.initState();
    _loadFreePlaces();
  }

  Future<void> _loadFreePlaces() async {
    try {
      final spots = await _tenantApi.getFreePlaces();
      setState(() {
        _freeSpots = spots;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ошибка загрузки мест: $e')),
      );
    }
  }

  void _submitForm() async {
    try {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        bool answer = await _tenantApi.rentPlace(
            _selectedSpot!.id,
            _carNumber!,
            _expirationDate!);
        if (answer) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Форма отправлена')),
          );
        }
      }
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString()), backgroundColor: Colors.red),
      );
    }
  }

  Future<void> _pickDate() async {
    DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
    );
    if (picked != null) {
      final TimeOfDay? timePicked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (timePicked != null) {
        setState(() {
          _expirationDate = DateTime(
              picked.year, picked.month, picked.day, timePicked.hour, timePicked.minute);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/underground_parking.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownButtonFormField<ForRentParkingSpotModel>(
                        decoration: const InputDecoration(labelText: 'Свободные места'),
                        items: _freeSpots.map((spot) {
                          return DropdownMenuItem(
                            value: spot,
                            child: Text('Место ${spot.spotNumber}'),
                          );
                        }).toList(),
                        onChanged: (value) => setState(() => _selectedSpot = value),
                        validator: (value) => value == null ? 'Выберите парковочное место' : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'Номер машины'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Введите номер машины';
                          } else if (value.length < 4) {
                            return 'Слишком короткий номер';
                          }
                          return null;
                        },
                        onSaved: (value) => _carNumber = value,
                      ),
                      const SizedBox(height: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: _pickDate,
                            child: const Text('Выбрать дату истечения'),
                          ),
                          const SizedBox(width: 10),
                          Text(_expirationDate != null
                              ? DateFormat('dd.MM.yyyy HH:mm').format(_expirationDate!)
                              : 'Не выбрано',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _submitForm,
                        child: const Text('Арендовать'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
