import 'package:flutter/material.dart';
import 'package:flutter_task_project/constants/app_texts.dart';
import 'package:flutter_task_project/constants/theme/theme.dart';
import 'package:flutter_task_project/routes/app_route_pages.dart';
import 'package:flutter_task_project/routes/app_routes.dart';
import 'package:flutter_task_project/utils/device/web_scroll.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.appName,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppCustomScrollBehavior(),
      routes: AppRoutesPages.pages,
      initialRoute: AppRoutes.initial,
    );
  }
}
