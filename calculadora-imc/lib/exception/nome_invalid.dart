class NomeInvalid implements Exception{
  String error() => "Nome inválido!";

  @override
  String toString() {
    return error();
  }
}

class AlturaInvalid implements Exception{
  String error() => "Altura deve ser maior que zero.";

  @override
  String toString() {
    return error();
  }
}