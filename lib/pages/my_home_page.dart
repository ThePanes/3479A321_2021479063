
import 'package:aplication_laboratorio/pages/ramos.dart';
import 'package:aplication_laboratorio/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

   void _decrementCounter() {
    setState(() {
      _counter--;
    });
  } 
    void _restartCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
Widget build(BuildContext context) {
  var logger = Logger();
  logger.d("Logger is working in homepage build!");

  var card = Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icons/amd.svg',
                semanticsLabel: 'Dart Logo'
              ),
              const Text('Pulsaste esta cantidad de veces el boton:'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              OverflowBar(
                alignment: MainAxisAlignment.center,
                children: counterOptions,
              ),
              OverflowBar(
                alignment: MainAxisAlignment.center,
                children: counterOptions,
              ),
              TextButton(onPressed: _decrementCounter, child: Text("hola"))
            ],
          ),
        );
  return Center(

    child: Column(
      children: [
        card,
        card
      ],
    ),
  );
}

  List<Widget> get counterOptions {
    return [
      TextButton(onPressed: _incrementCounter, child: const Icon(Icons.add)),
      TextButton(onPressed: _decrementCounter, child: const Icon(Icons.remove)),
      TextButton(onPressed: _restartCounter, child: const Icon(Icons.restore)),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const StartPage()),
          );
        },
        child: const Icon(Icons.open_in_new), // o const Text('Abrir ventana')
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Ramos()),
          );
        },
        child: const Icon(Icons.open_in_new), // o const Text('Abrir ventana')
      ),

    ];
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required int counter,
  }) : _counter = counter;

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
        'assets/icons/amd.svg',
        semanticsLabel: 'Dart Logo'
        ),
        const Text('Pulsaste esta cantidad de veces el boton:'),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
