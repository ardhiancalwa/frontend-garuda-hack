import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/presentation/screens.dart';

import 'package:get/get.dart';

import '../../infrastructure/theme/colors.dart';
import '../home/controllers/home.controller.dart';
import '../home/home.screen.dart';
import 'controllers/bottom_nav_bar.controller.dart';

class BottomNavBarScreen extends GetView<BottomNavBarController> {
  const BottomNavBarScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Obx(
          () => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              HomeScreen(),
              ProjectScreen(),
              FavoriteScreen(),
              ProfileScreen(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          height: 78,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey[400],
            selectedItemColor: primaryColor,
            selectedIconTheme: IconThemeData(
              color: primaryColor,
            ),
            type: BottomNavigationBarType.fixed,
            onTap: controller.changeTab,
            currentIndex: controller.tabIndex.value,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset('assets/icons/home_active.svg'),
                icon: SvgPicture.asset('assets/icons/home.svg'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset('assets/icons/project_active.svg'),
                icon: SvgPicture.asset('assets/icons/project.svg'),
                label: 'Project',
              ),
              BottomNavigationBarItem(
                activeIcon:
                    SvgPicture.asset('assets/icons/favorite_active.svg'),
                icon: SvgPicture.asset('assets/icons/favorite.svg'),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset('assets/icons/profile_active.svg'),
                icon: SvgPicture.asset('assets/icons/profile.svg'),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
