import 'package:flutter/material.dart';
import 'package:test/welcome.dart';


/// Flutter code sample for [ReorderableListView].

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: WelcomPage(),
    );
  }
}
