import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  const Config({super.key});

  @override
  State<Config> createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configuracion')),
      body: Column(
        children: <Widget>[
          OverflowBar(
            alignment: MainAxisAlignment.center,
            children: [
              Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Fuente",),
                          const Icon(
                            Icons.font_download,
                            size: 80,
                            color: Color.fromARGB(255, 125, 176, 206),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Tema",),
                          const Icon(
                            Icons.theater_comedy,
                            size: 80,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Cerrar Sesion",),
                          const Icon(
                            Icons.close,
                            size: 80,
                            color: Color.fromARGB(255, 242, 5, 5),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}