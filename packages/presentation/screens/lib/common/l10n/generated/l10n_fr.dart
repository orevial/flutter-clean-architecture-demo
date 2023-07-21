import 'l10n.dart';

/// The translations for French (`fr`).
class L10NFr extends L10N {
  L10NFr([String locale = 'fr']) : super(locale);

  @override
  String get common_error => 'Quelque chose a échoué';

  @override
  String get common_retry => 'Réessayer';

  @override
  String get settings_mode_title => 'Paramètres';

  @override
  String get settings_mode_light => 'Clair';

  @override
  String get settings_mode_dark => 'Sombre';

  @override
  String get settings_mode_system => 'Système';

  @override
  String get course_list_title => 'Cours Flutter';

  @override
  String get course_details_doesnt_exist => 'Désolé, ce cours n\'a pas encore été créé...';
}
