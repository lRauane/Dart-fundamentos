void main (List<String> arguments){
  String texto = "Dio";
  var texto2 = "Trilha de flutter e DART da DIO";

// Tipos de dados: String

  print(texto);
  print(texto2);

  // Comparação se é vazio
  print(texto.isEmpty);
  print("".isEmpty);
  print(" ".isEmpty);

  // Obtem o tamanho da string
  print(texto.length);

  //Maiuscula e minuscula
  print(texto.toLowerCase());
  print(texto2.toUpperCase());

  // Se uma string cotem na outra
  print(texto.contains(texto2));

  // Obtem parte da string
  print(texto.substring(2));
  print(texto.substring(1, 3));

  // Obtem posição de um texto em uma string
  print(texto.indexOf("DI"));

  // substitue uma string para outra
  print(texto.replaceAll("d", "@"));

  // Quebra uma string por um caracter especifico
  print(texto.split("a"));
  print("Nome;Endereço;CEP".split(";"));

  // Remove espaços
  print(" dio ".trim());
  print(" dio ".trimLeft());
  print(" dio ".trimRight());
}