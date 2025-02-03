import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/layouts/templates/site_layouts.dart';
import 'package:flutter_task_project/features/home/screens/responsive_screens/dashboard_desktop.dart';
import 'package:flutter_task_project/features/home/screens/responsive_screens/dashboard_mobile.dart';
import 'package:flutter_task_project/features/home/screens/responsive_screens/dashboard_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplate(
      desktop: DashboardDesktop(),
      tablet: DashboardTablet(),
      mobile: DashboardMobile(),
    );
  }
}
