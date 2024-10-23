import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanatan/components/otp_box.dart';
import 'package:sanatan/components/positioned_text.dart';
import 'package:sanatan/components/primary_button.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/constants/string.dart';
import 'package:sanatan/core/ui/ui.dart';
import 'package:sanatan/widgets/background.widget.dart';
import 'package:sanatan/widgets/custom_textfield.widget.dart';

class SignUPVerificationScreen extends StatefulWidget {
  const SignUPVerificationScreen({super.key});
  static const String rootName = "/signup_verfication_screen";

  @override
  State<SignUPVerificationScreen> createState() => _UserSignInScreenState();
}

class _UserSignInScreenState extends State<SignUPVerificationScreen> {
  FocusNode otpFieldOne = FocusNode();
  FocusNode otpFieldTwo = FocusNode();
  FocusNode otpFieldThree = FocusNode();
  FocusNode otpFieldFour = FocusNode();

  final TextEditingController phoneController = TextEditingController();

  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final double width = size.width;
    return Background(
      welcome: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(children: [
            // profile image
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                child: SvgPicture.asset('assets/components/sanatan_logo.svg'),
              ),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              top: 140,
              left: 120,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),

            // Welcome Text
            PositionedText(
              alignment: Alignment.center,
              width: width,
              label: "Welcome Back, Jake!",
              bottom: 450,
              style: TextStyles.bodyTextBig,
            ),

            // Name Text Field
            Positioned(
                bottom: 370,
                child: Container(
                    width: width,
                    padding: const EdgeInsets.all(10),
                    child: CustomTextfield(
                      value: "Jake",
                      leadingIcon: const Padding(
                        padding: EdgeInsets.all(10),
                        child: ImageIcon(size: 5, AssetImage(AppIcons.person)),
                      ),
                      dropDownVisibility: false,
                      height: 55,
                      inputType: TextInputType.text,
                      controller: phoneController,
                      obscureText: false,
                      onChanged: () {
                        print("chala");
                      },
                    ))),
            // Phone Text Field
            Positioned(
                bottom: 300,
                child: Container(
                    width: width,
                    padding: const EdgeInsets.all(10),
                    child: CustomTextfield(
                      dropDownVisibility: true,
                      height: 55,
                      inputType: TextInputType.phone,
                      hintText: AppStrings.enterPhone,
                      controller: phoneController,
                      obscureText: false,
                      onChanged: () {
                        print("chala");
                      },
                    ))),

            // OTP Text field
            Positioned(
                bottom: 170,
                child: Container(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 80,
                          padding: const EdgeInsets.all(10),
                          child: OtpBox(
                            currentFocusNode: otpFieldOne,
                            nextFocusNode: otpFieldTwo,
                            visibility: true,
                            inputType: TextInputType.number,
                            hintText: AppStrings.dash,
                            controller: phoneController,
                            obscureText: false,
                            onChanged: () {
                              print("chala");
                            },
                          )),
                      Container(
                          width: 80,
                          padding: const EdgeInsets.all(10),
                          child: OtpBox(
                            currentFocusNode: otpFieldTwo,
                            nextFocusNode: otpFieldThree,
                            visibility: true,
                            inputType: TextInputType.number,
                            hintText: AppStrings.dash,
                            controller: phoneController,
                            obscureText: false,
                            onChanged: () {
                              print("chala");
                            },
                          )),
                      Container(
                          width: 80,
                          padding: const EdgeInsets.all(10),
                          child: OtpBox(
                            currentFocusNode: otpFieldThree,
                            nextFocusNode: otpFieldFour,
                            visibility: true,
                            inputType: TextInputType.number,
                            hintText: AppStrings.dash,
                            controller: phoneController,
                            obscureText: false,
                            onChanged: () {
                              print("chala");
                            },
                          )),
                      Container(
                          width: 80,
                          padding: const EdgeInsets.all(10),
                          child: OtpBox(
                            currentFocusNode: otpFieldFour,
                            visibility: true,
                            inputType: TextInputType.number,
                            hintText: AppStrings.dash,
                            controller: phoneController,
                            obscureText: false,
                            onChanged: () {
                              print("chala");
                            },
                          )),
                    ],
                  ),
                )),

            // OTP text
            PositionedText(
              alignment: Alignment.center,
              width: width,
              label: AppStrings.signInOTPText,
              bottom: 250,
              style: TextStyles.bodyTextBig,
            ),

            Positioned(
                bottom: 140,
                child: Container(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: Text(
                        "Time: 01:00",
                        style: TextStyles.whiteRegularDefaultText2,
                        textAlign: TextAlign.center,
                      )),
                      const Expanded(
                          child: Text(
                        "Resend OTP?",
                        style: TextStyle(color: AppColors.primaryColor),
                        textAlign: TextAlign.center,
                      )),
                    ],
                  ),
                )),

            // Button Sign In
            Positioned(
              bottom: 85,
              child: SizedBox(
                  width: width,
                  child: PrimaryButton(
                    trailingChild: Image.asset(
                      AppIcons.rightArrow,
                    ),
                    text: AppStrings.signUp,
                    onPressed: () async {},
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
                        color: AppColors.primaryColor,
                        width: 56,
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
