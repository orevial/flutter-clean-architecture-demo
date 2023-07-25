// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/api/api.dart' as _i9;
import 'package:data/datasources/settings.datasource.dart' as _i5;
import 'package:data/datasources/courses.datasource.dart' as _i8;
import 'package:data/di/modules/api.module.dart' as _i12;
import 'package:data/helpers/local_storage.dart' as _i4;
import 'package:data/repositories/settings.repository.dart' as _i7;
import 'package:data/repositories/courses.repository.dart' as _i11;
import 'package:dio/dio.dart' as _i3;
import 'package:domain/repositories/courses.repository.dart' as _i10;
import 'package:domain/repositories/settings.repository.dart' as _i6;
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
    final apiConfig = _$ApiConfig();
    gh.lazySingleton<_i3.Dio>(() => apiConfig.createDio());
    gh.factory<_i4.LocalStorage>(() => _i4.SharedPreferencesStorage());
    gh.factory<_i5.SettingsDataSource>(
        () => _i5.SettingsDataSourceImpl(localStorage: gh<_i4.LocalStorage>()));
    gh.factory<_i6.SettingsRepository>(
        () => _i7.SettingsRepositoryImpl(gh<_i5.SettingsDataSource>()));
    gh.factory<String>(
      () => apiConfig.baseUrl,
      instanceName: 'flutterTipsAndTricksBaseUrl',
    );
    gh.factory<_i8.UserDataSource>(
        () => _i8.UserDataSourceImpl(localStorage: gh<_i4.LocalStorage>()));
    gh.singleton<_i9.CoursesApi>(_i9.CoursesApi(
      gh<_i3.Dio>(),
      baseUrl: gh<String>(instanceName: 'flutterTipsAndTricksBaseUrl'),
    ));
    gh.factory<_i10.CoursesRepository>(() => _i11.CoursesRepositoryImpl(
          gh<_i8.UserDataSource>(),
          gh<_i9.CoursesApi>(),
        ));
    return this;
  }
}

class _$ApiConfig extends _i12.ApiConfig {}
