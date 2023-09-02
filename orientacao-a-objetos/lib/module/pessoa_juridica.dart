import 'package:orientacao_a_objetos/enum/tipo_notificacao.dart';
import 'package:orientacao_a_objetos/module/pessoa_abstract.dart';

class PessoaJuridica extends Pessoa {
  String _CNPJ = '';

  PessoaJuridica(String nome, String endereco, String cnpj, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao : tipoNotificacao) {
    _CNPJ = cnpj;
  }

  void setCNPJ(String cnpj) {
   _CNPJ = cnpj;
  }

  String getCNPJ() {
    return _CNPJ;
  }

  @override
  String toString() {
    return {
      "Tipo": "PJ",
      "Nome": super.getNome(),
      "Endereco": super.getEndereco(),
      "CNPJ": _CNPJ,
      "Tipo de notificação": super.getTipoNotificacao()
    }.toString();
  }
}
