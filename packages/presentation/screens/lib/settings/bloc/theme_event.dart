part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.read() = _Read;
  const factory ThemeEvent.update(ThemeMode mode) = _Update;
}
