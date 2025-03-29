import 'package:flutter/material.dart';

class LoadingIndicatorDialog extends StatelessWidget {
  const LoadingIndicatorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(color: Colors.deepPurple),
                ],
              )
          ),
        ),
      ),
    );
  }
}