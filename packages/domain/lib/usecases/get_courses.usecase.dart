import 'package:domain/entities/course.entity.dart';
import 'package:domain/repositories/courses.repository.dart';
import 'package:domain/usecases/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCoursesUseCase implements NoArgUseCase<List<Course>> {
  final CoursesRepository _coursesRepository;

  GetCoursesUseCase(this._coursesRepository);

  @override
  Future<List<Course>> call() {
    return _coursesRepository.getCourses().then(
          (courses) => List.of(courses)
            ..sort(
              (a, b) =>
                  ((a.name).toLowerCase()).compareTo((b.name).toLowerCase()),
            ),
        );
  }
}
