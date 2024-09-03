// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'store/calculator_store.dart';
import 'widgets/custom_text_field.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<CalculatorStore>(create: (_) => CalculatorStore()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('MobX Calculator')),
        body: CalculatorWidget(),
      ),
    );
  }
}

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorStore>(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(
            builder: (_) => CustomTextField(
              hintText: 'Enter first number',
              controller: TextEditingController(text: calculator.input1),
              onChanged: (value) => calculator.setInput1(value),
            ),
          ),
          const SizedBox(height: 16),
          Observer(
            builder: (_) => DropdownButton<String>(
              value: calculator.operator,
              onChanged: (value) => calculator.setOperator(value!),
              items: ['+', '-', '*', '/']
                  .map((op) => DropdownMenuItem(
                        value: op,
                        child: Text(op),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 16),
          Observer(
            builder: (_) => CustomTextField(
              hintText: 'Enter second number',
              controller: TextEditingController(text: calculator.input2),
              onChanged: (value) => calculator.setInput2(value),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => calculator.calculate(),
            child: const Text('='),
          ),
          const SizedBox(height: 16),
          Observer(
            builder: (_) => Text(
              'Result: ${calculator.result}',
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
