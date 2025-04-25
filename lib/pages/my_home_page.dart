
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

    return Center(
      child: Card(
        
        child: 
        
             Content(counter: _counter),
         
        ),
      );
    
  }

  List<Widget> get counterOptions {
    return [
      TextButton(onPressed: _incrementCounter, child: const Icon(Icons.add)),
      TextButton(onPressed: _decrementCounter, child: const Icon(Icons.remove)),
      TextButton(onPressed: _restartCounter, child: const Icon(Icons.restore))
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
