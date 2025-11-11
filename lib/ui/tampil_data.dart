import 'package:flutter/material.dart';
import 'dart:core';

class TampilDataPage extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahunLahir;

  const TampilDataPage({
    super.key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  });

  @override
  Widget build(BuildContext context) {
    // Hitung umur otomatis berdasarkan tahun sekarang
    int tahunSekarang = DateTime.now().year;
    int umur = tahunSekarang - tahunLahir;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkenalan'),
        centerTitle: true,
        elevation: 3,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.account_circle, size: 90, color: Colors.indigo),
                const SizedBox(height: 20),
                Text(
                  'Nama saya $nama,',
                  style: const TextStyle(
                      fontSize: 18),
                ),
                const SizedBox(height: 5),
                Text(
                  'NIM saya adalah $nim,',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 5),
                Text(
                  'dan umur saya adalah $umur tahun.',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Kembali'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(120, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
