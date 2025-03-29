import 'package:flutter/material.dart';

class FreePlacesText extends StatelessWidget {
  const FreePlacesText({
    super.key,
    required this.freePlacesCount
  });

  final int freePlacesCount;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Свободных мест${freePlacesCount > 0 ? ': $freePlacesCount' : ' нет'}',
      style: TextStyle(
        color: freePlacesCount <= 0 ? Colors.red : Colors.green
      ),
    );
  }
}