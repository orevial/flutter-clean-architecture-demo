// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i4;
import 'package:domain/repositories/courses.repository.dart' as _i6;
import 'package:domain/repositories/settings.repository.dart' as _i8;
import 'package:domain/usecases/get_courses.usecase.dart' as _i5;
import 'package:domain/usecases/get_courses_progresses.usecase.dart' as _i3;
import 'package:domain/usecases/get_theme.usecase.dart' as _i7;
import 'package:domain/usecases/update_course_progress.usecase.dart' as _i9;
import 'package:domain/usecases/update_theme.usecase.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.GetCoursesProgressesUseCase>(
        () => _i3.GetCoursesProgressesUseCase(gh<_i4.CoursesRepository>()));
    gh.factory<_i5.GetCoursesUseCase>(
        () => _i5.GetCoursesUseCase(gh<_i6.CoursesRepository>()));
    gh.factory<_i7.GetThemeUseCase>(
        () => _i7.GetThemeUseCase(gh<_i8.SettingsRepository>()));
    gh.factory<_i9.UpdateCourseProgressUseCase>(
        () => _i9.UpdateCourseProgressUseCase(gh<_i4.CoursesRepository>()));
    gh.factory<_i10.UpdateThemeUseCase>(
        () => _i10.UpdateThemeUseCase(gh<_i8.SettingsRepository>()));
    return this;
  }
}
