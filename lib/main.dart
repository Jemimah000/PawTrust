import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  bool isDark = false;

  void increment() {
    setState(() {
      count++;
    });
  }

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Tree Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count: $count", style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: increment,
                child: Text("Increment"),
              ),
              SizedBox(height: 20),
              Switch(
                value: isDark,
                onChanged: (value) {
                  toggleTheme();
                },
              ),
              Text(isDark ? "Dark Mode" : "Light Mode")
            ],
          ),
        ),
      ),
    );
  }
}
