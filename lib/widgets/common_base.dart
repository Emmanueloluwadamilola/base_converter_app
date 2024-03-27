import 'package:base_converter_app/constants.dart';
import 'package:base_converter_app/widgets/textfield_container.dart';
import 'package:flutter/material.dart';

class CommonBase extends StatefulWidget {
  const CommonBase(
      {super.key, required this.keyboard, required this.isFormatted});
  final TextInputType keyboard;
  final bool isFormatted;

  @override
  State<CommonBase> createState() => CommonBaseState();
}

GlobalKey<CommonBaseState> commonBaseKey = GlobalKey();

class CommonBaseState extends State<CommonBase> {
  TextEditingController base2Controller = TextEditingController();
  TextEditingController base8Controller = TextEditingController();
  TextEditingController base10Controller = TextEditingController();
  TextEditingController base16Controller = TextEditingController();

  void updateOtherTextFields(
      TextEditingController sourceController, String text, int sourceBase) {
    if (widget.isFormatted == true) {
      try {
        int inputValue = int.parse(text, radix: sourceBase);

        if (sourceController != base2Controller) {
          base2Controller.text = inputValue.toRadixString(2);
        }
        if (sourceController != base8Controller) {
          base8Controller.text = inputValue.toRadixString(8);
        }
        if (sourceController != base10Controller) {
          base10Controller.text = inputValue.toString();
        }
        if (sourceController != base16Controller) {
          base16Controller.text = inputValue.toRadixString(16).toUpperCase();
        }
      } catch (e) {
        // base2Controller.text = '';
        // base8Controller.text = '';
        // base10Controller.text = '';
        // base16Controller.text = '';
      }
    } else {
      try {
        //  int inputValue = int.parse(text, radix: sourceBase);

        if (sourceController != base2Controller) {
          base2Controller.text = 'N/A';
        }
        if (sourceController != base8Controller) {
          base8Controller.text = 'N/A';
        }
        if (sourceController != base10Controller) {
          base10Controller.text = 'N/A';
        }
        if (sourceController != base16Controller) {
          base16Controller.text = 'N/A';
        }
      } catch (e) {
        // base2Controller.text = '';
        // base8Controller.text = '';
        // base10Controller.text = '';
        // base16Controller.text = '';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldWidget(
              hintName: "BASE 2",
              baseName: "BIN",
              colour: kCommonBaseColour,
              base: 2,
              baseController: base2Controller,
              onChange: (value) =>
                  updateOtherTextFields(base2Controller, value, 2),
              formatter: widget.isFormatted ? '.?d{0-1}' : '0-9,A-Z,a-z',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kCommonBaseContainerSpacer,
            TextFieldWidget(
              hintName: "BASE 8",
              baseName: "OCT",
              colour: kCommonBaseColour,
              base: 8,
              baseController: base8Controller,
              onChange: (value) =>
                  updateOtherTextFields(base8Controller, value, 8),
              formatter: widget.isFormatted ? '.?d{0-7}' : '0-9,A-Z,a-z',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kCommonBaseContainerSpacer,
            TextFieldWidget(
              hintName: "BASE 10",
              baseName: "DEC",
              colour: kCommonBaseColour,
              base: 10,
              baseController: base10Controller,
              onChange: (value) =>
                  updateOtherTextFields(base10Controller, value, 10),
              formatter: widget.isFormatted ? '.?d{0-9}' : '0-9,A-Z,a-z',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kCommonBaseContainerSpacer,
            TextFieldWidget(
              hintName: "BASE 16",
              baseName: "HEX",
              colour: kCommonBaseColour,
              base: 16,
              baseController: base16Controller,
              onChange: (value) =>
                  updateOtherTextFields(base16Controller, value, 16),
              formatter:
                  widget.isFormatted ? '.?d{0-9,A-F,a-f}' : '0-9,A-Z,a-z',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
          ],
        ),
      ),
    );
  }
}
