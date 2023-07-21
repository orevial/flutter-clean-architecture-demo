import 'package:domain/domain.dart';

abstract class CoursesRepository {
  Future<List<Course>> getCourses();

  Future<List<CourseProgress>> getCoursesProgresses();

  Future<void> updateCourseProgress(CourseProgress progress);
}
