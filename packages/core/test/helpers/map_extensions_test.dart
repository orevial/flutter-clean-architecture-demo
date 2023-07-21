import 'package:core/helpers/map.extensions.dart';
import 'package:test/test.dart';

void main() {
  group('where', () {
    final map = {
      'key1': 'value1',
      'key2': 'value2',
      'key3': 'value3',
      'key4': 'value4',
    };

    test('with keys', () {
      expect(
        map.where((key, value) => key == 'key2'),
        {
          'key2': 'value2',
        },
      );
    });

    test('with values', () {
      expect(
        map.where((key, value) => value == 'value2'),
        {
          'key2': 'value2',
        },
      );
    });

    test('with both keys and value', () {
      expect(
        map.where((key, value) => key == 'key2' && value == 'value2'),
        {
          'key2': 'value2',
        },
      );
      expect(
        map.where((key, value) => key == 'key2' && value == 'unknown'),
        <String, String>{},
      );
      expect(
        map.where((key, value) => key == 'unknown' && value == 'value2'),
        <String, String>{},
      );
    });
  });

  test('filter nullable values', () {
    expect(
      {
        'key1': 'value1',
        'key2': null,
        'key3': 'value3',
        'key4': null,
      }.filterNullableValues(),
      {
        'key1': 'value1',
        'key3': 'value3',
      },
    );
  });
}
