import 'package:flutter/material.dart';
import 'men_bmi_calculator.dart';
import 'women_bmi_calculator.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenBmiCalculator()),
                );
              },
              child: Text('Men\'s BMI Calculator'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WomenBmiCalculator()),
                );
              },
              child: Text('Women\'s BMI Calculator'),
            ),
          ],
        ),
      ),
    );
  }
}