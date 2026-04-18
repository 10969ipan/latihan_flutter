import 'package:flutter/material.dart';

class ContohStateless extends StatelessWidget {
  const ContohStateless({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0; // Variabel lokal
    return Scaffold(
      appBar: AppBar(title: const Text("Contoh Stateless")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Nomor : $counter", style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  counter++; // Nilai bertambah tapi tampilan tidak berubah
                },
                child: const Text("Tambah"),
              ),
              ElevatedButton(
                onPressed: () {
                  counter = 0;
                },
                child: const Text("Reset"),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Catatan: Di Stateless, angka di atas tidak akan berubah saat tombol diklik."),
          )
        ],
      ),
    );
  }
}
