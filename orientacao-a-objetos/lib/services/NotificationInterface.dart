import 'package:orientacao_a_objetos/module/pessoa_abstract.dart';
import 'package:orientacao_a_objetos/services/EnviarNotificacao.dart';

abstract class NotificationInterface{
  void EnviarNotficacao(Pessoa pessoa);
}