import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class RateUsDialogBox extends StatelessWidget {
  RateUsDialogBox({super.key});

  final Uri _url =
      Uri.parse('https://github.com/Emmanueloluwadamilola/base_converter_app');

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).backgroundColor,
      title: Text(
        'About App',
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'You can kindly star this project on github'
            '\nThe link to the github codebase is below',
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          ),
          const Gap(10),
          InkWell(
            child: Text(
              'GitHub Link',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
            ),
            onTap: () => launchUrl(_url),
          ),
        ],
      ),
    );
  }
}
