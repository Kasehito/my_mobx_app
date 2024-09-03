import 'package:flutter/material.dart';

import 'package:tugasmobxbangundatar/shape_calculator.dart';
import 'home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Routing Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(), // Home Page
        '/details': (context) =>  ShapeCalculator(), // Details Page
      },
    );
  }
}
