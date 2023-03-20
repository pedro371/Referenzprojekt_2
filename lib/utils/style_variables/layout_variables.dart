import 'package:flutter/material.dart';

class LayoutVariables {
  static basicElevatedContainer(Color backgroundColor) => BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(12)),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        spreadRadius: 1,
        blurRadius: 3,
        offset: Offset(-1, 2), // changes position of shadow
      ),
    ],
    color: backgroundColor,
  );
}
