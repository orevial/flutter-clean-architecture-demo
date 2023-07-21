import 'package:core/helpers/future.extensions.dart';
import 'package:test/test.dart';

void main() {
  group('thenExecute', () {
    test('success', () {
      expectLater(
        Future.value('A').thenExecute((_) async => 123),
        completion('A'),
      );
    });

    test('error on first future is returned', () {
      expectLater(
        Future<String>.error('Error A').thenExecute((_) async => 123),
        throwsA(isA<String>().having((e) => e, 'Error is A', 'Error A')),
      );
    });

    test('error on second future is returned', () {
      expectLater(
        Future.value('A').thenExecute((_) => Future<String>.error('Error B')),
        throwsA(isA<String>().having((e) => e, 'Error is B', 'Error B')),
      );
    });
  });
}
