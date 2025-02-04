import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider for Design JSON (Form Structure)
final formJsonProvider = StateProvider<String>((ref) {
  return '''
  [
    { "field_name": "f1", "widget": "dropdown", "valid_values": ["A", "B"] },
    { "field_name": "f2", "widget": "textfield", "visible": "f1=='A'" }
  ]
  ''';
});

// Provider for User Data (Stores entered values)
final userDataProvider = StateProvider<String>((ref) {
  return '{}';
});
