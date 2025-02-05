import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/images/rounded_image.dart';
import 'package:flutter_task_project/constants/colors.dart';
import 'package:flutter_task_project/constants/images_paths.dart';
import 'package:flutter_task_project/constants/sizes.dart';
import 'package:flutter_task_project/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key, this.scaffoldKey});

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(bottom: BorderSide(color: AppColors.grey, width: 1)),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.md, vertical: AppSizes.sm),
      child: AppBar(

        leading: !DeviceUtils.isDesktopScreen(context)
            ? IconButton(
                onPressed: () => scaffoldKey?.currentState?.openDrawer(),
                icon: Icon(Iconsax.menu))
            : null,


        title: DeviceUtils.isDesktopScreen(context)
            ? SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.search_normal),
                      hintText: 'Search anything...'),
                ),
              )
            : null,


        actions: [

          if (!DeviceUtils.isDesktopScreen(context))
            IconButton(onPressed: () {}, icon: Icon(Iconsax.search_normal)),


          IconButton(onPressed: () {}, icon: Icon(Iconsax.notification)),
          SizedBox(width: AppSizes.spaceBtwSections / 2),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SiajRoundedImage(
                width: 40,
                height: 40,
                padding: 2,
                image: ImagesPath.user,
              ),
              SizedBox(width: AppSizes.sm),


              if (!DeviceUtils.isMobileScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Yuvanraj",
                        style: Theme.of(context).textTheme.titleLarge),

                    Text("itsmeyuvanraj@gmail.com",
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                )
            ],
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(DeviceUtils.getAppBarHeight() + 15);
}
