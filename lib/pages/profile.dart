import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Column(
        children: <Widget>[
          OverflowBar(
            alignment: MainAxisAlignment.center,
            children: [
              Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                    children: <Widget>[
                     const Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.blueGrey,
                      ),
                      const Text('"Usuario"',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Icon(
                            Icons.edit,
                            size: 30,
                            color: Color.fromARGB(255, 196, 194, 191),
                          ),
                      const SizedBox(height: 25),
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
                          Text("Correo Electronico: userpadre@institucion.nombre.cl",),
                          const Icon(
                            Icons.edit,
                            size: 30,
                            color: Color.fromARGB(255, 196, 194, 191),
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
                          Text("Contraseña: ***********",),
                          const Icon(
                            Icons.remove_red_eye,
                            size: 30,
                            color: Color.fromARGB(255, 196, 194, 191),
                          ),
                          const Icon(
                            Icons.edit,
                            size: 30,
                            color: Color.fromARGB(255, 196, 194, 191),
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
                          Text("Direccion: calle salmo*******",),
                          const Icon(
                            Icons.remove_red_eye,
                            size: 30,
                            color: Color.fromARGB(255, 196, 194, 191),
                          ),
                          const Icon(
                            Icons.edit,
                            size: 30,
                            color: Color.fromARGB(255, 196, 194, 191),
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
                          Text("Telefono: +56947*******",),
                          const Icon(
                            Icons.remove_red_eye,
                            size: 30,
                            color: Color.fromARGB(255, 196, 194, 191),
                          ),
                          const Icon(
                            Icons.edit,
                            size: 30,
                            color: Color.fromARGB(255, 196, 194, 191),
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
                          SizedBox(height: 40,width: 350,),
                          Text("Colegio San Mamasemamakusa",),
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
