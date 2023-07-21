import 'package:domain/entities/course.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/courses.model.freezed.dart';

part 'generated/courses.model.g.dart';

@freezed
class CoursesResponse with _$CoursesResponse {
  const factory CoursesResponse({required List<CourseResponse> courses}) =
      _CoursesResponse;

  factory CoursesResponse.fromJson(Map<String, dynamic> json) =>
      _$CoursesResponseFromJson(json);
}

@freezed
class CourseResponse with _$CourseResponse {
  const factory CourseResponse({
    required String id,
    required String name,
    required List<CoursePageResponse> pages,
  }) = _CourseResponse;

  const CourseResponse._();

  factory CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseResponseFromJson(json);

  Course toEntity() {
    return Course(
      id: id,
      name: name,
      pages: pages.map((p) => p.toEntity()).toList(),
    );
  }
}

@freezed
class CoursePageResponse with _$CoursePageResponse {
  const factory CoursePageResponse({
    required String name,
    required String content,
  }) = _CoursePageResponse;

  const CoursePageResponse._();

  factory CoursePageResponse.fromJson(Map<String, dynamic> json) =>
      _$CoursePageResponseFromJson(json);

  CoursePage toEntity() {
    return CoursePage(
      name: name,
      content: content,
    );
  }
}
