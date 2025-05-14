import 'package:aplication_laboratorio/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var logger = Logger();

    logger.d("Logger is working!");

    return MaterialApp(
      title: 'laboratorio tres',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 26, 128, 142)),
        fontFamily: 'PixelRetro'
      ),
      home: const MyHomePage(title: 'laboratorio tres inicio'),
    );
  }
}

 class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Route')),
      body: Center(
        child: ElevatedButton(
          // Within the SecondRoute widget
        onPressed: () {
          Navigator.pop(context);
        },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Route')),
      body: Center(
        child: ElevatedButton(
          // Within the ThirdRoute widget
        onPressed: () {
          Navigator.pop(context);
        },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
