import 'package:projeto1/variaveis.dart' as projeto1;

void main(List<String> arguments) {


  print(projeto1.texto);
  print(projeto1.texto2);

  print("Retorna se o número é par:");
  print(projeto1.numero1.isEven);
  print(projeto1.numero2.isEven);
  print(projeto1.numero3.isEven);
  print("Retorna se o número é impar: ");
  print(projeto1.numero1.isOdd);
  print(projeto1.numero2.isOdd);
  print(projeto1.numero3.isOdd);

  print(projeto1.numero1.isFinite);
  print(projeto1.numero1.isInfinite);
  print(projeto1.numero1.isNaN);

  print("Retorna se o número é negativo: ");
  print((projeto1.numero1 - 1).isNegative);

  print("Converte String para inteiro: ");
  print(int.parse("10"));
  print(int.tryParse("teste"));

  List<String> lista = ["Rauane", "Jos[é]", "Luana"];
  lista.add("Luma");
  var lista2 = [];
  lista2.add("A");

  print(lista);

  
}
