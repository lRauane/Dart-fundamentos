class NomeInvalid implements Exception{
  String error() => "Nome Inválido!";

  @override
  String toString() {
    return error();
  }
}