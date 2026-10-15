class Ejercicios {
  static bool esPrimo(int numero) {
    if (numero < 2) {
      return false;
    }

    for (int i = 2; i < numero; i++) {
      if (numero % i == 0) {
        return false;
      }
    }

    return true;
  }

  static String factorial(int numero) {
    if (numero < 0) {
      return 'Ingrese un numero positivo';
    }

    int resultado = 1;
    String operacion = '';

    for (int i = 1; i <= numero; i++) {
      resultado = resultado * i;
      operacion += '$i x ';
    }

    if (numero == 0 || numero == 1) {
      return '$numero! = 1';
    }

    operacion = operacion.substring(0, operacion.length - 3);

    return '$numero! = $operacion = $resultado';
  }


  static bool esCapicua(int numero) {
    String original = numero.toString();
    String invertido = original.split('').reversed.join();

    return original == invertido;
  }
}
