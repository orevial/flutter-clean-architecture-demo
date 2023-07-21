import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:screens/common/l10n/build_context_extension.dart';
import 'package:screens/settings/bloc/theme_bloc.dart';

extension _ThemeModeUtils on ThemeMode {
  String text(BuildContext context) {
    switch (this) {
      case ThemeMode.light:
        return context.translations.settings_mode_light;
      case ThemeMode.dark:
        return context.translations.settings_mode_dark;
      case ThemeMode.system:
        return context.translations.settings_mode_system;
    }
  }

  IconData get icon {
    switch (this) {
      case ThemeMode.light:
        return Icons.light_mode;
      case ThemeMode.dark:
        return Icons.dark_mode;
      case ThemeMode.system:
        return Icons.settings_brightness;
    }
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translations.settings_mode_title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          ...ThemeMode.values
              .map<Widget>(_SettingsItem.new)
              .toList()
              .intersperse(const SizedBox(height: 20)),
        ],
      ),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  final ThemeMode mode;

  const _SettingsItem(this.mode);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ThemeBloc>().add(ThemeEvent.update(mode));
        context.pop(mode);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            Icon(
              mode.icon,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(mode.text(context)),
          ],
        ),
      ),
    );
  }
}
