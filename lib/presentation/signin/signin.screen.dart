import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/colors.dart';
import 'controllers/signin.controller.dart';
import 'widgets/textfieldPassword.dart';
import 'widgets/textfiledSignIn.dart';

class SigninScreen extends GetView<SigninController> {
  const SigninScreen({Key? key}) : super(key: key);
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
                  padding: const EdgeInsets.only(top: 60.5),
                  child: Image.asset('assets/images/signin_image.png'),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText.h1('Sign In'),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Please provide your data Information ',
                      style: TextStyle(
                        color: greyColor,
                        fontSize: 14,
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Column(
                      children: [
                        TextfieldSignIn(
                          controller: controller.emailC,
                          title: 'Email',
                          hint: 'Enter your e-mail here',
                          isObsecure: false,
                          keyboard: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextfieldPassword(
                          controller: controller.passC,
                          title: 'Password',
                          hint: 'Enter your password here',
                          isObsecure: true,
                          keyboard: TextInputType.text,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 165,
                    ),
                    PrimaryButton(
                      text: 'Sign In',
                      onPressed: () {
                        if(controller.emailC.text == 'admin@gmail.com' && controller.passC.text == '123123') {
                          Get.toNamed(Routes.PROFILING_ONE);
                        }
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an Account? ',
                          style: GoogleFonts.dmSans(
                            color: blackColor,
                            letterSpacing: 0.2,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.SIGNUP);
                          },
                          child: Text(
                            'Sign up',
                            style: GoogleFonts.dmSans(
                              color: primaryColor,
                              letterSpacing: 0.2,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
