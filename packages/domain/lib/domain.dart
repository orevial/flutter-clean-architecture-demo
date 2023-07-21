/// Domain package represents the domain layer as defined in the Clean Architecture.
/// It contains the business core that is agnostic from any implementation details.
/// It is basically "pure" as it almost doesn't have any dependencies, and
/// it contains things such as usecases and repositories interfaces that
/// will later be implemented by other layers.
///
/// https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html
library domain;

export 'di/di.dart';
export 'entities/course.entity.dart';
export 'entities/user_progress.entity.dart';
export 'repositories/courses.repository.dart';
export 'repositories/settings.repository.dart';
export 'usecases/get_courses.usecase.dart';
export 'usecases/get_courses_progresses.usecase.dart';
export 'usecases/get_theme.usecase.dart';
export 'usecases/update_course_progress.usecase.dart';
export 'usecases/update_theme.usecase.dart';
