import 'dart:convert';

import 'package:sanatan/data/model/language.model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  static Future<void> isNewUser(bool newUser) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('newUser', newUser);
  }

  static Future<bool?> isNewUserCheck() async {
    final prefs = await SharedPreferences.getInstance();
    bool? isNewUser = prefs.getBool('newUser');
    return isNewUser;
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    String? userToken = prefs.getString('token');
    return userToken;
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove("token");
  }

  static Future<void> saveLanguage(LanguageModel languageModel) async {
    final prefs = await SharedPreferences.getInstance();
    String languageCodeAndCountryCodeJson = json.encode({
      'languageCode': languageModel.languageCode,
      'countryCode': languageModel.countryCode,
      'languageName': languageModel.languageName,
    });
    await prefs.setString('selectedLanguage', languageCodeAndCountryCodeJson);
  }

  static Future<LanguageModel> loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final selectedLanguageCodeAndCountryCodeJson =
        prefs.getString('selectedLanguage') ?? "";

    if (selectedLanguageCodeAndCountryCodeJson.isNotEmpty) {
      final Map<String, dynamic> languageCountryAndCodeMap =
          jsonDecode(selectedLanguageCodeAndCountryCodeJson);

      final selectedLanguageCode =
          languageCountryAndCodeMap['languageCode'] ?? "en";

      final selectedCountryCode =
          languageCountryAndCodeMap['countryCode'] ?? "US";

      final selectedLanguageName =
          languageCountryAndCodeMap['languageName'] ?? "English";

      return LanguageModel(
          languageName: selectedLanguageName,
          countryCode: selectedCountryCode,
          languageCode: selectedLanguageCode);
    } else {
      // If no language code is stored, set default values
      return LanguageModel(
        languageName: "",
        countryCode: "US",
        languageCode: "en",
      );
    }
  }
}
