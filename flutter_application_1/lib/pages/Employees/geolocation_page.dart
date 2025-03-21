import 'package:flutter/material.dart';

class GeolocationPage extends StatelessWidget {
  const GeolocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geolocation'),
      ),
      body: const Center(
        child: Text(
          'This is the Geolocation Page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
