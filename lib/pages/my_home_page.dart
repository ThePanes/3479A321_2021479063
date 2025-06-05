
import 'package:aplication_laboratorio/pages/about.dart';
import 'package:aplication_laboratorio/pages/listcontent.dart';
import 'package:aplication_laboratorio/pages/preferencia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isResetEnabled = false;
  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isResetEnabled = prefs.getBool('isResetEnabled') ?? false;
    });
  }
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
  void _restartCounter() async {
    final prefs = await SharedPreferences.getInstance();
    bool isResetEnabled = prefs.getBool('isResetEnabled') ?? false;

    if (isResetEnabled) {
      setState(() {
        _counter = 0;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Reiniciar contador no esta permitido.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
  @override
  void initState() {
    super.initState();
    _loadPreferences(); 
  }

  @override
  Widget build(BuildContext context) {
    
    var logger = Logger();

    logger.d("Logger is working in homepage build!");

    return Scaffold(
      bottomNavigationBar: NavigationBar( onDestinationSelected: 
      (int index){
        setState(() {
          switch(index){
            case 0:
              break;
            case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListContent()),
                );
              break;
            case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              break;
            case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Preferencia()),
                ).then((_) {
                  _loadPreferences();
                });
              break;
          }
        });
      },
      destinations: const <Widget>
        [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.home), label: 'ListContent'),
          NavigationDestination(icon: Icon(Icons.home), label: 'About'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Preferencia'),
        ]
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
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
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: CounterOptions,
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  List<Widget> get CounterOptions {
    return [
      TextButton(onPressed: _incrementCounter, child: const Icon(Icons.add)),
      TextButton(onPressed: _decrementCounter, child: const Icon(Icons.remove)),
      TextButton(
        onPressed: _isResetEnabled ? _restartCounter : null,
        child: const Icon(Icons.restore),
      ),
    ];
  }
}
