import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_fr.dart';

/// Callers can lookup localized strings with an instance of L10N
/// returned by `L10N.of(context)`.
///
/// Applications need to include `L10N.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10N.localizationsDelegates,
///   supportedLocales: L10N.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10N.supportedLocales
/// property.
abstract class L10N {
  L10N(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10N of(BuildContext context) {
    return Localizations.of<L10N>(context, L10N)!;
  }

  static const LocalizationsDelegate<L10N> delegate = _L10NDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @common_error.
  ///
  /// In fr, this message translates to:
  /// **'Quelque chose a échoué'**
  String get common_error;

  /// No description provided for @common_retry.
  ///
  /// In fr, this message translates to:
  /// **'Réessayer'**
  String get common_retry;

  /// No description provided for @settings_mode_title.
  ///
  /// In fr, this message translates to:
  /// **'Paramètres'**
  String get settings_mode_title;

  /// No description provided for @settings_mode_light.
  ///
  /// In fr, this message translates to:
  /// **'Clair'**
  String get settings_mode_light;

  /// No description provided for @settings_mode_dark.
  ///
  /// In fr, this message translates to:
  /// **'Sombre'**
  String get settings_mode_dark;

  /// No description provided for @settings_mode_system.
  ///
  /// In fr, this message translates to:
  /// **'Système'**
  String get settings_mode_system;

  /// No description provided for @course_list_title.
  ///
  /// In fr, this message translates to:
  /// **'Cours Flutter'**
  String get course_list_title;

  /// No description provided for @course_details_doesnt_exist.
  ///
  /// In fr, this message translates to:
  /// **'Désolé, ce cours n\'a pas encore été créé...'**
  String get course_details_doesnt_exist;
}

class _L10NDelegate extends LocalizationsDelegate<L10N> {
  const _L10NDelegate();

  @override
  Future<L10N> load(Locale locale) {
    return SynchronousFuture<L10N>(lookupL10N(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10NDelegate old) => false;
}

L10N lookupL10N(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return L10NEn();
    case 'fr': return L10NFr();
  }

  throw FlutterError(
    'L10N.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
