import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:projeto1/Fundamentos/variaveis.dart';

void main(List<String> arguments) {
  print("Bem vindos a nossa calculadora!");

  var numero1 = lerConsoleDouble("Informe o primeiro número: ");

  var numero2 = lerConsoleDouble("Informe a segundo Número: ");

  var operacao = lerConsole("Informe a operação a ser feita: (+ | - | / | * )");

  calcular(operacao, numero1, numero2);
}

double lerConsoleDouble(String texto){
   var numero = double.tryParse(lerConsole(texto));
   if(numero == null){
    return 0.0;
   } else{
    return numero;
   }
}

void calcular(String operacao, double numero1, double numero2){
  double resultado = 0;
  switch (operacao) {
    case "+":
      resultado = soma(numero1, numero2);
      break;
    case "-":
      resultado = sub(numero1, numero2);
      break;
    case "/":
      resultado = div(numero1, numero2);
      break;
    case "*":
      resultado = multi(numero1, numero2);
      break;
    default:
      print("Ocorreu um erro, encerrando o programa...");
      exit(0);
  }

  print("Operação solicitada: $operacao");
  print("Resultado da continha é: $resultado");
}

String lerConsole(String texto){
  print(texto);
    var line = stdin.readLineSync(encoding: utf8);
    return line ?? "";
}

double soma(double number1, double number2) {
  return number1 + number2;
}

double sub(double number1, double number2) {
  return number1 - number2;
}

double multi(double number1, double number2) {
  return number1 * number2;
}

double div(double number1, double number2) {
  if(numero2 == 0){
    return 0;
  } else{
  return number1 / number2;
  }
}
