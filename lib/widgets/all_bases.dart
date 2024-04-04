import 'package:base_converter_app/constants.dart';
import 'package:base_converter_app/widgets/textfield_container.dart';
import 'package:flutter/material.dart';

class AllBases extends StatefulWidget {
  const AllBases({
    super.key,
    required this.keyboard,
    required this.isFormatted,
  });
  final TextInputType keyboard;
  final bool isFormatted;

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
    try {
      int inputValue = int.parse(text, radix: sourceBase);

      if (sourceController != base2Controller) {
        base2Controller.text = inputValue.toRadixString(2);
      }
      if (sourceController != base3Controller) {
        base3Controller.text = inputValue.toRadixString(3);
      }
      if (sourceController != base4Controller) {
        base4Controller.text = inputValue.toRadixString(4);
      }
      if (sourceController != base5Controller) {
        base5Controller.text = inputValue.toRadixString(5);
      }
      if (sourceController != base6Controller) {
        base6Controller.text = inputValue.toRadixString(6);
      }
      if (sourceController != base7Controller) {
        base7Controller.text = inputValue.toRadixString(7);
      }
      if (sourceController != base8Controller) {
        base8Controller.text = inputValue.toRadixString(8);
      }
      if (sourceController != base9Controller) {
        base9Controller.text = inputValue.toRadixString(9);
      }
      if (sourceController != base10Controller) {
        base10Controller.text = inputValue.toString();
      }
      if (sourceController != base11Controller) {
        base11Controller.text = inputValue.toRadixString(11).toUpperCase();
      }
      if (sourceController != base12Controller) {
        base12Controller.text = inputValue.toRadixString(12).toUpperCase();
      }
      if (sourceController != base13Controller) {
        base13Controller.text = inputValue.toRadixString(13).toUpperCase();
      }
      if (sourceController != base14Controller) {
        base14Controller.text = inputValue.toRadixString(14).toUpperCase();
      }
      if (sourceController != base15Controller) {
        base15Controller.text = inputValue.toRadixString(15).toUpperCase();
      }
      if (sourceController != base16Controller) {
        base16Controller.text = inputValue.toRadixString(16).toUpperCase();
      }
      if (sourceController != base17Controller) {
        base17Controller.text = inputValue.toRadixString(17).toUpperCase();
      }
      if (sourceController != base18Controller) {
        base18Controller.text = inputValue.toRadixString(18).toUpperCase();
      }
      if (sourceController != base19Controller) {
        base19Controller.text = inputValue.toRadixString(19).toUpperCase();
      }
      if (sourceController != base20Controller) {
        base20Controller.text = inputValue.toRadixString(20).toUpperCase();
      }
      if (sourceController != base21Controller) {
        base21Controller.text = inputValue.toRadixString(21).toUpperCase();
      }
      if (sourceController != base22Controller) {
        base22Controller.text = inputValue.toRadixString(22).toUpperCase();
      }
      if (sourceController != base23Controller) {
        base23Controller.text = inputValue.toRadixString(23).toUpperCase();
      }
      if (sourceController != base24Controller) {
        base24Controller.text = inputValue.toRadixString(24).toUpperCase();
      }
      if (sourceController != base25Controller) {
        base25Controller.text = inputValue.toRadixString(25).toUpperCase();
      }
      if (sourceController != base26Controller) {
        base26Controller.text = inputValue.toRadixString(26).toUpperCase();
      }
      if (sourceController != base27Controller) {
        base27Controller.text = inputValue.toRadixString(27).toUpperCase();
      }
      if (sourceController != base28Controller) {
        base28Controller.text = inputValue.toRadixString(28).toUpperCase();
      }
      if (sourceController != base29Controller) {
        base29Controller.text = inputValue.toRadixString(29).toUpperCase();
      }
      if (sourceController != base30Controller) {
        base30Controller.text = inputValue.toRadixString(30).toUpperCase();
      }
     // ignore: empty_catches
     } catch (e) {}
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
