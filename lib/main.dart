import 'package:flutter/material.dart';

void main() {
  runApp(const MeshTalkieApp());
}

class MeshTalkieApp extends StatelessWidget {
  const MeshTalkieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mesh Talkie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesh Рация и Чат'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.radio, size: 100, color: Colors.blue),
            const SizedBox(height: 20),
            const Text(
              'Поиск устройств Mesh...',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Здесь будет логика работы рации
              },
              child: const Text('НАЖМИ И ГОВОРИ (PTT)', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
