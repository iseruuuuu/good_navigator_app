import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(backgroundColor: Colors.amber),
      body: const Center(
        child: Text('Second Screen'),
      ),
    );
  }
}
