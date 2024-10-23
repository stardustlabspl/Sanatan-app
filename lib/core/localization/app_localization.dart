import 'package:get/get.dart';
import 'package:sanatan/core/localization/gu_in_translations.dart';
import 'package:sanatan/core/localization/hi_in_translations.dart';
import 'package:sanatan/core/localization/te_in_translations.dart';
import 'en_us_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'hi_IN': hiIn,
        'gu_IN': guIn,
        'te_IN': teIn,
      };
}
