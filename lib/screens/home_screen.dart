import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 15, 25, 75),
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Air Quality'),
        centerTitle: true,
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 91, 108, 194),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de visitas: ', style: estiloTexto),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
          print('Tocaste el botón: $contador');
        },
        backgroundColor: const Color.fromARGB(255, 161, 255, 238),
        foregroundColor: const Color.fromARGB(255, 15, 25, 75),
        child: const Icon(Icons.add),
      ),
    );
  }
}
