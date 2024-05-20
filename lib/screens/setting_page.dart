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
      required this.theme,
      required this.decimalPlace,
      required this.updateDecimalPlaces});
  final Function(TextInputType) updateKeyboardType;
  final Function(bool) updateTheme;
  final Function(bool) updateInputFormat;
  final Function(int) updateDecimalPlaces;
  late TextInputType keyboard;
  late bool inputFormat;
  late bool theme;
  late int decimalPlace;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  List<int> decimalPlacesList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

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
        padding: const EdgeInsets.only(top: 16, left: 10, right: 20),
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
                    child: Text(
                      'Show number keyboard always',
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
                    child: Text(
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
                    child: Text(
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
                  child: Text(
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
            Row(
              children: [
                const Text('Decimal Places'),
                const Spacer(),
                Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue)),
                  child: ListWheelScrollView(
                      controller: FixedExtentScrollController(
                          initialItem: widget.decimalPlace-1),
                      clipBehavior: Clip.antiAlias,
                      itemExtent: 55,
                      onSelectedItemChanged: (value) {
                        setState(() {
                          widget.decimalPlace = value + 1;
                          widget.updateDecimalPlaces(widget.decimalPlace);
                        });
                      },
                      children: List.generate(
                          decimalPlacesList.length,
                          (index) => Text(
                                '${decimalPlacesList[index]}',
                                style: const TextStyle(fontSize: 25),
                              ))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
