import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers.dart';


class DynamicFormScreen extends ConsumerWidget {
  const DynamicFormScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      appBar: AppBar(title: const Text("Dynamic Form Builder")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // JSON Editor
            Expanded(
              child: TextField(
                maxLines: 5,
                decoration: const InputDecoration(labelText: "Form JSON"),
                controller: TextEditingController(text: formJson),
                onChanged: (value) => ref.read(formJsonProvider.notifier).state = value,
              ),
            ),

            // User Data Editor
            Expanded(
              child: TextField(
                maxLines: 5,
                decoration: const InputDecoration(labelText: "User Data JSON"),
                controller: TextEditingController(text: userData),
                onChanged: (value) => ref.read(userDataProvider.notifier).state = value,
              ),
            ),

            // Dynamic Form
            Expanded(
              child: ListView(
                children: formFields.map((field) {
                  bool isVisible = true;
                  if (field.containsKey("visible")) {
                    final condition = field["visible"];
                    if (condition.contains("f1=='A'")) {
                      isVisible = userValues["f1"] == "A";
                    } else if (condition.contains("f1=='B'")) {
                      isVisible = userValues["f1"] == "B";
                    }
                  }
                  if (!isVisible) return Container();

                  return _buildField(field, ref, userValues);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
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