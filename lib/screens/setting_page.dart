import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingPage extends StatefulWidget {
  SettingPage(
      {super.key,
      required this.updateKeyboardType,
      required this.updateTheme,
      required this.inputFormat,
      required this.keyboard,
      required this.updateInputFormat,
      required this.theme});
  final Function(TextInputType) updateKeyboardType;
  final Function(bool) updateTheme;
  final Function(bool) updateInputFormat;
  late TextInputType keyboard;
  late bool inputFormat;
  late bool theme;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int selectedTypingValue = 1;
  int decimalPlaces = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                    groupValue: widget.keyboard,
                    onChanged: (value) {
                      setState(() {
                        widget.keyboard = value!;
                        widget.updateKeyboardType(widget.keyboard);
                      });
                    },
                    child:  Text(
                      'Show number keyboard when neccessary',
                      style: Theme.of(context).textTheme.bodySmall,
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
                    child:  Text(
                      'Never show number keyboard',
                      style: Theme.of(context).textTheme.bodySmall,
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
                  child: Text(
                    'Do not allow to type invalid numbers',
                    style: Theme.of(context).textTheme.bodySmall,
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
                    child:  Text(
                      'Allow to type invalid numbers(N/A for result)',
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Theme'),
                RadioMenuButton(
                  value: true,
                  groupValue: widget.theme,
                  onChanged: (value) {
                    setState(() {
                      widget.theme = value!;
                      widget.updateTheme(widget.theme);
                    });
                  },
                  child:  Text(
                    'Light',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                RadioMenuButton(
                    value: false,
                    groupValue: widget.theme,
                    onChanged: (value) {
                      setState(() {
                        widget.theme = value!;
                        widget.updateTheme(widget.theme);
                      });
                    },
                    child: Text(
                      'Dark',
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
