import 'package:base_converter_app/about_us.dart';
import 'package:base_converter_app/all_bases.dart';
import 'package:base_converter_app/common_base.dart';
import 'package:base_converter_app/setting_page.dart';
import 'package:flutter/material.dart';

enum Screen { commonBase, allBase }

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Screen selectedScreen = Screen.commonBase;
  bool showScreen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: const Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Text(
              "Base Converter",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue,
          actions: [
            Row(
              children: [
                const InkWell(
                  child: Text(
                    "RESET",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: const Text('Setting'),
                                onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => const SettingPage())),
                              ),
                              PopupMenuItem(
                                onTap: () => showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const DialogBoxWidget();
                                    }),
                                child: const Text('About App'),
                              ),
                              PopupMenuItem(child: Text('Rate Us')),
                            ])),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: (selectedScreen == Screen.commonBase)
                            ? const BorderSide(width: 2, color: Colors.blue)
                            : const BorderSide(width: 0, color: Colors.white),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedScreen = Screen.commonBase;
                          showScreen = false;
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 12.0, bottom: 8),
                        child: Text(
                          "COMMON BASES",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: (selectedScreen == Screen.allBase)
                            ? const BorderSide(width: 2, color: Colors.blue)
                            : const BorderSide(width: 0, color: Colors.white),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedScreen = Screen.allBase;
                          showScreen = true;
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 12.0, bottom: 8),
                        child: Text(
                          "ALL BASES",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            showScreen ? const AllBases() : const CommonBase(),
          ],
        ),
      ),
    );
  }
}
