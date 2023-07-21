part of 'course_progress_bloc.dart';

@freezed
class CourseProgressState with _$CourseProgressState {
  const factory CourseProgressState.initial() = _Initial;

  const factory CourseProgressState.loading() = _Loading;

  const factory CourseProgressState.content(
    List<CourseProgress> courseProgresses,
  ) = _Content;
}
