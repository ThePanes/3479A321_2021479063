
import 'package:aplication_laboratorio/pages/start_page.dart';
import 'package:flutter/material.dart';

class HomeTitle extends StatefulWidget {
  const HomeTitle({super.key});

  @override
  State<HomeTitle> createState() => _HomeTitleState();
}

class _HomeTitleState extends State<HomeTitle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        clipBehavior: Clip.antiAlias,title:
        Column(
          children: [
            Text("Edufam"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [Image.asset('assets/edufam.png',fit: BoxFit.cover,)],),
            ),
            
            const Icon(
              Icons.person,
              size: 80,
              color: Color.fromARGB(255, 24, 152, 215),
            ),
            const SizedBox(height: 16),
            const Text(
              'Bienvenido, "Usuario"',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StartPage()),
                );
              },
              child: const Text('Iniciar Sesion'),
            ),
          ],
        ),
      ),
    );
  }
}
