import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  const TextRow({
    super.key,
    required this.title,
    required this.content
  });

  final String title, content;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        children: [
          TextSpan(
            text: content,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
          )
        ]
      )
    );
  }
}