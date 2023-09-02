import 'package:orientacao_a_objetos/module/pessoa_abstract.dart';
import 'package:orientacao_a_objetos/services/NotificationInterface.dart';

class NotificacaoPUSH implements NotificationInterface{
  @override
  void EnviarNotficacao(Pessoa pessoa) {
    print("Enviando PUSH para: ${pessoa.getNome()}");
  }
}