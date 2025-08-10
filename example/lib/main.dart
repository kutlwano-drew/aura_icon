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
            size: 200,
            radius: 35,
          ),
        ),
      ),
    );
  }
}
