import 'package:data/api/api.dart';
import 'package:data/datasources/courses.datasource.dart';
import 'package:data/models/user_progress.model.dart';
import 'package:domain/entities/course.entity.dart';
import 'package:domain/entities/user_progress.entity.dart';
import 'package:domain/repositories/courses.repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CoursesRepository)
class CoursesRepositoryImpl implements CoursesRepository {
  final CoursesDataSource userDataSource;
  final CoursesApi api;

  CoursesRepositoryImpl(this.userDataSource, this.api);

  @override
  Future<List<Course>> getCourses() {
    return api
        .getCourses()
        .then((courses) => courses.courses.map((e) => e.toEntity()).toList());
  }

  @override
  Future<List<CourseProgress>> getCoursesProgresses() {
    return userDataSource
        .getCourseProgresses()
        .then((progresses) => progresses.map((p) => p.toEntity()).toList());
  }

  @override
  Future<void> updateCourseProgress(CourseProgress progress) {
    return userDataSource
        .updateCourseProgress(CourseProgressResponse.fromEntity(progress));
  }
}
