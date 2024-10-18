import 'package:flutter/material.dart';

import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: GradientContainer(
        Color.fromARGB(255, 0, 0, 0),
        Color.fromRGBO(25, 4, 4, 0),
      ),
    ),
  );
}
