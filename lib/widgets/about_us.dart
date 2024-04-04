import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class DialogBoxWidget extends StatelessWidget {
  DialogBoxWidget({super.key});

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
        children: [
          Text(
            'This app is a clone of an original app created by ..'
            '\nThis clone is created using flutter. The link to the github file is below',
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
