import 'package:flutter/material.dart';

import './linear_gradient.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            const Color.fromARGB(255, 10, 45, 18),
            const Color.fromARGB(255, 85, 20, 20)),
      ),
    ),
  );
}
