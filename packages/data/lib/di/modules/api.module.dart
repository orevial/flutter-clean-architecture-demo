import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

const apiVersion = 'v1';

@module
abstract class ApiConfig {
  @lazySingleton
  Dio createDio() => Dio()
    ..interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) {
          if (response.requestOptions.method == HttpMethod.GET) {
            response.data = jsonDecode(response.data as String);
          }
          return handler.next(response);
        },
      ),
    );

  @Named('flutterTipsAndTricksBaseUrl')
  String get baseUrl =>
      'https://gitlab.com/stack-labs/oss/flutter-tips-and-tricks/-/snippets/2233566/raw/main/';
}
