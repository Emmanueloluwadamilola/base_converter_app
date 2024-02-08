import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
    SettingPage({super.key, required this.keyboardValue});
  int keyboardValue;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // int selectedKeyboardValue = 1;
  int selectedTypingValue = 1;
  int selectedTheme = 1;
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
                    value: 1,
                    groupValue: widget.keyboardValue,
                    onChanged: (value) {
                      setState(() {
                        widget.keyboardValue = value!;
                      });
                    },
                    child: const Text(
                      'Show number keyboard when neccessary',
                      style: TextStyle(fontSize: 12),
                    )),
                RadioMenuButton(
                    value: 2,
                    groupValue: widget.keyboardValue,
                    onChanged: (value) {
                      setState(() {
                        widget.keyboardValue = value!;
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
                  value: 1,
                  groupValue: selectedTypingValue,
                  onChanged: (value) {
                    setState(() {
                      selectedTypingValue = value!;
                    });
                  },
                  child: const Text(
                    'Do not allow to type invalid numbers',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                RadioMenuButton(
                    value: 2,
                    groupValue: selectedTypingValue,
                    onChanged: (value) {
                      setState(() {
                        selectedTypingValue = value!;
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
                  value: 1,
                  groupValue: selectedTheme,
                  onChanged: (value) {
                    setState(() {
                      selectedTheme = value!;
                    });
                  },
                  child: const Text(
                    'Light',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                RadioMenuButton(
                    value: 2,
                    groupValue: selectedTheme,
                    onChanged: (value) {
                      setState(() {
                        selectedTheme = value!;
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
