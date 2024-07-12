import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASHSCREEN,
      page: () => const SplashscreenScreen(),
      binding: SplashscreenControllerBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => const SignupScreen(),
      binding: SignupControllerBinding(),
    ),
    GetPage(
      name: Routes.SIGNIN,
      page: () => const SigninScreen(),
      binding: SigninControllerBinding(),
    ),
    GetPage(
      name: Routes.PROFILING_ONE,
      page: () => const ProfilingOneScreen(),
      binding: ProfilingOneControllerBinding(),
    ),
    GetPage(
      name: Routes.PROFILING_TWO,
      page: () => const ProfilingTwoScreen(),
      binding: ProfilingTwoControllerBinding(),
    ),
    GetPage(
      name: Routes.BOTTOM_NAV_BAR,
      page: () => const BottomNavBarScreen(),
      binding: BottomNavBarControllerBinding(),
    ),
    GetPage(
      name: Routes.PROJECT_DETAILS,
      page: () => const ProjectDetailsScreen(),
      binding: ProjectDetailsControllerBinding(),
    ),
    GetPage(
      name: Routes.PROSES_APPLY,
      page: () => const ProsesApplyScreen(),
      binding: ProsesApplyControllerBinding(),
    ),
  ];
}
