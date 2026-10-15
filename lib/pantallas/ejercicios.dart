import 'package:flutter/material.dart';

import '../logica/ejercicios.dart';

class PantallaEjercicios extends StatefulWidget {
  const PantallaEjercicios({super.key});

  @override
  State<PantallaEjercicios> createState() => _PantallaEjerciciosState();
}

class _PantallaEjerciciosState extends State<PantallaEjercicios> {
  final TextEditingController controlador = TextEditingController();

  String resultado = '';

  void verificarPrimo() {
    int? numero = int.tryParse(controlador.text);

    setState(() {
      if (numero == null) {
        resultado = 'Ingrese un numero entero';
      } else if (Ejercicios.esPrimo(numero)) {
        resultado = '$numero es primo';
      } else {
        resultado = '$numero no es primo';
      }
    });
  }

  void calcularFactorial() {
    int? numero = int.tryParse(controlador.text);

    setState(() {
      if (numero == null) {
        resultado = 'Ingrese un numero entero';
      } else {
        resultado = Ejercicios.factorial(numero);
      }
    });
  }

  void verificarCapicua() {
    int? numero = int.tryParse(controlador.text);

    setState(() {
      if (numero == null) {
        resultado = 'Ingrese un numero entero';
      } else if (Ejercicios.esCapicua(numero)) {
        resultado = '$numero es capicua';
      } else {
        resultado = '$numero no es capicua';
      }
    });
  }

  void limpiar() {
    controlador.clear();

    setState(() {
      resultado = '';
    });
  }

  @override
  void dispose() {
    controlador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0FF),

      appBar: AppBar(
        title: const Text('Ejercicios'),
        backgroundColor: const Color(0xFF6258E8),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          children: [
            const SizedBox(height: 25),

            TextField(
              controller: controlador,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese un numero entero',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF35B58E),
                  foregroundColor: Colors.white,
                ),
                onPressed: verificarPrimo,
                child: const Text('Numero primo'),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4D8CF5),
                  foregroundColor: Colors.white,
                ),
                onPressed: calcularFactorial,
                child: const Text('Factorial'),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF6474),
                  foregroundColor: Colors.white,
                ),
                onPressed: verificarCapicua,
                child: const Text('Numero capicua'),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9974E8),
                  foregroundColor: Colors.white,
                ),
                onPressed: limpiar,
                child: const Text('Limpiar'),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              resultado,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 17, color: Color(0xFF34366F)),
            ),
          ],
        ),
      ),
    );
  }
}
