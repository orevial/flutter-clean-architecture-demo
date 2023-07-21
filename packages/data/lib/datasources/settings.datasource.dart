import 'package:data/constants.dart';
import 'package:data/helpers/local_storage.dart';
import 'package:domain/entities/user_theme.entity.dart';
import 'package:injectable/injectable.dart';

abstract class SettingsDataSource {
  Future<UserTheme> getTheme();

  Future<void> updateTheme(UserTheme theme);
}

@Injectable(as: SettingsDataSource)
class SettingsDataSourceImpl implements SettingsDataSource {
  final LocalStorage localStorage;

  SettingsDataSourceImpl({required this.localStorage});

  @override
  Future<UserTheme> getTheme() {
    return localStorage
        .readValue(StorageKeys.theme.name, converter: (v) => v)
        .then(
          (value) => value != null
              ? UserTheme.values.byName(value as String)
              : UserTheme.system,
        );
  }

  @override
  Future<void> updateTheme(UserTheme theme) {
    return localStorage.saveValue(StorageKeys.theme.name, theme.name);
  }
}
