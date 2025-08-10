import 'package:flutter/material.dart';
import 'package:aura_icon/aura_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: AuraIcon(
            shape: AuraShape.circle,
            size: 150,
            radius: 20, // Tighter blob movement
            colors: [
              Colors.orange,
              Colors.deepOrange,
            ],
          ),
        ),
      ),
    );
  }
}
