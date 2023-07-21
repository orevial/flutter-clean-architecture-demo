import 'package:domain/entities/user_theme.entity.dart';
import 'package:domain/repositories/settings.repository.dart';
import 'package:domain/usecases/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetThemeUseCase implements NoArgUseCase<UserTheme> {
  final SettingsRepository _settingsRepository;

  GetThemeUseCase(this._settingsRepository);

  @override
  Future<UserTheme> call() {
    return _settingsRepository.getTheme();
  }
}
