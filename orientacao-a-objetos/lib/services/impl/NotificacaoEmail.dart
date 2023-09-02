import 'package:orientacao_a_objetos/module/pessoa_abstract.dart';
import 'package:orientacao_a_objetos/services/NotificationInterface.dart';

class NotificacaoEmail implements NotificationInterface{
  @override
  void EnviarNotficacao(Pessoa pessoa) {
    print("Enviando Email para: ${pessoa.getNome()}");
  }
}