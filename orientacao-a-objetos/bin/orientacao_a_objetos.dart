import 'package:orientacao_a_objetos/enum/tipo_notificacao.dart';
import 'package:orientacao_a_objetos/module/pessoa_fisica.dart';
import 'package:orientacao_a_objetos/module/pessoa_juridica.dart';
import 'package:orientacao_a_objetos/services/EnviarNotificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = PessoaFisica("Rauane", "Rua lapadinha", "111.222.333-44", tipoNotificacao: TipoNotificacao.SMS);
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica("Lojinha do ti", "Rua do sofrimento", "0101110011", tipoNotificacao: TipoNotificacao.EMAIL);
  print(pessoaJuridica1);

  EnviarNotficacao enviarNotficacao = EnviarNotficacao();
  enviarNotficacao.notificar(pessoaFisica1);
  enviarNotficacao.notificar(pessoaJuridica1);
}
