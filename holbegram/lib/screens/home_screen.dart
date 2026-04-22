import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Holbegram", style: TextStyle(fontFamily: 'Billabong')),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: const Center(
        child: Text("Bienvenue sur Holbegram !", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}