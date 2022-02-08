import 'package:flutter/material.dart';

class Mytheme {
  static final primaryColor = Colors.blue.shade300;
  static final primary = Colors.blue;
  static final darkTheme = ThemeData(
    primaryColorDark: primaryColor,
    dividerColor: Colors.white,
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(primary: primaryColor),
  );

  static final lightTheme = ThemeData(
    primaryColorDark: primaryColor,
    dividerColor: Colors.black,
    colorScheme: ColorScheme.light(primary: primary),
    scaffoldBackgroundColor: Colors.white,
  );
}
