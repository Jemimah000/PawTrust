import 'package:flutter/material.dart';
import 'package:pawtrust/screens/stateless_stateful_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PawTrust Demo',
      theme: ThemeData.light(),
      home: const StatelessStatefulDemo(),
    );
  }
}

// -----------------------
// Stateless Widget
// -----------------------
class DemoHeader extends StatelessWidget {
  const DemoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Interactive Widget Tree Demo 🚀",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}