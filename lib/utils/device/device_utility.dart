import 'package:flutter/material.dart';
import 'package:flutter_task_project/constants/sizes.dart';

class DeviceUtils  {

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= AppSizes.desktopScreenSize;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= AppSizes.tabletScreenSize && MediaQuery.of(context).size.width < AppSizes.desktopScreenSize;
  }

  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < AppSizes.tabletScreenSize;
  }
}