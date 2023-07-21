part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.theme(ThemeMode mode) = _Theme;
}
