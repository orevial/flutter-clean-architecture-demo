import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:test/test.dart';

void main() {
  test('getIt shortcut', () {
    expect(getIt, same(GetIt.instance));
  });
}
