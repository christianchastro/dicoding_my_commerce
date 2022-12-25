import 'package:flutter/material.dart';

abstract class MyTextStyle {
  static TextStyle title({Color? color}) => _myDefault(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );
  static TextStyle subTitle({Color? color}) => _myDefault(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
  static TextStyle regular({Color? color}) => _myDefault(color: color);

  static TextStyle _myDefault(
          {Color? color = Colors.black,
          double fontSize = 12,
          FontWeight? fontWeight}) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: "Roboto",
        fontWeight: fontWeight,
        height: 1.2,
      );
}
