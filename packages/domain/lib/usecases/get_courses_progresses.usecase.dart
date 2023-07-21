import 'package:domain/domain.dart';
import 'package:domain/usecases/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCoursesProgressesUseCase
    implements NoArgUseCase<List<CourseProgress>> {
  final CoursesRepository _coursesRepository;

  GetCoursesProgressesUseCase(this._coursesRepository);

  @override
  Future<List<CourseProgress>> call() {
    return _coursesRepository.getCoursesProgresses();
  }
}
