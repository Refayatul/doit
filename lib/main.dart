import 'package:flutter/material.dart';
import 'views/homepage.dart';



void main() {
  runApp(const DoIt());
}

class DoIt extends StatelessWidget {
  const DoIt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Do it!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(), // Set the home to HomePage
    );
  }
}
