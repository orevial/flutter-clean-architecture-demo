import 'package:core/helpers/future.extensions.dart';
import 'package:core/helpers/iterable.extensions.dart';
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

  group('intersperse', () {
    test('with empty iterable', () {
      expect(
        <int>[].intersperse(123),
        <int>[],
      );
    });

    test('with single value iterable', () {
      expect(
        <int>[1].intersperse(123),
        <int>[1],
      );
    });

    test('with values', () {
      expect(
        [1, 2, 3, 4, 5].intersperse(0),
        [1, 0, 2, 0, 3, 0, 4, 0, 5],
      );
    });
  });

  test('map with index', () {
    expect(
      ['A', 'B', 'C'].mapWithIndex((i, e) => '$e$i'),
      ['A0', 'B1', 'C2'],
    );
  });

  group('nullable iterables', () {
    test('is null or empty', () {
      expect(null.isNullOrEmpty, isTrue);
      expect(<int>[].isNullOrEmpty, isTrue);
      expect(<int>[1, 2, 3].isNullOrEmpty, isFalse);
    });

    test('is not null or empty', () {
      expect(null.isNotNullOrEmpty, isFalse);
      expect(<int>[].isNotNullOrEmpty, isFalse);
      expect(<int>[1, 2, 3].isNotNullOrEmpty, isTrue);
    });
  });
}
