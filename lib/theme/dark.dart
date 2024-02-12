import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[600],
    // iconTheme: IconThemeData(
    //   color: Colors.grey
    // ),
    //actionsIconTheme: ActionIconTheme(data: null, child: null,)
  ),
  brightness: Brightness.dark, 
  colorScheme: ColorScheme.dark(
    background: Colors.black, 
    // primary: Colors.grey[900]!,
    // secondary: Colors.grey[800]!,
  )
);