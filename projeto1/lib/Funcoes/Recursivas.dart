import 'package:projeto1/Funcoes/utils.dart' as utils;

void main(List<String> arguments) {
  print(fatorial(10));
}

int fatorial(int numero) {
  if (numero == 1) {
    return 1;
  }
  return numero * fatorial(numero - 1);
}
