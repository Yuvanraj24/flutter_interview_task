import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/responsive/responsive_design.dart';
import 'package:flutter_task_project/common/responsive/screens/desktop_layout.dart';
import 'package:flutter_task_project/common/responsive/screens/mobile_layout.dart';
import 'package:flutter_task_project/common/responsive/screens/tablet_layout.dart';

class SiteTemplate extends StatelessWidget {
  const SiteTemplate({
    super.key,
    this.desktop,
    this.tablet,
    this.mobile,
    this.useLayout = true,
  });

  final Widget? desktop;


  final Widget? tablet;

  final Widget? mobile;

  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveDesignWidget(
        desktop:
            useLayout ? DesktopLayout(body: desktop) : desktop ?? Container(),
        tablet: useLayout
            ? TabletLayout(body: tablet ?? desktop)
            : tablet ?? desktop ?? Container(),
        mobile: useLayout
            ? MobileLayout(body: mobile ?? desktop)
            : mobile ?? desktop ?? Container(),
      ),
    );
  }
}
