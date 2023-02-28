import 'package:flutter/material.dart';

class MultiplierScreen extends StatefulWidget {
  const MultiplierScreen({super.key});

  @override
  State<MultiplierScreen> createState() => _MultiplierScreenState();
}

//Clase privada
class _MultiplierScreenState extends State<MultiplierScreen> {
  int p = 0;
  int s = 0;
  var resultado;

  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 15, 25, 75),
    fontWeight: FontWeight.bold,
  );

  void multiplicar() {
    resultado = s * p;
    setState(() {});
  }

  void incrementars() {
    s++;
    setState(() {});
  }

  void decrementars() {
    s--;
    setState(() {});
  }

  void reiniciars() {
    s = 0;
    setState(() {});
  }

  void incrementarp() {
    p++;
    setState(() {});
  }

  void decrementarp() {
    p--;
    setState(() {});
  }

  void reiniciarp() {
    p = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Color.fromARGB(255, 1, 8, 44),
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplicador Básico'),
        elevation: 10,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text(
                'Multiplicación ',
                style: estiloTexto,
              ),
              Text(
                '$s x $p = $resultado',
                style: estiloTexto,
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                'Multiplicación ',
                style: estiloTexto,
              ),
              Text(
                '$s x $p = $resultado',
                style: estiloTexto,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'El resultado es: $resultado',
                style: estiloTexto,
              )
            ],
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        multiplicar: multiplicar,
        decrementars: decrementars,
        incrementars: incrementars,
        reiniciars: reiniciars,
        decrementarap: decrementarp,
        incrementarp: incrementarp,
        reiniciarp: reiniciarp,
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function multiplicar;
  final Function decrementars;
  final Function incrementars;
  final Function reiniciars;
  final Function decrementarap;
  final Function incrementarp;
  final Function reiniciarp;

  const CustomFloatingActionButton(
      {Key? key,
      required this.multiplicar,
      required this.decrementars,
      required this.incrementars,
      required this.reiniciars,
      required this.decrementarap,
      required this.incrementarp,
      required this.reiniciarp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 7, 40),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => multiplicar(),
          child: const Icon(Icons.close),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 7, 40),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => decrementars(),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 7, 40),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => decrementarap(),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 7, 40),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => reiniciars(),
          child: const Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 7, 40),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => reiniciarp(),
          child: const Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 7, 40),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => incrementars(),
          child: const Icon(Icons.exposure_plus_1),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 7, 40),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => incrementarp(),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
