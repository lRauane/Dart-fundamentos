void main(List<String> arguments) {
  List<String> isString = [];
  var IsInt = [1, 10, 100];
  List IsDynamic = [];

  // Tamanho da lista
  print(isString.length);
  print(isString);

  // adicionar items
  IsInt.add(5);
  IsInt.add(10);
  isString.add("Rauane");
  IsDynamic.add(40);
  IsDynamic.add("lua");

  print(isString);
  print(IsInt);
  print(IsDynamic);

  // Remover
  isString.remove("Rauane");
  IsInt.remove(10);
  IsDynamic.remove(40);

  print(isString);
  print(IsInt);
  print(IsDynamic);

  // Verifica se lista está ou não vazia
  print(isString.isEmpty);

  // ver se valor contém na lista
  print(IsDynamic.contains("lua"));

  // Funçao where
  print(IsInt.where((x) => x > 9 && x < 99));
  print(IsDynamic);

}
