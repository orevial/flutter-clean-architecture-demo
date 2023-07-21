/// This file content has been shamelessly copied from
/// https://github.com/modulovalue/dart_intersperse
extension IterableExtensions<T> on Iterable<T> {
  /// Puts [element] between every element of this iterable.
  ///
  /// Example:
  ///
  ///     final list1 = <int>[].intersperse(2); // [];
  ///     final list2 = [0].intersperse(2); // [0];
  ///     final list3 = [0, 0].intersperse(2); // [0, 2, 0];
  ///
  Iterable<T> intersperse(T element) sync* {
    final iterator = this.iterator;
    if (iterator.moveNext()) {
      yield iterator.current;
      while (iterator.moveNext()) {
        yield element;
        yield iterator.current;
      }
    }
  }

  /// The current elements of this iterable modified by [toElement].
  ///
  /// Returns a new lazy [Iterable] with elements that are created by
  /// calling `toElement` on each element of this `Iterable` in
  /// iteration order and where each element index is passed to [toElement]
  ///
  /// See also: [Iterable.map]
  Iterable<R> mapWithIndex<R>(R Function(int i, T e) toElement) {
    return toList()
        .asMap()
        .map((index, value) => MapEntry(index, toElement(index, value)))
        .values;
  }
}

extension NullableIterableExtensions<T> on Iterable<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}
