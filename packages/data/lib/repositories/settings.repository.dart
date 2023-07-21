import 'package:data/datasources/settings.datasource.dart';
import 'package:domain/entities/user_theme.entity.dart';
import 'package:domain/repositories/settings.repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsDataSource settingsDataSource;

  SettingsRepositoryImpl(this.settingsDataSource);

  @override
  Future<UserTheme> getTheme() {
    return settingsDataSource.getTheme();
  }

  @override
  Future<void> updateTheme(UserTheme theme) {
    return settingsDataSource.updateTheme(theme);
  }
}
