import 'package:flutter/material.dart';
import 'package:flutter_task_project/constants/colors.dart';
import 'package:flutter_task_project/constants/sizes.dart';


class AppMenuItem extends StatelessWidget {
  const AppMenuItem({
    super.key,
    required this.route,
    required this.icon,
    required this.itemName,
  });

  final String route;
  final IconData icon;
  final String itemName;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {},
      onHover: (hovering) {},

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.xs),
        child: Container(
          decoration: BoxDecoration(
              color:
              false
                  ? AppColors.primary
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icon
              Padding(
                padding: const EdgeInsets.only(
                    left: AppSizes.lg,
                    top: AppSizes.md,
                    bottom: AppSizes.md,
                    right: AppSizes.md),
                child: false
                    ? Icon(icon, size: 22, color: AppColors.white)
                    : Icon(icon,
                    size: 22,
                    color:false
                        ? AppColors.white
                        : AppColors.darkGrey),
              ),
              // Text

                Flexible(
                  child: Text(
                    itemName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: false ?AppColors.white:AppColors.darkGrey),
                  ),
                )

            ],
          ),
        ),
      ),
    );
  }
}
