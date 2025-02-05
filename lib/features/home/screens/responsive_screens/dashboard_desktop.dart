import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_task_project/constants/sizes.dart';
import 'package:flutter_task_project/features/home/Form/providers.dart';
import 'package:flutter_task_project/features/home/screens/widgets/dashboard_card.dart';

class DashboardDesktop extends ConsumerWidget {
  const DashboardDesktop({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final formJson = ref.watch(formJsonProvider);
    final userData = ref.watch(userDataProvider);

    List<dynamic> formFields;
    try {
      formFields = jsonDecode(formJson);
    } catch (e) {
      formFields = [];
    }

    Map<String, dynamic> userValues;
    try {
      userValues = jsonDecode(userData);
    } catch (e) {
      userValues = {};
    }
    
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Dashboard', style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: AppSizes.spaceBtwSections),

            Row(
              children: [
                Expanded(
                    child: SiajDashboardCard(
                  title: 'Number of JSON Data',
                  subTitle: '8',
                )),

                SizedBox(width: AppSizes.spaceBtwItems),
                Expanded(
                  child: SiajDashboardCard(
                    title: 'Number of User Data Loaded',
                    subTitle: '105',
                  ),
                ),
              ],
            ),
        
            SizedBox(height: AppSizes.spaceBtwSections),


          ],
        ),
      ),
    ));
  }

  Widget _buildField(Map<String, dynamic> field, WidgetRef ref, Map<String, dynamic> userValues) {
    final fieldName = field["field_name"];
    final widgetType = field["widget"];
    final currentValue = userValues[fieldName] ?? "";

    if (widgetType == "dropdown") {
      return DropdownButtonFormField<Object>(
        value: currentValue.isEmpty ? null : currentValue,
        items: (field["valid_values"] as List<dynamic>)
            .map((value) => DropdownMenuItem(value: value, child: Text(value)))
            .toList(),
        onChanged: (value) {
          final newUserData = {...userValues, fieldName: value};
          ref.read(userDataProvider.notifier).state = jsonEncode(newUserData);
        },
        decoration: InputDecoration(labelText: fieldName),
      );
    } else if (widgetType == "textfield") {
      return TextField(
        decoration: InputDecoration(labelText: fieldName),
        controller: TextEditingController(text: currentValue),
        onChanged: (value) {
          final newUserData = {...userValues, fieldName: value};
          ref.read(userDataProvider.notifier).state = jsonEncode(newUserData);
        },
      );
    }
    return Container();
  }
}


