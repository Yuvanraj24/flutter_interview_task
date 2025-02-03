import 'package:flutter/material.dart';
import 'package:flutter_task_project/constants/colors.dart';
import 'package:flutter_task_project/constants/sizes.dart';

/// Template for the login page layout
class AppLoginTemplate extends StatelessWidget {
  const AppLoginTemplate({super.key, required this.child});

  /// The widget to be displayed in the login template
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 550,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(
                  top: AppSizes.appBarHeight,
                  left: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace,
                  right: AppSizes.defaultSpace,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
                  color: AppColors.white,
                ),
                child: child),
          ),
        ),
      ),
    );
  }
}
