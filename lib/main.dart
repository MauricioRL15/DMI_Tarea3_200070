// Creado por: Mauricio Ramírez López
// Asignatura: Desarrollo Móvil Integral
// Grado y Grupo: 10°A
// Docente: Ramírez Hernández Marco Antonio
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea 3',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 102, 236, 162)),
        useMaterial3: true,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            // Cambio 'headline6' por 'titleLarge'
            fontFamily: 'oswald', // Nombre de la fuente personalizada
            fontSize: 24, // Tamaño de fuente deseado
            color: Colors.black, // Color de fuente deseado
          ),
        ),
      ),
      home: const MyHomePage(title: 'Tarea 3 200070'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      backgroundColor:
          Color.fromARGB(255, 197, 164, 137), // Cambia el color de fondo aquí
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Has presionado el botón esta cantidad de veces:',
              style: TextStyle(
                fontFamily:
                    'DancingScript', // Nombre de la fuente personalizada
                fontSize: 22, // Tamaño de fuente deseado
                color: Colors.black, // Color de fuente deseado
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge, // Cambio 'headline6' por 'titleLarge'
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Aumentar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
