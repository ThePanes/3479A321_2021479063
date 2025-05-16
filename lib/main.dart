import 'package:aplication_laboratorio/pages/home_title.dart';
import 'package:flutter/material.dart';
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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 26, 128, 142),
        ),
        fontFamily: 'Arial',
      ),
      home: const HomeTitle(),
    );
  }
}
