import 'package:domain/domain.dart';
import 'package:domain/usecases/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateCourseProgressUseCase implements UseCase<void, CourseProgress> {
  final CoursesRepository _coursesRepository;

  UpdateCourseProgressUseCase(this._coursesRepository);

  @override
  Future<void> call({required CourseProgress params}) {
    return _coursesRepository.updateCourseProgress(params);
  }
}
