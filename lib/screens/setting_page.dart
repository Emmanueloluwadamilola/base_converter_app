import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingPage extends StatelessWidget {
   SettingPage({
    super.key,
    required this.updateKeyboardType,
    required this.updateTheme,
  });
  final Function(TextInputType) updateKeyboardType;
  final Function(bool) updateTheme;

  @override
  int selectedTypingValue = 1;
  int decimalPlaces = 1;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.blue),
      child: Scaffold(
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
                      value: TextInputType.number,
                      groupValue: TextInputType.text,
                      onChanged: (value) {
                        updateKeyboardType(TextInputType.number);
                      },
                      child: const Text(
                        'Show number keyboard when neccessary',
                        style: TextStyle(fontSize: 12),
                      )),
                  RadioMenuButton(
                      value: TextInputType.text,
                      groupValue: TextInputType.text,
                      onChanged: (value) {
                        updateKeyboardType(TextInputType.text);
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
                      selectedTypingValue = value!;
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
                        selectedTypingValue = value!;
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
                    value: false,
                    groupValue: true,
                    onChanged: (value) {
                      updateTheme(false);
                    },
                    child: const Text(
                      'Light',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  RadioMenuButton(
                      value: true,
                      groupValue: true,
                      onChanged: (value) {
                        updateTheme(true);
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
      ),
    );
  }
}
