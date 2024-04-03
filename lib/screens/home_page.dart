import 'package:base_converter_app/Widgets/about_us.dart';
import 'package:base_converter_app/widgets/all_bases.dart';
import 'package:base_converter_app/widgets/common_base.dart';
import 'package:base_converter_app/screens/setting_page.dart';
import 'package:flutter/material.dart';

enum Screen { commonBase, allBase }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextInputType keyboardInputType = TextInputType.number;
  bool isDarkAppTheme = false;
  bool isFormatted = true;

  void updateKeyboardType(TextInputType keyboardType) {
    setState(() {
      keyboardInputType = keyboardType;
    });
  }

  void updateTheme(bool isDarkTheme) {
    setState(() {
      isDarkAppTheme = isDarkTheme;
    });
  }

  void updateInputFormat(bool inputFormat) {
    setState(() {
      isFormatted = inputFormat;
    });
  }

  void resetCommonBaseTextControllers() {
    CommonBaseState commonBaseState = commonBaseKey.currentState!;
    commonBaseState.base2Controller.clear();
    commonBaseState.base8Controller.clear();
    commonBaseState.base10Controller.clear();
    commonBaseState.base16Controller.clear();
  }

  void resetAllBaseTextControllers() {
    AllBasesState allBasesState = allBaseKey.currentState!;
    allBasesState.base2Controller.clear();
    allBasesState.base3Controller.clear();
    allBasesState.base4Controller.clear();
    allBasesState.base5Controller.clear();
    allBasesState.base6Controller.clear();
    allBasesState.base7Controller.clear();
    allBasesState.base8Controller.clear();
    allBasesState.base9Controller.clear();
    allBasesState.base10Controller.clear();
    allBasesState.base11Controller.clear();
    allBasesState.base12Controller.clear();
    allBasesState.base13Controller.clear();
    allBasesState.base14Controller.clear();
    allBasesState.base15Controller.clear();
    allBasesState.base16Controller.clear();
    allBasesState.base17Controller.clear();
    allBasesState.base18Controller.clear();
    allBasesState.base19Controller.clear();
    allBasesState.base20Controller.clear();
    allBasesState.base21Controller.clear();
    allBasesState.base22Controller.clear();
    allBasesState.base23Controller.clear();
    allBasesState.base24Controller.clear();
    allBasesState.base25Controller.clear();
    allBasesState.base26Controller.clear();
    allBasesState.base27Controller.clear();
    allBasesState.base28Controller.clear();
    allBasesState.base29Controller.clear();
    allBasesState.base30Controller.clear();
  }

  Screen selectedScreen = Screen.commonBase;
  bool showScreen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
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
                InkWell(
                  onTap: () {
                    setState(() {
                      // Call the reset method
                      (selectedScreen == Screen.commonBase)
                          ? resetCommonBaseTextControllers()
                          : resetAllBaseTextControllers();
                    });
                  },
                  child: const Text(
                    "RESET",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: PopupMenuButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        color: Colors.white,
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: const Text('Setting'),
                                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                        builder: (context) => SettingPage(
                                              updateKeyboardType:
                                                  updateKeyboardType,
                                              updateTheme: updateTheme,
                                              keyboard: keyboardInputType,
                                              inputFormat: isFormatted,
                                              updateInputFormat:
                                                  updateInputFormat,
                                            ))),
                              ),
                              PopupMenuItem(
                                onTap: () => showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const DialogBoxWidget();
                                    }),
                                child: const Text('About App'),
                              ),
                              const PopupMenuItem(child: Text('Rate Us')),
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
                        padding: EdgeInsets.only(top: 12.0, bottom: 12),
                        child: Text(
                          "COMMON BASES",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.black54),
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
                        padding: EdgeInsets.only(top: 12.0, bottom: 12),
                        child: Text(
                          "ALL BASES",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.black54),
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
            showScreen
                ? AllBases(
                    key: allBaseKey,
                    keyboard: keyboardInputType,
                    isFormatted: isFormatted,
                  )
                : CommonBase(
                    key: commonBaseKey,
                    keyboard: keyboardInputType,
                    isFormatted: isFormatted,
                  ),
          ],
        ),
      ),
    );
  }
}
