extension FutureDynamicX on Future<dynamic> {
  Future<List<dynamic>?> toFutureNullableList() {
    return then((data) {
      if (data == null) {
        return null;
      } else if (data is List) {
        return data;
      } else if (data is Iterable) {
        return data.toList();
      }
      throw Exception('Value $data is not a list (type: ${data.runtimeType})');
    }).catchError((dynamic e) {
      throw Exception('Value is not a list: $e');
    });
  }

  Future<List<dynamic>> toFutureList() {
    return toFutureNullableList().then((value) {
      if (value != null) {
        return value;
      }
      throw Exception('Expected a non-nullable value');
    });
  }
}
