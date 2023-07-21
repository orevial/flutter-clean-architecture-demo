part of 'course_list_bloc.dart';

@freezed
class CourseListState with _$CourseListState {
  const factory CourseListState.initial() = _Initial;

  const factory CourseListState.loading() = _Loading;

  const factory CourseListState.content(List<Course> courses) = _Content;

  const factory CourseListState.error() = _Error;
}
