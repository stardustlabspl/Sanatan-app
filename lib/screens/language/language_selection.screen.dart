import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanatan/components/primary_button.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/constants/constants.dart';
import 'package:sanatan/constants/string.dart';
import 'package:sanatan/controllers/language.controller.dart';
import 'package:sanatan/core/ui/ui.dart';
import 'package:sanatan/screens/welcome/welcome_screen.screen.dart';
import 'package:sanatan/widgets/background.widget.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  static const String rootName = '/language_selection';
  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  LanguageController languageController = Get.put(LanguageController());
  bool? isNewUser = Get.arguments["isNewUser"] ?? false;

//this func runs first time
  @override
  void initState() {
    if (isNewUser == true) {
      languageController.changeSelectedLanguage(Constants.appLanguages[0]);
    }
    super.initState();
  }

  @override
  void dispose() {
    languageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      welcome: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            AppStrings.appName,
            style: TextStyles.defaultText.copyWith(fontSize: 14),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Please Select a Language",
                style: TextStyles.whiteHeading2,
              ),
              GetBuilder<LanguageController>(builder: (controller) {
                return Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemCount: Constants.appLanguages.length,
                        itemBuilder: (context, index) {
                          final language = Constants.appLanguages[index];

                          return GestureDetector(
                            onTap: () {
                              controller.changeSelectedLanguage(language);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(30),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(31, 232, 232, 232),
                                  borderRadius: BorderRadius.circular(30),
                                  border: language.languageCode ==
                                          controller
                                              .selectedLanguage.languageCode
                                      ? Border.all(color: AppColors.grey)
                                      : Border.all(
                                          color: AppColors.backgroundColor)),
                              child: Text(
                                language.languageName,
                                style: TextStyles.defaultTextBold,
                              ),
                            ),
                          );
                        }));
              }),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
                child: PrimaryButton(
                  text: AppStrings.apply.tr,
                  trailingChild: Image.asset(AppIcons.rightArrow),
                  onPressed: () async {
                    await languageController.saveSelectedLanguage(
                        languageController.selectedLanguage);
                    if (isNewUser == false) {
                      Get.back();
                    } else {
                      Get.toNamed(WelcomeScreen.rootName);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
