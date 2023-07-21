part of 'course_progress_bloc.dart';

@freezed
class CourseProgressEvent with _$CourseProgressEvent {
  const factory CourseProgressEvent.load() = _Load;

  const factory CourseProgressEvent.updateProgress(
    String courseId,
    int currentPage, {
    required bool isOver,
  }) = _UpdateProgress;
}
