import 'package:flutter/material.dart';

class DialogBoxWidget extends StatelessWidget {
  const DialogBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text(
        'About App',
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
      content: Text(
        'This app is a clone of an original app created by ..'
        '. . \nThis clone is created using flutter. The link to the github file is below \n',
        style: TextStyle(fontSize: 17),
      ),
    );
  }
}
