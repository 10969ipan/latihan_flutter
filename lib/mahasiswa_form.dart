import 'package:flutter/material.dart';
import 'mahasiswa_detail.dart';

class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({super.key});

  @override
  State<MahasiswaForm> createState() => _MahasiswaFormState();
}

class _MahasiswaFormState extends State<MahasiswaForm> {
  final _nimCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _alamatCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Mahasiswa")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _nimField(),
            const SizedBox(height: 10),
            _namaField(),
            const SizedBox(height: 10),
            _alamatField(),
            const SizedBox(height: 20),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _nimField() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nimCtrl,
    );
  }

  Widget _namaField() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaCtrl,
    );
  }

  Widget _alamatField() {
    return TextField(
      decoration: const InputDecoration(labelText: "Alamat"),
      controller: _alamatCtrl,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MahasiswaDetail(
              nim: _nimCtrl.text,
              nama: _namaCtrl.text,
              alamat: _alamatCtrl.text,
            ),
          ),
        );
      },
      child: const Text("Simpan"),
    );
  }
}
