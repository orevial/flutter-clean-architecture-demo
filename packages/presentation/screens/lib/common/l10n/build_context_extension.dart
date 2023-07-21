import 'package:flutter/widgets.dart';
import 'package:screens/common/l10n/generated/l10n.dart';

extension BuildContextX on BuildContext {
  String get languageCode => Localizations.localeOf(this).toLanguageTag();

  L10N get translations => L10N.of(this);
}
