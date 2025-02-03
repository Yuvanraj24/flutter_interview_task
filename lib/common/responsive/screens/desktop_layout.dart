import 'package:flutter/material.dart';
import 'package:flutter_task_project/common/layouts/headers/header.dart';
import 'package:flutter_task_project/common/layouts/sidebars/sidebar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomSideBar()),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  // HEADER
                  CustomHeader(),

                  // BODY
                  Expanded(child: body ?? SizedBox())

                ],
              )),
        ],
      ),
    );
  }
}
