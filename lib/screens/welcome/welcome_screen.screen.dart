import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:sanatan/components/positioned_text.dart';
import 'package:sanatan/components/primary_button.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/constants/string.dart';
import 'package:sanatan/core/ui/ui.dart';
import 'package:sanatan/screens/customer/signUp/signup.customer.screen.dart';
import 'package:sanatan/screens/signin/signin.screen.dart';
import 'package:sanatan/widgets/background.widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static const String rootName = "/welcome_screen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  double topLogoPosition = 240;

  double topSignsPosition = -120;
  double bottomWelcomeTextPosition = 320;

  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final double width = size.width;
    return Background(
      welcome: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              top: topSignsPosition,
              child: SizedBox(
                  width: width,
                  height: 750,
                  child: SvgPicture.asset(
                    'assets/components/signs.svg',
                    fit: BoxFit.cover,
                  )),
            ),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                child: SvgPicture.asset('assets/components/sanatan_logo.svg'),
              ),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              top: topLogoPosition,
              left: 120,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),

            // Welcome to Sanatan Text
            PositionedText(
              alignment: Alignment.center,
              width: width,
              label: AppStrings.welcome,
              bottom: bottomWelcomeTextPosition,
              style: TextStyles.bodyTextBig,
            ),

            // Button  1 text
            Visibility(
              visible: visibility,
              child: PositionedText(
                  width: width,
                  label: AppStrings.signInText,
                  bottom: 260,
                  left: 35,
                  alignment: Alignment.centerLeft,
                  style: TextStyles.whiteSmallDefaultText2),
            ),

            // Button Sign In
            Visibility(
              visible: visibility,
              child: Positioned(
                bottom: 205,
                child: SizedBox(
                    width: width,
                    child: PrimaryButton(
                      trailingChild: Image.asset(
                        AppIcons.rightArrow,
                      ),
                      text: AppStrings.signIn,
                      onPressed: () async {
                        Get.toNamed(UserSignInScreen.rootName);
                      },
                    )),
              ),
            ),

            // Button  2 text
            PositionedText(
                width: width,
                label: AppStrings.signUpText,
                bottom: 150,
                left: 35,
                alignment: Alignment.centerLeft,
                style: TextStyles.whiteSmallDefaultText2),

            // Button Sign Up
            Positioned(
              bottom: 95,
              child: SizedBox(
                  width: width,
                  child: PrimaryButton(
                    trailingChild: Image.asset(
                      AppIcons.rightArrow,
                    ),
                    text: AppStrings.signUp,
                    onPressed: () async {
                      Get.toNamed(CustomerSignUPScreen.rootName);
                    },
                  )),
            ),

            // T&C text
            Positioned(
              bottom: 20,
              child: Container(
                width: width,
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyles.whiteSmallDefaultText2,
                    children: <TextSpan>[
                      const TextSpan(
                          text:
                              'The Data You Submitted Will Be Processed In Accordance '),
                      const TextSpan(text: '\nWith Our'),
                      TextSpan(
                          text: ' Privacy Policy',
                          style: const TextStyle(
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service"');
                            }),
                      const TextSpan(text: ' By You Agreeing To Our '),
                      TextSpan(
                          text: ' T&C',
                          style: const TextStyle(
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('"T & C');
                            }),
                      TextSpan(
                          text: '\n Login As Provider',
                          style: const TextStyle(
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('"Provider ');
                            }),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: width,
                  margin: const EdgeInsets.symmetric(horizontal: 120),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: AppColors.primaryColor,
                        width: 56,
                        height: 2,
                      ),
                      Container(
                        color: AppColors.grey,
                        width: 30,
                        height: 2,
                      ),
                      Container(
                        color: AppColors.grey,
                        width: 30,
                        height: 2,
                      ),
                      Container(
                        color: AppColors.grey,
                        width: 30,
                        height: 2,
                      ),
                    ],
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
