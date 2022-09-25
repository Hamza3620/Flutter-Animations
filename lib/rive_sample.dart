import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SimpleAnimation extends StatelessWidget {
  const SimpleAnimation({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: RiveAnimation.network(
          'https://cdn.rive.app/animations/vehicles.riv',
        ),
      ),
    );
  }
}
