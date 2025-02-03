import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/responsive/responsive_design.dart';
import 'package:flutter_task_project/common/responsive/screens/desktop_layout.dart';
import 'package:flutter_task_project/common/responsive/screens/mobile_layout.dart';
import 'package:flutter_task_project/common/responsive/screens/tablet_layout.dart';

/// Site template for overall site layout, responsive to different screen sizes
class SiteTemplate extends StatelessWidget {
  const SiteTemplate({
    super.key,
    this.desktop,
    this.tablet,
    this.mobile,
    this.useLayout = true,
  });

  /// Widget for desktop layout
  final Widget? desktop;

  /// Widget for tablet layout
  final Widget? tablet;

  /// Widget for mobile layout
  final Widget? mobile;

  /// Flag to determine whether to use the layout
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
