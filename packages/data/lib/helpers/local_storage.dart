import 'dart:convert';

import 'package:data/helpers/extension_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  Future<void> saveValue(String key, dynamic data);

  Future<void> saveValues(String key, List<dynamic> data);

  Future<void> deleteKey(String key);

  /// ⚠️ Delete all cache entries. Use with care
  Future<void> clear();

  Future<dynamic> readValue(
    String key, {
    dynamic Function(Map<String, dynamic>)? converter,
  });

  Future<List<dynamic>?> readValues(
    String key, {
    dynamic Function(Map<String, dynamic>)? converter,
  });
}

@Injectable(as: LocalStorage)
class SharedPreferencesStorage implements LocalStorage {
  @override
  Future<void> deleteKey(String key) {
    return SharedPreferences.getInstance().then((prefs) => prefs.remove(key));
  }

  @override
  Future<void> clear() {
    return SharedPreferences.getInstance().then((prefs) => prefs.clear());
  }

  @override
  Future<void> saveValue(String key, dynamic value) {
    return SharedPreferences.getInstance().then(
      (prefs) => prefs.setString(
        key,
        json.encode(value),
      ),
    );
  }

  @override
  Future<void> saveValues(String key, List<dynamic> values) {
    return saveValue(key, values);
  }

  @override
  Future<dynamic> readValue(
    String key, {
    dynamic Function(Map<String, dynamic>)? converter,
  }) async {
    assert(
      converter != null,
      'converter must be passed for this storage implementation',
    );

    final String? encodedValue = await SharedPreferences.getInstance().then(
      (prefs) => prefs.getString(
        key,
      ),
    );

    if (encodedValue == null) return null;

    final dynamic decoded = json.decode(encodedValue);
    if (decoded is String) {
      return decoded;
    }
    if (decoded is List ||
        decoded is List<dynamic> ||
        decoded is Iterable ||
        decoded is Iterable<dynamic>) {
      return (json.decode(encodedValue) as List<dynamic>)
          .map((elem) => elem as Map<String, dynamic>)
          .map((value) => converter!(value))
          .toList();
    }

    return converter!(decoded as Map<String, dynamic>);
  }

  @override
  Future<List<dynamic>?> readValues(
    String key, {
    dynamic Function(Map<String, dynamic>)? converter,
  }) async {
    return readValue(key, converter: converter).toFutureNullableList();
  }
}
