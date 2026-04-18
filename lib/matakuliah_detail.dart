import 'package:flutter/material.dart';

class MataKuliahDetail extends StatelessWidget {
  final String mataKuliah;
  final int sks;
  final String semester;

  const MataKuliahDetail({
    super.key,
    required this.mataKuliah,
    required this.sks,
    required this.semester,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Mata Kuliah")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mata Kuliah : $mataKuliah", style: const TextStyle(fontSize: 18)),
            Text("SKS : $sks", style: const TextStyle(fontSize: 18)),
            Text("Semester : $semester", style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
