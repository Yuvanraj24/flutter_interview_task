import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/containers/rounded_container.dart';
import 'package:flutter_task_project/constants/colors.dart';
import 'package:flutter_task_project/constants/sizes.dart';

class SiajDashboardCard extends StatelessWidget {
  const SiajDashboardCard({
    super.key,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  final String title, subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(

      onTap: onTap,
      padding: EdgeInsets.all(AppSizes.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Heading
          // AppSectionHeading(title: title, textColor: AppColors.textSecondary),

          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(fontWeightDelta: 25,color: AppColors.darkGrey)),

          SizedBox(height: AppSizes.spaceBtwItems),

          Text(subTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .apply(fontWeightDelta: 25)),
        ],
      ),
    );
  }
}
