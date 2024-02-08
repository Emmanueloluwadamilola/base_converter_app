import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.hintName,
      required this.baseName,
      required this.colour,
      required this.base,
      required this.baseController,
      required this.onChange,
      required this.formatter, required this.keyboard});
  final String hintName;
  final String baseName;
  final Color colour;
  final int base;
  final TextEditingController? baseController;
  final Function onChange;
  final String formatter;
  final TextInputType keyboard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: colour,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 17.0,
                  bottom: 17,
                ),
                child: Text(
                  baseName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: TextField(
              onChanged: (value) {
                // ignore: void_checks
                return onChange(value);
              },
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[${formatter}]'))
              ],
              controller: baseController,
              style: const TextStyle(),
              textAlign: TextAlign.center,
              keyboardType: keyboard,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  borderSide: BorderSide(color: colour, width: 2),
                ),
                isDense: true,
                contentPadding: const EdgeInsets.only(top: 14, bottom: 14),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  borderSide: BorderSide(color: colour, width: 2),
                ),
                hintText: hintName,
                hintStyle: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
