import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray52 = fromHex('#f1f8ff');

  static Color gray51 = fromHex('#fff8f2');

  static Color bluegray50 = fromHex('#eff0f5');

  static Color gray54 = fromHex('#fafafa');

  static Color gray53 = fromHex('#f8f8f8');

  static Color blueA400 = fromHex('#2188ff');

  static Color gray55 = fromHex('#f7f7f9');

  static Color deepPurple500 = fromHex('#6f42c1');

  static Color gray50 = fromHex('#fafbfc');

  static Color green500 = fromHex('#35d058');

  static Color red50 = fromHex('#ffeef8');

  static Color black90044 = fromHex('#44000000');

  static Color black900 = fromHex('#000000');

  static Color black901 = fromHex('#050505');

  static Color deepOrange400 = fromHex('#fc8533');

  static Color gray70011 = fromHex('#11555555');

  static Color gray501 = fromHex('#9195a1');

  static Color tealA700 = fromHex('#00b4ab');

  static Color gray700 = fromHex('#666666');

  static Color gray202 = fromHex('#eeeeee');

  static Color gray500 = fromHex('#a2a2a2');

  static Color blue700 = fromHex('#0266d6');

  static Color blue800 = fromHex('#0c64c6');

  static Color amber500 = fromHex('#f9c511');

  static Color blue701 = fromHex('#2387bb');

  static Color gray800 = fromHex('#454647');

  static Color gray701 = fromHex('#5f5f5f');

  static Color gray801 = fromHex('#3d3d3f');

  static Color blue600 = fromHex('#1a73e8');

  static Color bluegray100 = fromHex('#ccced5');

  static Color gray200 = fromHex('#e8eaed');

  static Color gray101 = fromHex('#f4f0ff');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray201 = fromHex('#ececec');

  static Color gray100 = fromHex('#effff4');

  static Color bluegray900 = fromHex('#24292e');

  static Color bluegray800 = fromHex('#41434f');

  static Color bluegray701 = fromHex('#573d7e');

  static Color bluegray700 = fromHex('#515560');

  static Color bluegray401 = fromHex('#888888');

  static Color bluegray400 = fromHex('#74839d');

  static Color gray70021 = fromHex('#21555555');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo500 = fromHex('#3573a6');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
