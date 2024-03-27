import 'package:base_converter_app/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color buttonColor(Set<MaterialState> states) {
      return Colors.blue;
    }

    return MaterialApp(
      title: 'Base Converter',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith(buttonColor),
        ),
      ),
      debugShowCheckedModeBanner: false, 
      home: const HomePage(),
    );
  }
}
