import 'package:flutter/material.dart';

class Converter {
  TextEditingController base2Controller = TextEditingController();
  TextEditingController base8Controller = TextEditingController();
  TextEditingController base10Controller = TextEditingController();
  TextEditingController base16Controller = TextEditingController();

  void numberConverter(
      TextEditingController sourceController, String text, int sourceBase) {
    for (int i = 1; i <= 30; i++) {
      try {
        int inputValue = int.parse(text, radix: sourceBase);
        if (sourceController != base2Controller) {
          base2Controller.text = inputValue.toRadixString(2);
        }
      } catch (e) {}
    }
  }
}
