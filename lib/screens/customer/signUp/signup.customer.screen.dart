import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:phonecodes/phonecodes.dart';
import 'package:sanatan/components/custom_datetime_picker.dart';
import 'package:sanatan/components/custom_dropdown.dart';
import 'package:sanatan/components/primary_button.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/constants/constants.dart';
import 'package:sanatan/constants/string.dart';
import 'package:sanatan/core/ui/ui.dart';
import 'package:sanatan/screens/customer/signUp/signup.customer.screen.verification.dart';
import 'package:sanatan/widgets/background.widget.dart';
import 'package:sanatan/widgets/custom_textfield.widget.dart';

class CustomerSignUPScreen extends StatefulWidget {
  static const String rootName = "/customer_sign_screen";
  const CustomerSignUPScreen({super.key});

  @override
  State<CustomerSignUPScreen> createState() => _CustomerSignUPScreenState();
}

class _CustomerSignUPScreenState extends State<CustomerSignUPScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final double width = size.width;
    return Background(
        welcome: false,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child:
                        SvgPicture.asset('assets/components/sanatan_logo.svg'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "User Sign Up Form",
                    style: TextStyles.bodyTextBig,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                        color: AppColors.transparent,
                        child: Image.asset(AppIcons.appLogo)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: width,
                    margin: const EdgeInsets.only(left: 25),
                    child: Text(
                      "General Details",
                      style: TextStyles.whiteRegularDefaultText2,
                    ),
                  ),
                  Form(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        hintText: "First Name",
                        leadingIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child:
                              ImageIcon(size: 5, AssetImage(AppIcons.person)),
                        ),
                        height: 55,
                        inputType: TextInputType.text,
                        obscureText: true,
                        onChanged: () {
                          print("first Name");
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        hintText: "Last Name",
                        leadingIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child:
                              ImageIcon(size: 5, AssetImage(AppIcons.person)),
                        ),
                        height: 55,
                        inputType: TextInputType.text,
                        obscureText: true,
                        onChanged: () {
                          print("first Name");
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomDropDown(
                        itemlist: Constants.gendersList,
                        height: 55,
                        leadingIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child:
                              ImageIcon(size: 5, AssetImage(AppIcons.gender)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        hintText: "Enter Your e-mail",
                        leadingIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child: ImageIcon(size: 5, AssetImage(AppIcons.email)),
                        ),
                        height: 55,
                        inputType: TextInputType.text,
                        obscureText: true,
                        onChanged: () {
                          print("Email");
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomDropDown(
                        itemlist: Countries.list,
                        height: 55,
                        leadingIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child:
                              ImageIcon(size: 5, AssetImage(AppIcons.gender)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        hintText: "Birth Place (City, State)",
                        leadingIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child: ImageIcon(size: 5, AssetImage(AppIcons.home)),
                        ),
                        height: 55,
                        inputType: TextInputType.text,
                        onChanged: () {
                          print("Birth Place (City, State)");
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomDateTimePicker(),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomDropDown(
                        itemlist: Countries.list,
                        height: 55,
                        leadingIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child:
                              ImageIcon(size: 5, AssetImage(AppIcons.gender)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        hintText: "Home (City, State)",
                        leadingIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child: ImageIcon(size: 5, AssetImage(AppIcons.home)),
                        ),
                        height: 55,
                        inputType: TextInputType.text,
                        onChanged: () {
                          print("Home (City, State)");
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        hintText: "Home (Zipcode)",
                        leadingIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child: ImageIcon(size: 5, AssetImage(AppIcons.home)),
                        ),
                        height: 55,
                        inputType: TextInputType.text,
                        onChanged: () {
                          print("Home (Zipcode)");
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: width,
                          child: PrimaryButton(
                            trailingChild: Image.asset(
                              AppIcons.rightArrow,
                            ),
                            text: AppStrings.signUp,
                            onPressed: () async {
                              Get.toNamed(SignUPVerificationScreen.rootName);
                            },
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      // T&C text
                      Align(
                        alignment: Alignment.bottomCenter,
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
                                const TextSpan(
                                    text: ' By You Agreeing To Our '),
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
                      const SizedBox(
                        height: 20,
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
                                  color: AppColors.primaryColor,
                                  width: 56,
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
                    ],
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}
