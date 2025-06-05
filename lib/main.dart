import 'package:aplication_laboratorio/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      title: 'laboratorio seis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 26, 128, 142)),
        fontFamily: 'PixelRetro'
      ),
      home: const MyHomePage(title: 'laboratorio seis inicio'),
    );
  }
}
