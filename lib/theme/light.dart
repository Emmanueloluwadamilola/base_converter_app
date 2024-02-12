import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light, 
  colorScheme: ColorScheme.light(
    background: Colors.white, 
    // primary: Colors.grey[300]!,
    // secondary: Colors.grey[200]!,
  ), 
  appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
);
