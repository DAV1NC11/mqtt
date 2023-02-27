import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color whiteA700B2 = fromHex('#b2ffffff');

  static Color gray500 = fromHex('#a6a6a6');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray50001 = fromHex('#a5a5a5');

  static Color gray900 = fromHex('#0e0b1c');

  static Color gray90001 = fromHex('#1d182e');

  static Color blueGray800 = fromHex('#37324f');

  static Color blueGray900 = fromHex('#322c48');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
