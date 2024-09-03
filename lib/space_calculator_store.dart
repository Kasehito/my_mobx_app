import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'mobx.dart';

class Calcu extends StatefulWidget {
  const Calcu({super.key});

  @override
  State<Calcu> createState() => _CalcuState();
}

class _CalcuState extends State<Calcu> {
  final store = SpaceCalculatorStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Ruang'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Input untuk Ruang 1 (Balok)
              Card(
                color: Colors.tealAccent.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Ruang 1 (Balok)',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Panjang'),
                        keyboardType: TextInputType.number,
                        onChanged: (value) => store.setLength1(double.parse(value)),
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Lebar'),
                        keyboardType: TextInputType.number,
                        onChanged: (value) => store.setWidth1(double.parse(value)),
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Tinggi'),
                        keyboardType: TextInputType.number,
                        onChanged: (value) => store.setHeight1(double.parse(value)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Input untuk Ruang 2 (Tabung)
              Card(
                color: Colors.orangeAccent.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Ruang 2 (Tabung)',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Jari-jari'),
                        keyboardType: TextInputType.number,
                        onChanged: (value) => store.setRadius2(double.parse(value)),
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Tinggi'),
                        keyboardType: TextInputType.number,
                        onChanged: (value) => store.setHeight2(double.parse(value)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Input untuk Ruang 3 (Bola)
              Card(
                color: Colors.purpleAccent.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Ruang 3 (Bola)',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Jari-jari'),
                        keyboardType: TextInputType.number,
                        onChanged: (value) => store.setRadius3(double.parse(value)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Observer untuk hasil Volume dari setiap bentuk
              Observer(
                builder: (_) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Volume Ruang 1 (Balok): ${store.volume1.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Volume Ruang 2 (Tabung): ${store.volume2.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Volume Ruang 3 (Bola): ${store.volume3.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Divider(color: Colors.grey),
                    Text(
                      'Total Volume: ${store.totalVolume.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
