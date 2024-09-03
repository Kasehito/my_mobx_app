import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'bmi_store.dart';

class MenBmiCalculator extends StatelessWidget {
  final MenBmiStore store = MenBmiStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Men\'s BMI Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Weight (kg)'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                final parsedValue = double.tryParse(value);
                if (parsedValue != null) {
                  store.setWeight(parsedValue);
                }
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Height (cm)'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                final parsedValue = double.tryParse(value);
                if (parsedValue != null) {
                  store.setHeight(parsedValue);
                }
              },
            ),
            SizedBox(height: 20),
            Observer(
              builder: (_) => Column(
                children: [
                  Text(
                    'BMI: ${store.bmi.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    store.bmiCategory,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}