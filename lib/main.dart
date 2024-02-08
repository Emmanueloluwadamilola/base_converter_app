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
    return MaterialApp(
      title: 'Base Converter',
      theme: ThemeData(
       radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all<Color>(Colors.blue)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyWidget(),
    );
  }
}
