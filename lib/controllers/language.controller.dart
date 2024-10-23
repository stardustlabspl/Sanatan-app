import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanatan/core/utils/preferences.utils.dart';
import 'package:sanatan/data/model/language.model.dart';

class LanguageController extends GetxController {
  late LanguageModel selectedLanguage;

  @override
  void onInit() {
    loadSelectedLanguage();
    super.onInit();
  }

  void changeSelectedLanguage(LanguageModel languageModel) {
    selectedLanguage = languageModel;
    update();
  }

  Future<void> saveSelectedLanguage(LanguageModel languageModel) async {
    await Preferences.saveLanguage(languageModel);
    Get.updateLocale(
        Locale(languageModel.languageCode, languageModel.countryCode));
    await Preferences.isNewUser(false);
    loadSelectedLanguage();
    update();
  }

  Future<void> loadSelectedLanguage() async {
    selectedLanguage = await Preferences.loadLanguage();
    Get.updateLocale(
        Locale(selectedLanguage.languageCode, selectedLanguage.countryCode));
    update();
  }
}
