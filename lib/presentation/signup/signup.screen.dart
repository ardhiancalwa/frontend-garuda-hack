import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/navigation/routes.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/signup/widgets/textfieldSignUp.dart';
import 'package:frontend/presentation/signup/widgets/textfiledPassword.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/signup.controller.dart';

class SignupScreen extends GetView<SignupController> {
  const SignupScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.5),
                  child: Image.asset('assets/images/signup_image.png'),
                ),
              ),
              SizedBox(
                height: 23.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText.h1('Sign Up'),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Please provide your data Information ',
                      style: TextStyle(
                        color: greyColor,
                        fontSize: 14,
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Gilroy',
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Column(
                      children: [
                        TextfiledSignUp(
                          controller: controller.fullnameC,
                          title: 'Full Name',
                          hint: 'Enter your name here',
                          isObsecure: false,
                          keyboard: TextInputType.text,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextfiledSignUp(
                          controller: controller.emailC,
                          title: 'Email',
                          hint: 'Enter your e-mail here',
                          isObsecure: false,
                          keyboard: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextfiledPassword(
                          controller: controller.passwordC,
                          title: 'Password',
                          hint: 'Enter your password here',
                          isObsecure: true,
                          keyboard: TextInputType.text,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    PrimaryButton(
                      text: 'Sign Up',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already Have an Account? ',
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Gilroy',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.SIGNIN);
                          },
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.dmSans(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
