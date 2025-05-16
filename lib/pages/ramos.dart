import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';

class Ramos extends StatefulWidget {
  const Ramos({super.key});

  @override
  State<Ramos> createState() => _RamosState();
}

class _RamosState extends State<Ramos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ramos')),
      body: Column(
        children: <Widget>[
          OverflowBar(
            alignment: MainAxisAlignment.center,
            children: [
              Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Mathmatics()),
                              );
                            },
                            child: Column(
                              children: [
                                
                                Text("Matematicas",),
                                SizedBox(width: 400,height:100,child: Image.asset('assets/matematicasensenanzamedia.jpg',fit: BoxFit.cover,),),
                                Text("Curso: 8B",),
                              ],
                            ),
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
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Languaje()),
                              );
                            },
                            child: Column(
                              children: [
                                Text("Lenguaje",),
                                SizedBox(width: 400,height:100,child: Image.asset('assets/len.jpg',fit: BoxFit.cover,),),
                                Text("Curso: 8B",),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const History()),
                              );
                            },
                            child: Column(
                              children: [
                                Text("Historia",),
                                SizedBox(width: 400,height:100,child: Image.asset('assets/historia.jpg',fit: BoxFit.cover,),),
                                Text("Curso: 8B",),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
/////////////////////////////////////////WIDGETS DE LOS RAMOS/////////////////////////////////
class Mathmatics extends StatefulWidget {
  const Mathmatics({super.key});

  @override
  State<Mathmatics> createState() => _MathmaticsState();
}
class _MathmaticsState extends State<Mathmatics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Matematicas')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Informacion del Modulo:",textScaleFactor: 2,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.picture_as_pdf,
                size: 40,
                color: Color.fromARGB(255, 220, 56, 56),
              ),
              const Icon(
                Icons.download,
                size: 40,
                color: Color.fromARGB(255, 255, 86, 86),
              ),
              Text("Plan de Clases",textScaleFactor: 2,),
              SizedBox(width: 50,),
              const Icon(
                Icons.picture_as_pdf,
                size: 40,
                color: Color.fromARGB(255, 220, 56, 56),
              ),
              const Icon(
                Icons.download,
                size: 40,
                color: Color.fromARGB(255, 255, 86, 86),
              ),
              Text("Reuniones de Apoderados",textScaleFactor: 2,),
            ],
          ),
          Card(
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Unidad 1:Potencias",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          Text("Unidad 2:Potencias con Fracciones",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          Text("Unidad 3:Potencias y mas potencias",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          Text("NOTAS DEL RAMO",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
          ),
        ]
      ),
    );
  }
}
class Languaje extends StatefulWidget {
  const Languaje({super.key});

  @override
  State<Languaje> createState() => _LanguajeState();
}
class _LanguajeState extends State<Languaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lenguaje')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Informacion del Modulo:",textScaleFactor: 2,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.picture_as_pdf,
                size: 40,
                color: Color.fromARGB(255, 220, 56, 56),
              ),
              const Icon(
                Icons.download,
                size: 40,
                color: Color.fromARGB(255, 255, 86, 86),
              ),
              Text("Plan de Clases",textScaleFactor: 2,),
              SizedBox(width: 50,),
              const Icon(
                Icons.picture_as_pdf,
                size: 40,
                color: Color.fromARGB(255, 220, 56, 56),
              ),
              const Icon(
                Icons.download,
                size: 40,
                color: Color.fromARGB(255, 255, 86, 86),
              ),
              Text("Reuniones de Apoderados",textScaleFactor: 2,),
            ],
          ),
          Card(
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Unidad 1:Cuentos",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          Text("Unidad 2:Fabulas",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          Text("Unidad 3:Poemas",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          Text("NOTAS DEL RAMO",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
          ),
        ]
      ),
    );
  }
}
class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}
class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lenguaje')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Informacion del Modulo:",textScaleFactor: 2,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.picture_as_pdf,
                size: 40,
                color: Color.fromARGB(255, 220, 56, 56),
              ),
              const Icon(
                Icons.download,
                size: 40,
                color: Color.fromARGB(255, 255, 86, 86),
              ),
              Text("Plan de Clases",textScaleFactor: 2,),
              SizedBox(width: 50,),
              const Icon(
                Icons.picture_as_pdf,
                size: 40,
                color: Color.fromARGB(255, 220, 56, 56),
              ),
              const Icon(
                Icons.download,
                size: 40,
                color: Color.fromARGB(255, 255, 86, 86),
              ),
              Text("Reuniones de Apoderados",textScaleFactor: 2,),
            ],
          ),
          Card(
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Unidad 1:Historia siglo XVII",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          Text("Unidad 2:Historia siglo XVIII",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          Text("Unidad 3:Historia siglo XVIV",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          Text("NOTAS DEL RAMO",),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Color.fromARGB(255, 255, 86, 86),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
          ),
        ]
      ),
    );
  }
}