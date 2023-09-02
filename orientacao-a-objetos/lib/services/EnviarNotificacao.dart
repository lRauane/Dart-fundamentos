import 'package:orientacao_a_objetos/enum/tipo_notificacao.dart';
import 'package:orientacao_a_objetos/module/pessoa_abstract.dart';
import 'package:orientacao_a_objetos/services/NotificationInterface.dart';
import 'package:orientacao_a_objetos/services/impl/NotificacaoEmail.dart';
import 'package:orientacao_a_objetos/services/impl/NotificacaoPUSH.dart';
import 'package:orientacao_a_objetos/services/impl/NotificacaoSMS.dart';

class EnviarNotficacao {
  NotificationInterface? notification;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.SMS:
        notification = NotificacaoSMS();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notification = NotificacaoPUSH();
        break;
      case TipoNotificacao.EMAIL:
        notification = NotificacaoEmail();
        break;
      default:
        break;
    }
    if (notification != null) {
      notification!.EnviarNotficacao(pessoa);
    } else{
      print("Pessoa sem tipo de notificação!");
    }
  }
}
