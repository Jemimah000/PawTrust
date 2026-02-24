import 'package:flutter/material.dart';

// A simple Stateless header that never changes unless rebuilt by a parent.
class DemoHeader extends StatelessWidget {
  final String title;

  const DemoHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}

// A Stateful widget that manages an interactive counter and a color toggle.
class InteractiveBody extends StatefulWidget {
  const InteractiveBody({Key? key}) : super(key: key);

  @override
  _InteractiveBodyState createState() => _InteractiveBodyState();
}

class _InteractiveBodyState extends State<InteractiveBody> {
  int _count = 0;
  bool _isDarkMode = false;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _toggleTheme(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  Color get _boxColor => _isDarkMode ? Colors.deepPurple : Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: _boxColor,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Text(
            '$_count',
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: _increment,
          icon: const Icon(Icons.add),
          label: const Text('Increment'),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Light'),
            Switch(value: _isDarkMode, onChanged: _toggleTheme),
            const Text('Dark')
          ],
        ),
        const SizedBox(height: 8),
        Text(
          _isDarkMode ? 'Dark Mode Active' : 'Light Mode Active',
          style: TextStyle(fontStyle: FontStyle.italic),
        )
      ],
    );
  }
}

// The combined demo screen. The header is Stateless; the body is Stateful.
class StatelessStatefulDemo extends StatelessWidget {
  const StatelessStatefulDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateless vs Stateful Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            DemoHeader(title: 'Interactive Counter App'),
            SizedBox(height: 12),
            InteractiveBody(),
          ],
        ),
      ),
    );
  }
}
