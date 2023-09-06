import 'package:testes/classes/viaCEP.dart';
import 'package:testes/testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('calcula o desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  test('verifica erros', () {
    expect(() => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('calcula o desconto com porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), 150);
  });

  group('calcula o valor do produto com desconto: ', () {
    var valuesToTest = {
      {"valor": 1000, "desconto": 150, "percentual": false}: 850,
      {"valor": 1000, "desconto": 15, "percentual": true}: 150,
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values: Esperado: $expected', () {
        expect(
            app.calcularDesconto(
                double.parse(values["valor"].toString()),
                double.parse(values["desconto"].toString()),
                values["percentual"] == true),
            equals(expected));
      });
    });
  });

  test('Retornar CEP', () async{
    viaCEP viacep= viaCEP();
    var body = await viacep.retornarCEP("01001000");

    expect(body['bairro'], equals("Sé"));
    expect(body['logradouro'], equals("Praça da Sé"));
  });
}

