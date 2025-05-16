import 'package:flutter/material.dart';

class Notas extends StatefulWidget {
  const Notas({super.key});

  @override
  State<Notas> createState() => _NotasState();
}

class _NotasState extends State<Notas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Promedio')),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        children: [
          Card(
            color: Color.fromARGB(255, 198, 127, 111),
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Lenguaje",textAlign: TextAlign.center,),
                          SizedBox(width: 400,height:100,child: Image.asset('assets/len.jpg',fit: BoxFit.cover,),),
                          Text("Promedio: 4.7",),
                        ],
                      ),
                    ],
                  ),
          ),
          Card(
            color: Color.fromARGB(253, 131, 131, 246),
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Matematicas",),
                          SizedBox(width: 400,height:100,child: Image.asset('assets/matematicasensenanzamedia.jpg',fit: BoxFit.cover,),),
                          Text("Promedio: 3.7",),
                        ],
                      ),
                    ],
                  ),
          ),
          Card(
            color: Color.fromARGB(253, 219, 155, 26),
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Historia",),
                          SizedBox(width: 400,height:100,child: Image.asset('assets/historia.jpg',fit: BoxFit.cover,),),
                          Text("Promedio: 5.0",),
                        ],
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}