import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanatan/components/positioned_text.dart';
import 'package:sanatan/components/primary_button.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/constants/string.dart';
import 'package:sanatan/core/ui/ui.dart';

class AstroSignIn extends StatefulWidget {
  const AstroSignIn({super.key});

  @override
  State<AstroSignIn> createState() => _AstroSignInState();
}

class _AstroSignInState extends State<AstroSignIn> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final double width = size.width;
    final double height = size.height;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg_image.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(children: [
            //Image.asset('assets/images/bg_image.png'),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                child: SvgPicture.asset('assets/components/sanatan_logo.svg'),
              ),
            ),
            Positioned(
              top: 240,
              left: 120,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),

            // Welcome to Sanatan Text
            PositionedText(
              alignment: Alignment.center,
              width: width,
              label: AppStrings.astroSignInWelcome,
              bottom: 320,
              style: TextStyles.bodyTextBig,
            ),

            // Button  1 text
            PositionedText(
              width: width,
              label: AppStrings.astroSignInText,
              bottom: 260,
              left: 35,
              alignment: Alignment.centerLeft,
              style: TextStyles.bodyTextBig,
            ),

            // Button Sign In
            Positioned(
              bottom: 205,
              child: Container(
                  width: width,
                  child: PrimaryButton(
                    trailingChild: Image.asset(
                      AppIcons.rightArrow,
                    ),
                    text: AppStrings.signIn,
                    onPressed: () async {
                      print("clickd");
                    },
                  )),
            ),

            // Button  2 text
            PositionedText(
              width: width,
              label: AppStrings.astroSignUpText,
              bottom: 150,
              left: 35,
              alignment: Alignment.centerLeft,
              style: TextStyles.bodyTextBig,
            ),

            // Button Sign In
            Positioned(
              bottom: 95,
              child: Container(
                  width: width,
                  child: PrimaryButton(
                    trailingChild: Image.asset(
                      AppIcons.rightArrow,
                    ),
                    text: AppStrings.signIn,
                    onPressed: () async {
                      print("clickd");
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
                    style: const TextStyle(
                        fontFamily: AppStrings.outfit, fontSize: 10),
                    children: <TextSpan>[
                      const TextSpan(
                          text:
                              'The Data You Submitted Will Be Processed In Accordance '),
                      const TextSpan(text: '\nWith Our'),
                      TextSpan(
                          text: ' Privacy Policy',
                          style: const TextStyle(
                              fontFamily: AppStrings.outfit,
                              fontSize: 10,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service"');
                            }),
                      const TextSpan(text: ' By You Agreeing To Our '),
                      TextSpan(
                          text: ' T&C',
                          style: const TextStyle(
                              fontFamily: AppStrings.outfit, fontSize: 10),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('"');
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
                        color: AppColors.grey,
                        width: 30,
                        height: 2,
                      ),
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
                    ],
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
