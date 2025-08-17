import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class DialogBoxWidget extends StatelessWidget {
  DialogBoxWidget({super.key, required this.bodyText, required this.title});
  final String bodyText;
  final String title;

  final Uri _url =
      Uri.parse('https://github.com/Emmanueloluwadamilola/base_converter_app');

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).cardColor,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            bodyText,
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
