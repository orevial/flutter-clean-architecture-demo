part of 'course_list_bloc.dart';

@freezed
class CourseListEvent with _$CourseListEvent {
  const factory CourseListEvent.load() = _Load;
  const factory CourseListEvent.retry() = _Retry;
}
