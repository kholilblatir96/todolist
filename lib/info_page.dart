import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Ini adalah aplikasi daftar tugas sederhana menggunakan Flutter.\n\n'
            'Fitur:\n'
            '- Tambah tugas\n'
            '- Hapus tugas\n'
            '- Navigasi ke halaman info\n\n'
            'Dikembangkan oleh Anda 😊',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
