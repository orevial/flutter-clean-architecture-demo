import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:domain/entities/user_theme.entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'generated/theme_bloc.freezed.dart';

part 'theme_event.dart';

part 'theme_state.dart';

@singleton
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final GetThemeUseCase getThemeUseCase;
  final UpdateThemeUseCase updateThemeUseCase;

  ThemeBloc(
    this.getThemeUseCase,
    this.updateThemeUseCase,
  ) : super(const ThemeState.theme(ThemeMode.system)) {
    on<ThemeEvent>(
      (event, emit) => event.map(
        read: (event) => _onRead(emit),
        update: (event) => _onUpdate(event, emit),
      ),
    );

    add(const ThemeEvent.read());
  }

  Future<void> _onRead(
    Emitter<ThemeState> emit,
  ) async {
    final theme = await getThemeUseCase.call();
    emit(ThemeState.theme(theme.mode));
  }

  Future<void> _onUpdate(
    _Update event,
    Emitter<ThemeState> emit,
  ) async {
    await updateThemeUseCase.call(params: event.mode.toUserTheme());
    emit(ThemeState.theme(event.mode));
  }
}

extension UserThemeX on UserTheme {
  ThemeMode get mode {
    return switch (this) {
      UserTheme.light => ThemeMode.light,
      UserTheme.dark => ThemeMode.dark,
      UserTheme.system => ThemeMode.system,
    };
  }
}

extension ThemeModeX on ThemeMode {
  UserTheme toUserTheme() {
    return switch (this) {
      ThemeMode.light => UserTheme.light,
      ThemeMode.dark => UserTheme.dark,
      ThemeMode.system => UserTheme.system,
    };
  }
}
