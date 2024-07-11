import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/theme/colors.dart';

import 'package:get/get.dart';

import '../../infrastructure/navigation/routes.dart';
import 'controllers/splashscreen.controller.dart';

class SplashscreenScreen extends GetView<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.SIGNUP);
    }));
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pattern_background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/logo.svg'),
                Text(
                  'Increase Capability Get Job Easily',
                  style: TextStyle(
                    color: lightGreyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gilroy',
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
