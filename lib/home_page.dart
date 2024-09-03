import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.teal,
        elevation: 4.0,
      ),
      body: Container(
        color: Colors.teal.shade50, // Warna latar belakang halaman
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Tambahkan gambar atau logo di atas tombol
              Image.asset(
                'assets/logo.jpg', // Pastikan kamu memiliki gambar di folder assets
                width: 100,
                height: 100,
              ),
              SizedBox(height: 20), // Spasi antara gambar dan tombol
              Text(
                'Selamat Datang di Kalkulator Bangun Datar!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40), // Spasi antara teks dan tombol
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Warna latar belakang tombol
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Mari Menghitung Bangun Datar', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
