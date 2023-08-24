import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Bem vindos a nossa calculadora!");
  print("Informe o primeiro número: ");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe a segundo Número: ");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  print("Informe a operação a ser feita: (+ | - | / | * )");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "";

  switch (operacao) {
    case "+":
      print("Resultado");
      print(numero1 + numero2);
      break;
    case "-":
      print("Resultado");
      print(numero1 - numero2);
      break;
    case "/":
      print("Resultado");
      print(numero1 / numero2);
      break;
    case "*":
      print("Resultado");
      print(numero1 * numero2);
      break;
    default:
    print("Ocorreu um erro, encerrando o programa...");
  }
}
