void main (List<String> arguments){
  /* TIPOS DE DADOS: DOUBLE*/
  double numero1 = 10.1;

  print("Remove o ponto flutuante: ");
  print(numero1.truncate());

  print("Converte para inteiro: ");
  print(numero1.toInt());

  print("Arredonda para cima: ");
  print(numero1.ceil());

  print("Arredonda para baixo: ");
  print(numero1.floor());

  print("Convertestring para double: ");
  print(double.parse("10"));
  print(double.tryParse("teste"));
}