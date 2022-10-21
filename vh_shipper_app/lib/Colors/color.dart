import 'package:flutter/material.dart';

import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

const Color accent = Color.fromARGB(255, 255, 193, 7);
const Color black = Color(0xff000000);
const kAccentColorButton = Color.fromARGB(255, 3, 82, 151);
