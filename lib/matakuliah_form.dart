import 'package:flutter/material.dart';
import 'matakuliah_detail.dart';

class MataKuliahForm extends StatefulWidget {
  const MataKuliahForm({super.key});

  @override
  State<MataKuliahForm> createState() => _MataKuliahFormState();
}

class _MataKuliahFormState extends State<MataKuliahForm> {
  final _mataKuliahCtrl = TextEditingController();
  final _sksCtrl = TextEditingController();
  final _semesterCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Mata Kuliah")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Mata Kuliah"),
              controller: _mataKuliahCtrl,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "SKS"),
              controller: _sksCtrl,
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Semester"),
              controller: _semesterCtrl,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MataKuliahDetail(
                      mataKuliah: _mataKuliahCtrl.text,
                      sks: int.tryParse(_sksCtrl.text) ?? 0,
                      semester: _semesterCtrl.text,
                    ),
                  ),
                );
              },
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
