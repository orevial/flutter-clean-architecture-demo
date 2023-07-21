import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_progress.entity.freezed.dart';

@freezed
class CourseProgress with _$CourseProgress {
  const factory CourseProgress({
    required String courseId,
    required int currentPage,
    required bool isOver,
  }) = _CourseProgress;

  const CourseProgress._();

  factory CourseProgress.defaultProgress(String courseId) => CourseProgress(
        courseId: courseId,
        currentPage: 0,
        isOver: false,
      );

  double progressPercentage(int coursesPages) {
    if (isOver) {
      return 1.0;
    } else if (currentPage == 0 || coursesPages == 0) {
      return 0.0;
    } else {
      return currentPage / coursesPages;
    }
  }
}
