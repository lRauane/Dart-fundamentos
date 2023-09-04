import 'package:tratamento_erros/exceptions/nome_invalid_exception.dart';
import 'package:tratamento_erros/modules/aluno.dart';
import 'package:tratamento_erros/utils/utils.dart';

void execute() {
  print("Bem-vindo ao sistema de notas!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno: ");
  try {
    if (nome.trim() == "") {
      throw NomeInvalid();
    }
  } on NomeInvalid{
    nome = "Nome padrão";
    print(NomeInvalid);
  }

  var aluno = Aluno(nome);
  double? nota;

  do {
    nota = ConsoleUtils.lerDoubleComTextoeValidacao(
        "Digite a nota ou S para sair", "S");
    if (nota != null) {
      aluno.addNotas(nota);
    }
  } while (nota != null);
  print("As notas digitadas foram: ${aluno.getNotas()}");
  print("A média do aluno foi: ${aluno.media()}");
  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} foi: Aprovado");
  } else {
    print("O aluno ${aluno.getNome()} foi: Reprovado");
  }
}
