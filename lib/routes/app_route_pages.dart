import 'package:flutter/cupertino.dart';
import 'package:flutter_task_project/features/home/screens/home.dart';
import 'package:flutter_task_project/routes/app_routes.dart';

class AppRoutesPages {

  static final Map<String,WidgetBuilder> pages = {
    AppRoutes.initial : (context) => const HomeView(),
  };
}