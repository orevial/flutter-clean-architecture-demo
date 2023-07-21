import 'l10n.dart';

/// The translations for English (`en`).
class L10NEn extends L10N {
  L10NEn([String locale = 'en']) : super(locale);

  @override
  String get common_error => 'Something went wrong';

  @override
  String get common_retry => 'Retry';

  @override
  String get settings_mode_title => 'Settings';

  @override
  String get settings_mode_light => 'Light';

  @override
  String get settings_mode_dark => 'Dark';

  @override
  String get settings_mode_system => 'System';

  @override
  String get course_list_title => 'Flutter courses';

  @override
  String get course_details_doesnt_exist => 'Sorry, this course is yet to be created...';
}
