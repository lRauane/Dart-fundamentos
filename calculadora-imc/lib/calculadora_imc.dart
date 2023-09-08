import 'package:calculadora_imc/exception/nome_invalid.dart';
import 'package:calculadora_imc/module/pessoa.dart';
import 'package:calculadora_imc/util/classificacao.dart';
import 'package:calculadora_imc/util/console.dart';

void execulte() {
  print("Bem-vindo a calculadora de IMC!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o seu nome: ");
  double peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso: ");
  double altura = ConsoleUtils.lerDoubleComTexto("Digite sua altura: ");

  try {
    if (nome.trim() == '') {
      throw NomeInvalid();
    }
  } on NomeInvalid {
    nome = "Nome padrão";
    print(NomeInvalid);
  }

  Pessoa pessoa = Pessoa(nome, peso, altura);

  double imc = calcularIMC(pessoa);

  print(pessoa);
  print("-------------------------------------");
  classificacao(imc);
  print("O imc de ${pessoa.getNome()} é: $imc");
  print("-------------------------------------");
}

double calcularIMC(Pessoa pessoa) {
  if (pessoa.getaltura() <= 0) {
    throw Exception('Altura deve ser maior que zero.');
  }

  return pessoa.getpeso() / (pessoa.getaltura() * pessoa.getaltura());
}
