import 'package:flutter/material.dart';
import 'package:good_navigaror_app/second_screen.dart';

import 'amination.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  blackOut(const SecondScreen()),
                );
              },
              child: const Text('blackOut'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  whiteOut(const SecondScreen()),
                );
              },
              child: const Text('whiteOut'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  slideIn(const SecondScreen()),
                );
              },
              child: const Text('slideIn'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  scaleUpTransition(const SecondScreen()),
                );
              },
              child: const Text('scaleUpTransition'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  flipTransition(const SecondScreen()),
                );
              },
              child: const Text('flipTransition'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  elasticTransition(const SecondScreen()),
                );
              },
              child: const Text('elasticTransition'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  diagonalSlideTransition(const SecondScreen()),
                );
              },
              child: const Text('diagonalSlideTransition'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  verticalFlipTransition(const SecondScreen()),
                );
              },
              child: const Text('verticalFlipTransition'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  fadeThroughColorTransition(
                    const SecondScreen(),
                    Colors.white,
                  ),
                );
              },
              child: const Text('fadeThroughColorTransition'),
            ),
          ],
        ),
      ),
    );
  }
}
