import 'package:core/helpers/string.extensions.dart';
import 'package:test/test.dart';

void main() {
  group('isNullOrEmpty', () {
    test('with null string', () {
      expect(
        null.isNullOrEmpty,
        isTrue,
      );
    });

    test('with empty string', () {
      expect(
        ''.isNullOrEmpty,
        isTrue,
      );
    });

    test('with non-empty string', () {
      expect(
        'some string'.isNullOrEmpty,
        isFalse,
      );
    });
  });

  group('isNotNullOrEmpty', () {
    test('with null string', () {
      expect(
        null.isNotNullOrEmpty,
        isFalse,
      );
    });

    test('with empty string', () {
      expect(
        ''.isNotNullOrEmpty,
        isFalse,
      );
    });

    test('with non-empty string', () {
      expect(
        'some string'.isNotNullOrEmpty,
        isTrue,
      );
    });
  });
}
