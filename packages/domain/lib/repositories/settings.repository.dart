import 'package:domain/entities/user_theme.entity.dart';

abstract class SettingsRepository {
  Future<UserTheme> getTheme();

  Future<void> updateTheme(UserTheme theme);
}
