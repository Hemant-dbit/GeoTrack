import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
      ),
      body: Center(
        child: Text(
          'This is the Services Page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
