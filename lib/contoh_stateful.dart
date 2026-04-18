import 'package:flutter/material.dart';

class ContohStateful extends StatefulWidget {
  const ContohStateful({super.key});

  @override
  State<ContohStateful> createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<ContohStateful> {
  int counter = 0; // Variabel state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contoh Stateful")),
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
                  setState(() {
                    counter++; // Menggunakan setState agar tampilan terupdate
                  });
                },
                child: const Text("Tambah"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
                child: const Text("Reset"),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Catatan: Di Stateful, angka di atas AKAN berubah karena menggunakan setState()."),
          )
        ],
      ),
    );
  }
}
