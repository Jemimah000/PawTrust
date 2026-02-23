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
// Main Screen (Stateful)
// -----------------------
class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  int count = 0;
  bool isDark = false;

  // Increment counter with debug log
  void increment() {
    setState(() {
      count++;
      debugPrint("Button Pressed! Current count: $count");
    });
  }

  // Toggle theme with debug log
  void toggleTheme(bool value) {
    setState(() {
      isDark = value;
      debugPrint("Theme Changed: ${isDark ? "Dark Mode" : "Light Mode"}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(
        title: const Text("Hot Reload & DevTools Demo"),
        centerTitle: true,
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
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: increment,
              child: const Text("Increment Counter"),
            ),

            const SizedBox(height: 30),

            Switch(
              value: isDark,
              onChanged: toggleTheme,
            ),

            Text(
              isDark ? "Dark Mode Enabled" : "Light Mode Enabled",
              style: TextStyle(
                fontSize: 16,
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
      "Interactive Widget Tree Demo 🚀",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}