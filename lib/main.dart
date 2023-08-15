import 'package:flutter/material.dart';
import 'package:kpop_database/views/view_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Data Display',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JSON Data Display'),
        ),
        body: ItemListView(),
      ),
    );
  }
}
