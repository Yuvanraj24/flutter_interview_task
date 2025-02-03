import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/layouts/headers/header.dart';
import 'package:flutter_task_project/common/layouts/sidebars/sidebar.dart';

/// Widget for the Mobile layout
class MobileLayout extends StatelessWidget {
  MobileLayout({super.key, this.body});

  final Widget? body;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: CustomSideBar(),
        appBar: CustomHeader(
          key: scaffoldKey,
        ),
        body: body ?? SizedBox());
  }
}
