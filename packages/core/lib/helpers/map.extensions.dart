extension MapExtensions<T, R> on Map<T, R> {
  Map<T, R> where(bool Function(T key, R value) test) {
    return Map.fromEntries(
      entries.where((entry) => test(entry.key, entry.value)),
    );
  }
}

extension NullableMapExtensions<T, R> on Map<T, R?> {
  Map<T, R> filterNullableValues() {
    return where((key, value) => value != null)
        .map((key, value) => MapEntry(key, value as R));
  }
}
