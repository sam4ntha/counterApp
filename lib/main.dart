import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

//Se tienen que implementar los elementos de la clase abstracta
class MyApp extends StatelessWidget {
  const MyApp({super.key});

//Inicio de la app
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreeen(),
    );
  }
}
