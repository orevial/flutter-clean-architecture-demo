import 'package:domain/entities/user_theme.entity.dart';
import 'package:domain/repositories/settings.repository.dart';
import 'package:domain/usecases/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateThemeUseCase implements UseCase<void, UserTheme> {
  final SettingsRepository _settingsRepository;

  UpdateThemeUseCase(this._settingsRepository);

  @override
  Future<void> call({required UserTheme params}) {
    return _settingsRepository.updateTheme(params);
  }
}
