// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:screens/courses/bloc/course_list_bloc.dart' as _i3;
import 'package:screens/courses/bloc/course_progress_bloc.dart' as _i5;
import 'package:screens/courses/pages/courses.flow.dart' as _i6;
import 'package:screens/settings/bloc/theme_bloc.dart' as _i8;
import 'package:screens/settings/settings.flow.dart' as _i7;

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
    gh.factory<_i3.CourseListBloc>(
        () => _i3.CourseListBloc(gh<_i4.GetCoursesUseCase>()));
    gh.singleton<_i5.CourseProgressBloc>(_i5.CourseProgressBloc(
      gh<_i4.GetCoursesProgressesUseCase>(),
      gh<_i4.UpdateCourseProgressUseCase>(),
    ));
    gh.lazySingleton<_i6.CoursesFlow>(() => _i6.CoursesFlow());
    gh.lazySingleton<_i7.SettingsFlow>(() => _i7.SettingsFlow());
    gh.singleton<_i8.ThemeBloc>(_i8.ThemeBloc(
      gh<_i4.GetThemeUseCase>(),
      gh<_i4.UpdateThemeUseCase>(),
    ));
    return this;
  }
}
