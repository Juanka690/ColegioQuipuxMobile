import 'package:flutter/material.dart';
import 'Materias.dart';
import 'Estudiante.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Colegio Quipux', nombre: 'Juan Camilo Cardona'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.nombre}) : super(key: key);

  final String title;
  final String nombre;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _navigateToNuevaPantalla(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Materia()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
            Text(widget.nombre),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: GestureDetector(
            onTap: () {
              _navigateToNuevaPantalla(context);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Colegio Quipux',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Container(
                  width: 300,
                  height: 200,
                  child: Image.asset('assets/images/quipux.png'),
                ),
                SizedBox(height: 1),
                Text(
                  'Presione para acceder al panel de administración',
                  style: TextStyle(fontSize: 16, color: Colors.indigo),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
