

double calcularDesconto(double valor, double desconto, bool percentual) {
  if (valor <= 0) {
    throw ArgumentError("O valor do produto não pode ser zero");
  }

  if (percentual) {
    return (valor * desconto) / 100;
  }
  return valor - desconto;
}

double retornarValor(double valor){
  return valor;
}

