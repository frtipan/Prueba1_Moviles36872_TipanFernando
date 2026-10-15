
import 'package:flutter/material.dart';
import 'pantallas/bienvenida.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mis Ejercicios',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Bienvenida(),
    );
  }
}
