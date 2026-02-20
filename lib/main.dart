import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// -----------------------
// Root Widget (Stateless)
// -----------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoScreen(),
    );
  }
}

// -----------------------
// Main Screen
// -----------------------
class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  int count = 0;
  bool isDark = false;

  void increment() {
    setState(() {
      count++;
    });
  }

  void toggleTheme(bool value) {
    setState(() {
      isDark = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(
        title: const Text("Stateless vs Stateful Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const DemoHeader(), // Stateless Widget
            
            const SizedBox(height: 30),

            Text(
              "Count: $count",
              style: TextStyle(
                fontSize: 24,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: increment,
              child: const Text("Increment"),
            ),

            const SizedBox(height: 20),

            Switch(
              value: isDark,
              onChanged: toggleTheme,
            ),

            Text(
              isDark ? "Dark Mode" : "Light Mode",
              style: TextStyle(
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
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
      "Interactive Widget Tree Demo",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}