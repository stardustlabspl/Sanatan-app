import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFA786FF);
  static const Color primaryColor2 = Color(0xFFA786FF);
  static const Color primaryDarkColor = Color(0xFFA786FF);
  static const Color orange = Color(0xFFFF7300);
  static const Color button = Color(0xFFA786FF);
  static const Color secondaryColor = Color(0xffA39EE9);
  static const Color textColor = Color(0xFF000000);
  static const Color textLight = Color(0xFFFF4433);
  static const Color errorColor = Color(0xFFCF0000);
  static const Color greyMedium = Color(0xFFE8E8E8);
  static const Color grey = Colors.grey;
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color green = Color(0xff51B52E);
  static const Color gradientBlue = Color(0xff0C0098);
  static const Color gradientPurple = Color(0xffBC87FF);
  static const Color backgroundColor = Color.fromARGB(126, 0, 0, 0);
  static const Color transparent = Color(0x000fffff);
  static const Color dialogBG = Color(0xFF000F25);
  static const Color lightBackground = Color.fromARGB(0, 30, 29, 29);
  static const Color textFieldColorBG = Color.fromARGB(227, 49, 36, 71);
  static const Color textFieldHintColor = Color.fromARGB(145, 169, 166, 166);
  static const Color textFieldTextColor = Color.fromARGB(255, 255, 255, 255);
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      canvasColor: AppColors.textFieldColorBG,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      iconTheme: const IconThemeData(
        color: AppColors.black,
      ),
      appBarTheme: const AppBarTheme(
        // centerTitle: true,
        surfaceTintColor: AppColors.backgroundColor,
        backgroundColor: AppColors.backgroundColor,
        scrolledUnderElevation: 1,
        elevation: 1,
        shadowColor: AppColors.greyMedium,
        titleTextStyle: TextStyle(
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(
          color: AppColors.black,
        ),
      ),
      // textTheme: TextTheme(),
      colorScheme: const ColorScheme.light(
        secondary: AppColors.primaryColor,
        primary: AppColors.primaryColor,
      ));
}

class TextStyles {
  static TextStyle heading1 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32,
    fontFamily: 'Inter',
    color: AppColors.textColor,
  );

  static TextStyle heading2 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    fontFamily: 'Inter',
    color: AppColors.textColor,
  );

  static TextStyle whiteHeading2 = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 24,
    fontFamily: 'Inter',
    color: Color.fromARGB(255, 255, 255, 255),
  );

  static TextStyle heading3 = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    fontFamily: 'Inter',
    color: AppColors.textColor,
  );

  static TextStyle bodyTextBig = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    color: AppColors.white,
  );

  static TextStyle bodyTextLittle = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.0,
    fontFamily: 'Inter',
    color: AppColors.textColor,
  );

  static TextStyle defaultText = const TextStyle(
    fontSize: 14.0,
    fontFamily: 'Inter',
    color: AppColors.textColor,
  );

  static TextStyle defaultText2 = const TextStyle(
    fontSize: 14.0,
    fontFamily: 'Outfit',
    color: AppColors.textColor,
  );

  static TextStyle whiteSmallDefaultText2 = const TextStyle(
    fontSize: 12.0,
    fontFamily: 'Outfit',
    color: Color.fromARGB(255, 255, 251, 251),
  );

  static TextStyle whiteRegularDefaultText2 = const TextStyle(
    fontSize: 14.0,
    fontFamily: 'Outfit',
    color: Color.fromARGB(255, 255, 251, 251),
  );
  static TextStyle defaultTextBold = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: AppColors.greyMedium,
    fontFamily: 'Inter',
  );
  static TextStyle textfieldHintStyle = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: AppColors.textFieldHintColor,
    fontFamily: 'Outfit',
  );
  static TextStyle textfieldTextStyle = const TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w100,
    color: AppColors.textFieldTextColor,
    fontFamily: 'Outfit',
  );
}
