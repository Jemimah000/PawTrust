import 'package:flutter/material.dart';

class StatelessStatefulDemo extends StatelessWidget {
  const StatelessStatefulDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless vs Stateful Demo"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: DemoHeader()),   // Stateless Widget
          SizedBox(height: 30),
          DemoBody(),                    // Stateful Widget
        ],
      ),
    );
  }
}

// --------------------
// Stateless Widget
// --------------------
class DemoHeader extends StatelessWidget {
  const DemoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Interactive Demo App",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// --------------------
// Stateful Widget
// --------------------
class DemoBody extends StatefulWidget {
  const DemoBody({super.key});

  @override
  State<DemoBody> createState() => _DemoBodyState();
}

class _DemoBodyState extends State<DemoBody> {
  int counter = 0;
  Color backgroundColor = Colors.white;

  void incrementCounter() {
    setState(() {
      counter++;
      backgroundColor =
          backgroundColor == Colors.white ? Colors.blue.shade100 : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: backgroundColor,
      child: Column(
        children: [
          Text(
            "Count: $counter",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: incrementCounter,
            child: const Text("Increase"),
          ),
        ],
      ),
    );
  }
}