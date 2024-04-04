import 'package:flutter/material.dart';

Color buttonColor(Set<MaterialState> states) {
  return Colors.blue;
}

final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    dialogBackgroundColor: Colors.white,
    popupMenuTheme: PopupMenuThemeData(color: Colors.white),
    textTheme: const TextTheme(
        bodySmall: TextStyle(color: Colors.black, fontSize: 14),
        titleMedium: TextStyle(color: Colors.black),
        titleLarge: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black)),
    backgroundColor: Colors.white,
    radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith(buttonColor)));

final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    dialogBackgroundColor: Colors.black,
    popupMenuTheme: PopupMenuThemeData(color: Colors.black),
    textTheme: const TextTheme(
      titleMedium: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white, fontSize: 14),
      bodyMedium: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.blue,
    radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith(buttonColor)));
