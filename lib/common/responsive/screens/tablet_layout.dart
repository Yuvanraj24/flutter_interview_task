import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/layouts/headers/header.dart';
import 'package:flutter_task_project/common/layouts/sidebars/sidebar.dart';

/// Widget for Tablet layout
class TabletLayout extends StatelessWidget {
  TabletLayout({super.key, this.body});

  final Widget? body;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: CustomSideBar(),
        appBar: CustomHeader(scaffoldKey: scaffoldKey),
        body: body ?? SizedBox());
  }
}
