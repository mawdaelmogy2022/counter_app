import 'package:counter_app/Screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: CounterScreen(),
    );
  }
}
