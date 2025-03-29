import 'package:flutter/material.dart';

enum PlaceStatus {
  available, occupied, blocked
}

extension PlaceStatusX on PlaceStatus {
  Color? get statusColor {
    switch (this) {
      case PlaceStatus.available:
        return Colors.white;
      case PlaceStatus.occupied:
        return Colors.yellow[400];
      case PlaceStatus.blocked:
        return Colors.red[400];
    }
  }
}