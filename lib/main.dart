import 'package:my_mobx_app2/kalkulator_bangun_ruang/second_page.dart';
import 'package:my_mobx_app2/kalkulator_bangun_ruang/space_calculator_store.dart';
import 'package:flutter/material.dart';

import 'kalkulator_bangun_ruang/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter First',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SecondPage(),
    );
  }
}
