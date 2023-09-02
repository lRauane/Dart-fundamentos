import 'package:orientacao_a_objetos/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = '';
  String _endereco = '';
  String _email = '';
  String _telefone = '';
  String _token = '';
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;


  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome;
  }

  void setEndereco(String endereco){
    _endereco = endereco;
  }

  String getEndereco(){
    return _endereco;
  }
  void setEmail(String email){
    _email = email;
  }

  String getEmail(){
    return _email;
  }

  void setTelefone(String telefone){
    _telefone = telefone;
  }

  String getTelefone(){
    return _telefone;
  }

  void setToken(String token){
    _token = token;
  }

  String getToken(){
    return _token;
  }

  void setTiponotificacao(tipoNotificacao){
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao(){
    return _tipoNotificacao;
  }

  Pessoa(String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}){
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  @override
  String toString(){
    return{
      "Nome": _nome,
      "Endereco": _endereco,
      "Tipo de notificação": _tipoNotificacao
    }.toString();
  }
}