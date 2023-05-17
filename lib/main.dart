import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      home: SafeArea(
          child: Scaffold(
        backgroundColor: const Color(0xff007FFF),
        appBar: AppBar(
          backgroundColor: const Color(0xff0F52BA),
          title: const Text('Ask Me Anything'),
        ),
        body: const Center(
          child: Ball(),
        ),
      )),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  randomBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: randomBall,
      child: Image.asset('images/ball$ballNumber.png'),
    );
  }
}
