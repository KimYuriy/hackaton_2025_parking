import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ForRentParkingSpotModel extends Equatable {
  ForRentParkingSpotModel({
    required this.spotNumber,
    required this.id
  });

  final String spotNumber;
  final int id;

  @override
  List<Object?> get props => [
    spotNumber,
    id
  ];

  factory ForRentParkingSpotModel.fromJson(Map<String, dynamic> json) {
    return ForRentParkingSpotModel(
      spotNumber: json['spot_number'],
      id: json['id']
    );
  }
}