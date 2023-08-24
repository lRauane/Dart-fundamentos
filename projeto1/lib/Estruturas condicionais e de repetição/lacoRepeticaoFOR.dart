import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  var resultado = 0;
  var qtd = 0;
  print("Informe a qtd de números: ");
  var line = stdin.readLineSync(encoding: utf8);
  qtd = int.parse(line ?? '0');

  for (var i = 0; i <= qtd; i++) {
    print("Informe o número: ");
    line = stdin.readLineSync(encoding: utf8);
    var numero = int.parse(line ?? '0');


    resultado = resultado + numero;
    print("$i - $resultado");
  }

}
