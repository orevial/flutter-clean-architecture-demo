import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_progress.model.freezed.dart';

part 'generated/user_progress.model.g.dart';

@freezed
class CourseProgressResponse with _$CourseProgressResponse {
  const factory CourseProgressResponse({
    required String courseId,
    required int currentPage,
    required bool isOver,
  }) = _CourseProgressResponse;

  const CourseProgressResponse._();

  factory CourseProgressResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseProgressResponseFromJson(json);

  factory CourseProgressResponse.fromEntity(CourseProgress progress) => CourseProgressResponse(
        courseId: progress.courseId,
        currentPage: progress.currentPage,
        isOver: progress.isOver,
      );

  CourseProgress toEntity() {
    return CourseProgress(
      courseId: courseId,
      currentPage: currentPage,
      isOver: isOver,
    );
  }
}
