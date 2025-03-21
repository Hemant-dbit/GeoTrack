import 'package:flutter/material.dart';

class OffsiteWorkPage extends StatelessWidget {
  const OffsiteWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offsite Work'),
      ),
      body: Center(
        child: Text(
          'This is the Offsite Work Page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
