extension FutureX<T> on Future<T> {
  /// Equivalent to [Future.then] except that the return value of the
  /// future passed in parameter will be ignored and will be replaced by
  /// the current future return value. In case an error happens in the parameter
  /// future, this error will be used and propagated to other futures.
  ///
  /// E.g.:
  /// Future.value('A')
  ///   .thenExecute(Future.value('B'));
  /// => will execute future with value B but in the end will return 'A'
  Future<T> thenExecute<R>(Future<R> Function(T value) onValue) => then(
        (initialValue) => onValue(initialValue).then((_) => initialValue),
      );
}
