import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/module/pessoa.dart';
import 'package:test/test.dart';

void main(){
   test('Cálculo do IMC', () {
    var pessoa = Pessoa('Maria', 70, 1.75);
    expect(calcularIMC(pessoa), closeTo(22.86, 0.01));
  });

  test('Altura deve ser maior que zero', () {
    var pessoa = Pessoa('Maria', 60, 0);
    expect(() => calcularIMC(pessoa), throwsException);
  });
}