import 'package:flutter/material.dart';
import 'package:tugas_slicing_starbhak_mart/components/component.dart';
import 'package:tugas_slicing_starbhak_mart/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
