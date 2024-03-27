import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingPage extends StatefulWidget {
  SettingPage(
      {super.key,
      required this.updateKeyboardType,
      required this.updateTheme,
      required this.inputFormat,
      required this.keyboard,
      required this.themeType,
      required this.updateInputFormat});
  final Function(TextInputType) updateKeyboardType;
  final Function(ThemeData) updateTheme;
  final Function(bool) updateInputFormat;
  late TextInputType keyboard;
  late bool inputFormat;
  late ThemeData themeType;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int selectedTypingValue = 1;
  int decimalPlaces = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 5, right: 5),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Keyboard',
                ),
                RadioMenuButton(
                    value: const TextInputType.numberWithOptions(decimal: true),
                    groupValue: widget.keyboard,
                    onChanged: (value) {
                      setState(() {
                        widget.keyboard = value!;
                        widget.updateKeyboardType(widget.keyboard);
                      });
                    },
                    child: const Text(
                      'Show number keyboard when neccessary',
                      style: TextStyle(fontSize: 12),
                    )),
                RadioMenuButton(
                    value: TextInputType.text,
                    groupValue: widget.keyboard,
                    onChanged: (value) {
                      setState(() {
                        widget.keyboard = value!;
                        widget.updateKeyboardType(widget.keyboard);
                      });
                    },
                    child: const Text(
                      'Never show number keyboard',
                      style: TextStyle(fontSize: 12),
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Typing'),
                RadioMenuButton(
                  value: true,
                  groupValue: widget.inputFormat,
                  onChanged: (value) {
                    setState(() {
                      widget.inputFormat = value!;
                      widget.updateInputFormat(widget.inputFormat);
                    });
                  },
                  child: const Text(
                    'Do not allow to type invalid numbers',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                RadioMenuButton(
                    value: false,
                    groupValue: widget.inputFormat,
                    onChanged: (value) {
                      setState(() {
                        widget.inputFormat = value!;
                        widget.updateInputFormat(widget.inputFormat);
                      });
                    },
                    child: const Text(
                      'Allow to type invalid numbers(N/A for result)',
                      style: TextStyle(fontSize: 12),
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Theme'),
                RadioMenuButton(
                  value: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.white,
            textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.black),
                bodyMedium: TextStyle(color: Colors.black),
                bodySmall: TextStyle(color: Colors.black))),
                  groupValue: widget.themeType,
                  onChanged: (value) {
                    setState(() {
                      widget.themeType = value!;
                      widget.updateTheme(widget.themeType);
                    });
                  },
                  child: const Text(
                    'Light',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                RadioMenuButton(
                    value: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.black,
            textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white),
                bodySmall: TextStyle(color: Colors.white))),
                    groupValue: widget.themeType,
                    onChanged: (value) {
                      setState(() {
                        widget.themeType = value!;
                        widget.updateTheme(widget.themeType);
                      });
                    },
                    child: const Text(
                      'Dark',
                      style: TextStyle(fontSize: 12),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
