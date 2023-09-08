import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static double lerDouble() {
    var value = lerString();

    return double.parse(value);
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}
