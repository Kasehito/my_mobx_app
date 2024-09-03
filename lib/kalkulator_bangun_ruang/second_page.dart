import 'package:flutter/material.dart';
import 'package:my_mobx_app2/kalkulator_bangun_ruang/space_calculator_store.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Calcu()),
            );
          },
          child: Text('Go to Second Screen CUBIC'),
        ),
      ),
    );
  }
}