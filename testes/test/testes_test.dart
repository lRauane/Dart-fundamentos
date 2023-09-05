import 'package:testes/testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('calcula o desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  test('verifica erros', () {
    expect(() => app.calcularDesconto(0, 150, false), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('calcula o desconto com porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), 150);
  });
}
