import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'component/input_widget.dart';
import 'component/result_widget.dart';
import 'shape_store.dart';

class ShapeCalculator extends StatelessWidget {
  final ShapeStore store = ShapeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shape Calculator with MobX'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.teal.shade100,
              Colors.teal.shade50,
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menghitung luas berbagai bentuk:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
                ),
              ),
              SizedBox(height: 20),

              // Persegi
              _buildSectionTitle('Persegi', Icons.crop_square),
              InputWidget(
                hintText: 'Sisi Persegi',
                onChanged: (value) => store.setSisi(double.tryParse(value) ?? 0),
              ),
              Observer(
                builder: (_) => ResultWidget(
                  title: 'Luas Persegi',
                  result: '${store.hitungPersegi.toStringAsFixed(2)}',
                ),
              ),
              SizedBox(height: 20),

              // Persegi Panjang
              _buildSectionTitle('Persegi Panjang', Icons.crop_7_5),
              InputWidget(
                hintText: 'Alas Persegi Panjang',
                onChanged: (value) => store.setAlas(double.tryParse(value) ?? 0),
              ),
              InputWidget(
                hintText: 'Tinggi Persegi Panjang',
                onChanged: (value) => store.setTinggi(double.tryParse(value) ?? 0),
              ),
              Observer(
                builder: (_) => ResultWidget(
                  title: 'Luas Persegi Panjang',
                  result: '${store.hitungPersegiPanjang.toStringAsFixed(2)}',
                ),
              ),
              SizedBox(height: 20),

              // Trapesium
              _buildSectionTitle('Trapesium', Icons.filter_hdr),
              InputWidget(
                hintText: 'Sisi Atas Trapesium',
                onChanged: (value) => store.setSisiAtas(double.tryParse(value) ?? 0),
              ),
              InputWidget(
                hintText: 'Sisi Bawah Trapesium',
                onChanged: (value) => store.setSisiBawah(double.tryParse(value) ?? 0),
              ),
              InputWidget(
                hintText: 'Tinggi Trapesium',
                onChanged: (value) => store.setTinggi(double.tryParse(value) ?? 0),
              ),
              Observer(
                builder: (_) => ResultWidget(
                  title: 'Luas Trapesium',
                  result: '${store.hitungTrapesium.toStringAsFixed(2)}',
                ),
              ),
              SizedBox(height: 20),

              // Segitiga
              _buildSectionTitle('Segitiga', Icons.change_history),
              InputWidget(
                hintText: 'Alas Segitiga',
                onChanged: (value) => store.setAlas(double.tryParse(value) ?? 0),
              ),
              InputWidget(
                hintText: 'Tinggi Segitiga',
                onChanged: (value) => store.setTinggi(double.tryParse(value) ?? 0),
              ),
              Observer(
                builder: (_) => ResultWidget(
                  title: 'Luas Segitiga',
                  result: '${store.hitungSegitiga.toStringAsFixed(2)}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.teal[800]),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.teal[800],
          ),
        ),
      ],
    );
  }
}
