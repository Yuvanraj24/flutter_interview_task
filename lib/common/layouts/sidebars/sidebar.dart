import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/images/circular_image.dart';
import 'package:flutter_task_project/constants/colors.dart';
import 'package:flutter_task_project/constants/images_paths.dart';
import 'package:flutter_task_project/constants/sizes.dart';


class CustomSideBar extends StatelessWidget {
  const CustomSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            border:
                Border(right: BorderSide(color: AppColors.grey, width: 1))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SiajCircularImage(
                width: 100,
                height: 100,
                image: ImagesPath.darkAppLogo,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.all(AppSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('MENU' , style: Theme.of(context).textTheme.bodySmall!.apply(
                      letterSpacingDelta: 1.2
                    )),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


