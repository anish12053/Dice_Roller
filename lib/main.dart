import 'package:dice_roller/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        Color.fromARGB(255, 24, 1, 64),
        Color.fromARGB(255, 69, 4, 181),
      ),
    ),
  ));
}
