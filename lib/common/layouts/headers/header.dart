import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/images/rounded_image.dart';
import 'package:flutter_task_project/constants/colors.dart';
import 'package:flutter_task_project/constants/images_paths.dart';
import 'package:flutter_task_project/constants/sizes.dart';
import 'package:flutter_task_project/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

/// Header Widget for the application
class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key, this.scaffoldKey});

  /// Global key to access the Scaffold state
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
        /// Mobile Menu
        leading: !DeviceUtils.isDesktopScreen(context)
            ? IconButton(
                onPressed: () => scaffoldKey?.currentState?.openDrawer(),
                icon: Icon(Iconsax.menu))
            : null,

        /// Search Field
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

        /// Actions
        actions: [
          // Search Icon on Mobile
          if (!DeviceUtils.isDesktopScreen(context))
            IconButton(onPressed: () {}, icon: Icon(Iconsax.search_normal)),

          // Notification Icon
          IconButton(onPressed: () {}, icon: Icon(Iconsax.notification)),
          SizedBox(width: AppSizes.spaceBtwSections / 2),

          // User Data
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

              // Name and Email
              if (!DeviceUtils.isMobileScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // controller.loading.value
                    //     ? const SiajShimmerEffect(width: 50, height: 13)
                    //     :
                    Text("controller.user.value.fullName",
                        style: Theme.of(context).textTheme.titleLarge),
                    // controller.loading.value
                    //     ? const SiajShimmerEffect(width: 50, height: 13)
                    //     :
                    Text("controller.user.value.email",
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
