import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ListScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 20, 
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.list, color: Colors.blue),
            title: Text(
              'Item ${index + 1}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
