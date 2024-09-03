import 'package:flutter/material.dart';

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
        '/details': (context) =>  _shapeCalculator(), // Details Page
      },
    );
  }

  Widget _shapeCalculator() {
      // Define the implementation of the ShapeCalculator widget here
      // ...
      return Container(); // Replace Container() with your desired widget
  }
}
