void main(List<String> arguments) {
  var numeros = [1, 5, 9, 50, 80, 45, 90, 74];
  var acum = 0;

  for (var numero in numeros) {
    acum = acum + numero;
    print(numero);
  }
  print(acum);
}