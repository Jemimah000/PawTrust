import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  bool isStarted = false;

  void toggleState() {
    setState(() {
      isStarted = !isStarted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PawTrust"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              isStarted
                  ? "Verified Walkers Available 🐾"
                  : "Find Trusted Pet Care Near You",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30),

            Icon(
              Icons.pets,
              size: 100,
              color: isStarted ? Colors.green : Colors.grey,
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: toggleState,
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}