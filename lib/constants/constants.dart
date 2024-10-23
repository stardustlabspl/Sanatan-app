import 'package:sanatan/data/model/language.model.dart';

class Constants {
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';
  static List<LanguageModel> appLanguages = [
    LanguageModel(
        languageName: "English", countryCode: "US", languageCode: "en"),
    LanguageModel(languageName: "Hindi", countryCode: "IN", languageCode: "hi"),
    LanguageModel(
        languageName: "Gujarati", countryCode: "IN", languageCode: 'ge'),
  ];

  static List<String> gendersList = ["Male", "Female"];
}
