import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#ED9728");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");
  // new colors
  static Color homebackground = Color.fromRGBO(197, 193, 193, 0.6);
  static Color loginbackground = HexColor.fromHex("#CCFFFFFF");
  static Color loginbtn = HexColor.fromHex("8cffffff"); 
  static Color signinbackground = HexColor.fromHex("#9F9F9F");
  static Color loginbtnborder = HexColor.fromHex("#C5C1C1");
  static Color notificationsBackground = HexColor.fromHex("#FFB9A4");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34"); // red color
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}