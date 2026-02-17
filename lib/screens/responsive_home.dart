import 'package:flutter/material.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isTablet = screenWidth > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Home"),
      ),
      body: Padding(
        padding: EdgeInsets.all(isTablet ? 32 : 16),
        child: Column(
          children: [
            // Header Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.blue,
              child: Text(
                "Welcome to PawTrust",
                style: TextStyle(
                  fontSize: isTablet ? 28 : 20,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Main Content
            Expanded(
              child: isTablet
                  ? GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      children: List.generate(
                        4,
                        (index) => Container(
                          color: Colors.orange,
                          child: Center(
                            child: Text(
                              "Card ${index + 1}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          height: 100,
                          color: Colors.orange,
                          child: Center(
                            child: Text(
                              "Card ${index + 1}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
            ),

            // Footer Section
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Get Started"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
