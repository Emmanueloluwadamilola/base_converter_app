import 'package:base_converter_app/constants.dart';
import 'package:base_converter_app/widgets/textfield_container.dart';
import 'package:flutter/material.dart';

class AllBases extends StatefulWidget {
  const AllBases({
    super.key,
    required this.keyboard,
    required this.isFormatted, required this.decimalPlaces,
  });
  final TextInputType keyboard;
  final bool isFormatted;
  final int decimalPlaces;

  @override
  State<AllBases> createState() => AllBasesState();
}

GlobalKey<AllBasesState> allBaseKey = GlobalKey();

class AllBasesState extends State<AllBases> {
  TextEditingController base2Controller = TextEditingController();
  TextEditingController base3Controller = TextEditingController();
  TextEditingController base4Controller = TextEditingController();
  TextEditingController base5Controller = TextEditingController();
  TextEditingController base6Controller = TextEditingController();
  TextEditingController base7Controller = TextEditingController();
  TextEditingController base8Controller = TextEditingController();
  TextEditingController base9Controller = TextEditingController();
  TextEditingController base10Controller = TextEditingController();
  TextEditingController base11Controller = TextEditingController();
  TextEditingController base12Controller = TextEditingController();
  TextEditingController base13Controller = TextEditingController();
  TextEditingController base14Controller = TextEditingController();
  TextEditingController base15Controller = TextEditingController();
  TextEditingController base16Controller = TextEditingController();
  TextEditingController base17Controller = TextEditingController();
  TextEditingController base18Controller = TextEditingController();
  TextEditingController base19Controller = TextEditingController();
  TextEditingController base20Controller = TextEditingController();
  TextEditingController base21Controller = TextEditingController();
  TextEditingController base22Controller = TextEditingController();
  TextEditingController base23Controller = TextEditingController();
  TextEditingController base24Controller = TextEditingController();
  TextEditingController base25Controller = TextEditingController();
  TextEditingController base26Controller = TextEditingController();
  TextEditingController base27Controller = TextEditingController();
  TextEditingController base28Controller = TextEditingController();
  TextEditingController base29Controller = TextEditingController();
  TextEditingController base30Controller = TextEditingController();

  void updateOtherTextFields(
      TextEditingController sourceController, String text, int sourceBase) {
    List<String> parts = text.split('.');
    int inputValue = int.parse(parts[0], radix: sourceBase);
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

        if (fractionalConverted.length >= widget.decimalPlaces) {
          fractionalConverted =
              fractionalConverted.substring(0, widget.decimalPlaces);
        } else {
         return fractionalConverted;
        }
      }
    }

    getResult() {
      if (sourceController != base2Controller) {
        int resultBase = 2;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base2Controller.text = intValueConverted +
            (fractionalConverted.isNotEmpty ? '.$fractionalConverted' : '');
      }
      if (sourceController != base3Controller) {
        int resultBase = 3;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base3Controller.text = intValueConverted +
            (fractionalConverted.isNotEmpty ? '.$fractionalConverted' : '');
      }
      if (sourceController != base4Controller) {
        int resultBase = 4;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base4Controller.text = intValueConverted +
            (fractionalConverted.isNotEmpty ? '.$fractionalConverted' : '');
      }
      if (sourceController != base5Controller) {
        int resultBase = 5;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base5Controller.text = intValueConverted +
            (fractionalConverted.isNotEmpty ? '.$fractionalConverted' : '');
      }
      if (sourceController != base6Controller) {
        int resultBase = 6;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base6Controller.text = intValueConverted +
            (fractionalConverted.isNotEmpty ? '.$fractionalConverted' : '');
      }
      if (sourceController != base7Controller) {
        int resultBase = 7;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base7Controller.text = intValueConverted +
            (fractionalConverted.isNotEmpty ? '.$fractionalConverted' : '');
      }
      if (sourceController != base8Controller) {
        int resultBase = 8;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base8Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base9Controller) {
        int resultBase = 9;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base9Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base10Controller) {
        int resultBase = 10;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base10Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base11Controller) {
        int resultBase = 11;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base11Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base12Controller) {
        int resultBase = 12;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base12Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base13Controller) {
        int resultBase = 13;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base13Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base14Controller) {
        int resultBase = 14;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base14Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base15Controller) {
        int resultBase = 15;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base15Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base16Controller) {
        int resultBase = 16;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base16Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base17Controller) {
        int resultBase = 17;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base17Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base18Controller) {
        int resultBase = 18;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base18Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base19Controller) {
        int resultBase = 19;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base19Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base20Controller) {
        int resultBase = 20;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base20Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base21Controller) {
        int resultBase = 21;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base21Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base22Controller) {
        int resultBase = 22;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base22Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base23Controller) {
        int resultBase = 23;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base23Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base24Controller) {
        int resultBase = 24;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base24Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base25Controller) {
        int resultBase = 25;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base25Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base26Controller) {
        int resultBase = 26;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base26Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base27Controller) {
        int resultBase = 27;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base27Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base28Controller) {
        int resultBase = 28;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base28Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base29Controller) {
        int resultBase = 29;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base29Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
      if (sourceController != base30Controller) {
        int resultBase = 30;
        intValueConverted = inputValue.toRadixString(resultBase);
        getConversion(resultBase);
        base30Controller.text = intValueConverted.toUpperCase() +
            (fractionalConverted.isNotEmpty
                ? '.$fractionalConverted'.toUpperCase()
                : '');
      }
    }
    // ignore: empty_catches

    if (widget.isFormatted == true) {
      try {
        getResult();
      } catch (e) {}
    } else {
      try {
        getResult();
      } catch (e) {
        if (sourceController != base2Controller) {
          base2Controller.text = 'N/A';
        }
        if (sourceController != base3Controller) {
          base3Controller.text = 'N/A';
        }
        if (sourceController != base4Controller) {
          base4Controller.text = 'N/A';
        }
        if (sourceController != base5Controller) {
          base5Controller.text = 'N/A';
        }
        if (sourceController != base6Controller) {
          base6Controller.text = 'N/A';
        }
        if (sourceController != base7Controller) {
          base7Controller.text = 'N/A';
        }
        if (sourceController != base8Controller) {
          base8Controller.text = 'N/A';
        }
        if (sourceController != base9Controller) {
          base9Controller.text = 'N/A';
        }
        if (sourceController != base10Controller) {
          base10Controller.text = 'N/A';
        }
        if (sourceController != base11Controller) {
          base11Controller.text = 'N/A';
        }
        if (sourceController != base12Controller) {
          base12Controller.text = 'N/A';
        }
        if (sourceController != base13Controller) {
          base13Controller.text = 'N/A';
        }
        if (sourceController != base14Controller) {
          base14Controller.text = 'N/A';
        }
        if (sourceController != base15Controller) {
          base15Controller.text = 'N/A';
        }
        if (sourceController != base16Controller) {
          base16Controller.text = 'N/A';
        }
        if (sourceController != base17Controller) {
          base17Controller.text = 'N/A';
        }
        if (sourceController != base18Controller) {
          base18Controller.text = 'N/A';
        }
        if (sourceController != base19Controller) {
          base19Controller.text = 'N/A';
        }
        if (sourceController != base20Controller) {
          base20Controller.text = 'N/A';
        }
        if (sourceController != base21Controller) {
          base21Controller.text = 'N/A';
        }
        if (sourceController != base22Controller) {
          base22Controller.text = 'N/A';
        }
        if (sourceController != base23Controller) {
          base23Controller.text = 'N/A';
        }
        if (sourceController != base24Controller) {
          base24Controller.text = 'N/A';
        }
        if (sourceController != base25Controller) {
          base25Controller.text = 'N/A';
        }
        if (sourceController != base26Controller) {
          base26Controller.text = 'N/A';
        }
        if (sourceController != base27Controller) {
          base27Controller.text = 'N/A';
        }
        if (sourceController != base28Controller) {
          base28Controller.text = 'N/A';
        }
        if (sourceController != base29Controller) {
          base29Controller.text = 'N/A';
        }
        if (sourceController != base30Controller) {
          base30Controller.text = 'N/A';
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
              hintName: "",
              baseName: "Base 2",
              colour: kAllBaseColour,
              base: 2,
              baseController: base2Controller,
              onChange: (value) =>
                  updateOtherTextFields(base2Controller, value, 2),
              formatter: '.?d{0-1}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 3",
              colour: kAllBaseColour,
              base: 3,
              baseController: base3Controller,
              onChange: (value) =>
                  updateOtherTextFields(base3Controller, value, 3),
              formatter: '.?d{0-2}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 4",
              colour: kAllBaseColour,
              base: 4,
              baseController: base4Controller,
              onChange: (value) =>
                  updateOtherTextFields(base4Controller, value, 4),
              formatter: '.?d{0-3}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 5",
              colour: kAllBaseColour,
              base: 5,
              baseController: base5Controller,
              onChange: (value) =>
                  updateOtherTextFields(base5Controller, value, 5),
              formatter: '.?d{0-4}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 6",
              colour: kAllBaseColour,
              base: 6,
              baseController: base6Controller,
              onChange: (value) =>
                  updateOtherTextFields(base6Controller, value, 6),
              formatter: '.?d{0-5}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 7",
              colour: kAllBaseColour,
              base: 7,
              baseController: base7Controller,
              onChange: (value) =>
                  updateOtherTextFields(base7Controller, value, 7),
              formatter: '.?d{0-6}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 8",
              colour: kAllBaseColour,
              base: 8,
              baseController: base8Controller,
              onChange: (value) =>
                  updateOtherTextFields(base8Controller, value, 8),
              formatter: '.?d{0-7}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 9",
              colour: kAllBaseColour,
              base: 9,
              baseController: base9Controller,
              onChange: (value) =>
                  updateOtherTextFields(base9Controller, value, 9),
              formatter: '.?d{0-8}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 10",
              colour: kAllBaseColour,
              base: 9,
              baseController: base10Controller,
              onChange: (value) =>
                  updateOtherTextFields(base10Controller, value, 10),
              formatter: '.?d{0-9}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 11",
              colour: kAllBaseColour,
              baseController: base11Controller,
              onChange: (value) =>
                  updateOtherTextFields(base11Controller, value, 11),
              formatter: '.?d{0-9,A,a}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
              base: 3,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 12",
              colour: kAllBaseColour,
              base: 3,
              baseController: base12Controller,
              onChange: (value) =>
                  updateOtherTextFields(base12Controller, value, 12),
              formatter: '.?d{0-9,A-B,a-b}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 13",
              colour: kAllBaseColour,
              base: 3,
              baseController: base13Controller,
              onChange: (value) =>
                  updateOtherTextFields(base13Controller, value, 13),
              formatter: '.?d{0-9,A-C,a-c}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 14",
              colour: kAllBaseColour,
              base: 3,
              baseController: base14Controller,
              onChange: (value) =>
                  updateOtherTextFields(base14Controller, value, 14),
              formatter: '.?d{0-9,A-D,a-d}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 15",
              colour: kAllBaseColour,
              base: 3,
              baseController: base15Controller,
              onChange: (value) =>
                  updateOtherTextFields(base15Controller, value, 15),
              formatter: '.?d{0-9,A-E,a-e}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 16",
              colour: kAllBaseColour,
              base: 3,
              baseController: base16Controller,
              onChange: (value) =>
                  updateOtherTextFields(base16Controller, value, 16),
              formatter: '.?d{0-9,A-F,a-f}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 17",
              colour: kAllBaseColour,
              base: 3,
              baseController: base17Controller,
              onChange: (value) =>
                  updateOtherTextFields(base17Controller, value, 17),
              formatter: '.?d{0-9,A-G,a-g}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 18",
              colour: kAllBaseColour,
              base: 3,
              baseController: base18Controller,
              onChange: (value) =>
                  updateOtherTextFields(base18Controller, value, 18),
              formatter: '.?d{0-9,A-H,a-h}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 19",
              colour: kAllBaseColour,
              base: 3,
              baseController: base19Controller,
              onChange: (value) =>
                  updateOtherTextFields(base19Controller, value, 19),
              formatter: '.?d{0-9,A-I,a-i}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 20",
              colour: kAllBaseColour,
              base: 3,
              baseController: base20Controller,
              onChange: (value) =>
                  updateOtherTextFields(base20Controller, value, 20),
              formatter: '.?d{0-9,A-J,a-j}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 21",
              colour: kAllBaseColour,
              base: 3,
              baseController: base21Controller,
              onChange: (value) =>
                  updateOtherTextFields(base21Controller, value, 21),
              formatter: '.?d{0-9,A-K,a-k}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 22",
              colour: kAllBaseColour,
              base: 3,
              baseController: base22Controller,
              onChange: (value) =>
                  updateOtherTextFields(base22Controller, value, 22),
              formatter: '.?d{0-9,A-L,a-l}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 23",
              colour: kAllBaseColour,
              base: 3,
              baseController: base23Controller,
              onChange: (value) =>
                  updateOtherTextFields(base23Controller, value, 23),
              formatter: '.?d{0-9,A-M,a-m}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 24",
              colour: kAllBaseColour,
              base: 3,
              baseController: base24Controller,
              onChange: (value) =>
                  updateOtherTextFields(base24Controller, value, 24),
              formatter: '.?d{0-9,A-N,a-n}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 25",
              colour: kAllBaseColour,
              base: 3,
              baseController: base25Controller,
              onChange: (value) =>
                  updateOtherTextFields(base25Controller, value, 25),
              formatter: '.?d{0-9,A-O,a-o}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 26",
              colour: kAllBaseColour,
              base: 3,
              baseController: base26Controller,
              onChange: (value) =>
                  updateOtherTextFields(base26Controller, value, 26),
              formatter: '.?d{0-9,A-P,a-p}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 27",
              colour: kAllBaseColour,
              base: 3,
              baseController: base27Controller,
              onChange: (value) =>
                  updateOtherTextFields(base27Controller, value, 27),
              formatter: '.?d{0-9,A-Q,a-q}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 28",
              colour: kAllBaseColour,
              base: 3,
              baseController: base28Controller,
              onChange: (value) =>
                  updateOtherTextFields(base28Controller, value, 28),
              formatter: '.?d{0-9,A-R,a-r}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 29",
              colour: kAllBaseColour,
              base: 3,
              baseController: base29Controller,
              onChange: (value) =>
                  updateOtherTextFields(base29Controller, value, 29),
              formatter: '.?d{0-9,A-S,a-s}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            kBaseContainerSpacer,
            TextFieldWidget(
              hintName: "",
              baseName: "Base 30",
              colour: kAllBaseColour,
              base: 3,
              baseController: base30Controller,
              onChange: (value) =>
                  updateOtherTextFields(base30Controller, value, 30),
              formatter: '.?d{0-9,A-T,a-t}',
              keyboard: widget.keyboard,
              isFormatted: widget.isFormatted,
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
