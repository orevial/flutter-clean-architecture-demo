import 'package:data/models/courses.model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'generated/api.g.dart';

@singleton
@RestApi()
abstract class CoursesApi {
  @factoryMethod
  factory CoursesApi(
    Dio dio, {
    @Named('flutterTipsAndTricksBaseUrl') String baseUrl,
  }) = _CoursesApi;

  @GET('/courses.json')
  Future<CoursesResponse> getCourses();
}
