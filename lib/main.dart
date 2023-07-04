import 'package:flutter/material.dart';

import 'package:first_app/components/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: const [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 68, 22, 133)
          ],
        ),
      ),
    ),
  );
}
