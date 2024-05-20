import 'package:base_converter_app/constants.dart';
import 'package:base_converter_app/widgets/textfield_container.dart';
import 'package:flutter/material.dart';

class CommonBase extends StatefulWidget {
  const CommonBase(
      {super.key,
      required this.keyboard,
      required this.isFormatted,
      required this.decimalPlaces});
  final TextInputType keyboard;
  final bool isFormatted;
  final int decimalPlaces;

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
    List<String> parts = text.split('.');
    int intValue = int.parse(parts[0], radix: sourceBase);
    double fractionalValue =
        parts.length > 1 ? double.parse('0.${parts[1]}') : 0;
    //int? resultBase;
    String fractionalConverted = '';
    String intValueConverted = '';
    //int getResultBase(){}

    getConversion(int resultBase) {
      if (fractionalValue != 0) {
        double fractionalDecimal = fractionalValue;
        List<String> fractionalDigits = [];
        for (int i = 0; i < 20; i++) {
          fractionalDecimal *= resultBase;
          int digit = fractionalDecimal.truncate();
          fractionalDigits.add(digit.toRadixString(resultBase));
          fractionalDecimal -= digit;
          if (fractionalDecimal == 0) break;
        }
        fractionalConverted = fractionalDigits.join('');
        //double decimal = double.parse(fractionalConverted);
        if (fractionalConverted.length >= widget.decimalPlaces) {
          fractionalConverted =
              fractionalConverted.substring(0, widget.decimalPlaces);
        } else {
         return fractionalConverted;
        }
      }
    }

    outPutConversion() {
      if (sourceController != base2Controller) {
        int resultBase = 2;
        intValueConverted = intValue.toRadixString(resultBase);
        getConversion(resultBase);
        base2Controller.text = (intValueConverted +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'
                : ''));
      }
      if (sourceController != base8Controller) {
        int resultBase = 8;
        intValueConverted = intValue.toRadixString(resultBase);
        getConversion(resultBase);
        base8Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base10Controller) {
        int resultBase = 10;
        intValueConverted = intValue.toString();
        getConversion(resultBase);
        base10Controller.text = (intValueConverted +
                (fractionalConverted.isNotEmpty ? '.$fractionalConverted' : ''))
            .toString();
      }
      if (sourceController != base16Controller) {
        int resultBase = 16;
        intValueConverted = intValue.toRadixString(resultBase);
        getConversion(resultBase);
        base16Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
    }

    if (widget.isFormatted == true) {
      try {
        outPutConversion();
      } catch (e) {}
    } else {
      try {
        outPutConversion();
      } catch (e) {
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
