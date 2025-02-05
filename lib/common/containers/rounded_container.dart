import 'package:flutter/material.dart';
import 'package:flutter_task_project/constants/colors.dart';
import 'package:flutter_task_project/constants/sizes.dart';


class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.showShadow = true,
    this.showBorder = false,
    this.padding = const EdgeInsets.all(AppSizes.md),
    this.borderColor = AppColors.borderPrimary,
    this.radius = AppSizes.cardRadiusLg,
    this.backgroundColor = AppColors.white,
    this.onTap,
  });

  final Widget? child;
  final double radius;
  final double? width;
  final double? height;
  final bool showBorder;
  final bool showShadow;
  final Color borderColor;
  final EdgeInsets? margin;
  final EdgeInsets padding;
  final Color backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null,
          boxShadow: [
            if (showShadow)
              BoxShadow(
                color: AppColors.grey.withValues(alpha: .2),
                spreadRadius: 5,
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
          ],
        ),
        child: child,
      ),
    );
  }
}
