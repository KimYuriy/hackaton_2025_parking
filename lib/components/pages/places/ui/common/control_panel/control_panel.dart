import 'package:flutter/material.dart';

import 'free_places_text.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({
    super.key,
    required this.freeCount
  });

  final int freeCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FreePlacesText(freePlacesCount: freeCount)
      ],
    );
  }
}