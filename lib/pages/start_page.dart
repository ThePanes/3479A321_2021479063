import 'package:aplication_laboratorio/pages/config.dart';
import 'package:aplication_laboratorio/pages/notas.dart';
import 'package:aplication_laboratorio/pages/profile.dart';
import 'package:aplication_laboratorio/pages/ramos.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    return Scaffold(
      appBar: AppBar(title: const Text('Pagina de Inicio')),
      body: Center(
        child: Column(
          children: [
            const Icon(
                Icons.person,
                size: 80,
                color: Colors.blueGrey,
            ),
            const SizedBox(height: 16),
            const Text(
              'Bienvenido, "Usuario"',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 24),
            SizedBox(
              child: TableCalendar(
                rowHeight: 43,
                
                headerStyle: HeaderStyle(formatButtonVisible: false),
                focusedDay: today, 
                firstDay: DateTime.utc(2010,10,16), 
                lastDay: DateTime.utc(2030,3,14)
              ),
            ),
            Text("Actividades Pendientes:"),
            Column(
              children: [
                Card(
                  color: Color.fromARGB(255, 253, 164, 164),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Jueves 15/05/2025",),
                          const Icon(
                            Icons.dangerous,
                            size: 80,
                            color: Color.fromARGB(255, 253, 62, 62),
                          ),
                          Text("Entrega tarea matematicas",),
                          const SizedBox(height: 20,width: 10,),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 235, 237, 105),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                      OverflowBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Text("Viernes 15/05/2025",),
                          const Icon(
                            Icons.dangerous,
                            size: 80,
                            color: Color.fromARGB(255, 253, 62, 62),
                          ),
                          Text("Entrega tarea lenguaje",),
                          const SizedBox(height: 20,width: 10,),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Notas()),
            );
          },
          child: Column(
            children: [
              const Icon(Icons.note),
              const Text('Promedio')
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          },
          child: Column(
            children: [
              const Icon(Icons.person),
              const Text('Perfil')
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ramos()),
            );
          },
          child: Column(
            children: [const Icon(Icons.book),const Text('Ramos')],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Config()),
            );
          },
          child: Column(
            children: [
              const Icon(Icons.settings),
              const Text('Configuracion')
            ],
          ),
        ),
        
      ],

    );
  }
}
