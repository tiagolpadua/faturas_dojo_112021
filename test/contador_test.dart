import 'package:faturas_dojo_112021/contador.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Contador', () {
    test('Valor deve iniciar em 0', () {
      expect(Contador().valor, 0);
    });

    test('valor deve incrementar', () {
      final contador = Contador();

      contador.incrementar();

      expect(contador.valor, 1);
    });

    test('valor deve decrementar', () {
      final contador = Contador();

      contador.decrementar();

      expect(contador.valor, -1);
    });
  });
}