import 'dart:convert';
import 'package:flutter/services.dart';

class JsonService {
  static Future<List<Map<String, dynamic>>> fetchItems() async {
    final jsonStr = await rootBundle.loadString('assets/data.json');
    final List<dynamic> jsonData = json.decode(jsonStr);
    return List<Map<String, dynamic>>.from(jsonData);
  }
}
