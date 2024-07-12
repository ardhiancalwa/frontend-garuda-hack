import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/favorite.controller.dart';

class FavoriteScreen extends GetView<FavoriteController> {
  const FavoriteScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          surfaceTintColor: whiteColor,
          title: CustomText.h2('Favorites'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/project_not_found.png'),
              SizedBox(
                height: 34,
              ),
              CustomText.h1('Project not found'),
              SizedBox(
                height: 13,
              ),
              CustomText.p('Please Apply the project first'),
            ],
          ),
        ),
      ),
    );
  }
}
