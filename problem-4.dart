import 'package:flutter/material.dart';

void main() {
  runApp(const TextStylesApp());
}

class TextStylesApp extends StatelessWidget {
  const TextStylesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TextStylesScreen(),
    );
  }
}

class TextStylesScreen extends StatelessWidget {
  const TextStylesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Styling App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Bold Text',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Italic Text',
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 10),
            const Text(
              'Underlined Text',
              style: TextStyle(
                  fontSize: 24,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            const Text(
              'Colored Text',
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Custom Font Size',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Shadowed Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(2, 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
