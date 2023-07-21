import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/course.entity.freezed.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String id,
    required String name,
    required List<CoursePage> pages,
  }) = _Course;
}

@freezed
class CoursePage with _$CoursePage {
  const factory CoursePage({
    required String name,
    required String content,
  }) = _CoursePage;
}
