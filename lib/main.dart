import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Principal(),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 10.0),
          children: [DrawerHeader(
            child: Text('Menú Lateral', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
            decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Catalogo'),
            ),
            ListTile(
              leading: Icon(Icons.build),
              title: Text('Inventario'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Salir'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuración'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Opcion5()));
              }
            )],
          ),
      ),
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}

class Opcion5 extends StatelessWidget {
  const Opcion5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hola Opcion 5'),
    );
  }
}