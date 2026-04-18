import 'package:flutter/material.dart';

class MahasiswaDetail extends StatelessWidget {
  final String nim;
  final String nama;
  final String alamat;

  const MahasiswaDetail({
    super.key,
    required this.nim,
    required this.nama,
    required this.alamat,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Mahasiswa")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("NIM : $nim", style: const TextStyle(fontSize: 18)),
            Text("Nama : $nama", style: const TextStyle(fontSize: 18)),
            Text("Alamat : $alamat", style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
