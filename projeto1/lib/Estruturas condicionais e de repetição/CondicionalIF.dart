import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  var line = stdin.readLineSync(encoding: utf8);
  print("Informe a primeira nota: ");
  print(line);

  // var prova1 = 8;
  // var prova2 = 5;
  // var media = (prova1 + prova2) / 2;

  // if (media >= 7) {
  //   print("Notas: $prova1 | $prova2");
  //   print("O aluno passou com a nota: $media");
  // } else if(media >= 5){
  //   print("Notas: $prova1 | $prova2");
  //   print("O aluno está de recuperação com a nota: $media");
  // }
  // else {
  //   print("Notas: $prova1 | $prova2");
  //   print("O aluno reprovou com a nota: $media");
  // }

  // String resultado = prova1 >= 7 ? "O aluno passou" : "O aluno reprovado";
  // print(resultado);
}
