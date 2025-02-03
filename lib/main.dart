import 'package:flutter/material.dart';
import 'package:flutter_task_project/app.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() async {
  // Remove # sign from url
  usePathUrlStrategy();
  runApp(App());
}
