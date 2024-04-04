import 'package:base_converter_app/screens/home_page.dart';
import 'package:base_converter_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isThemeDark = true;

  void loadThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isThemeDark = prefs.getBool('isThemeDark') ?? true;
    });
  }

  void changeTheme(bool theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isThemeDark = theme;
      prefs.setBool('isThemeDark', theme);
    });
  }

  @override
  void initState() {
    super.initState();
    loadThemePreference();
  }

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base Converter',
      theme: isThemeDark ? lightTheme : darkTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(
        updateTheme: changeTheme,
        theme: isThemeDark,
      ),
    );
  }
}
