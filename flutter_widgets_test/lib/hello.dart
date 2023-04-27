import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello Flutter!"),),
      body: const Center(child: Text("Merhaba Flutter!", style: TextStyle(fontSize: 38, color: Colors.red)))
    );
  }
}