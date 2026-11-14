import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// The app's name, shown in the window title and task switcher.
  ///
  /// In en, this message translates to:
  /// **'Sousvite'**
  String get app_title;

  /// Placeholder body for screens that are not built yet.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get common_comingSoon;

  /// Fallback message when a screen fails to load.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get common_errorGeneric;

  /// Button that retries a failed load.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get common_retry;

  /// Navigation destination for the recipe library.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get nav_library;

  /// Navigation destination for the grocery list.
  ///
  /// In en, this message translates to:
  /// **'Grocery list'**
  String get nav_grocery;

  /// Navigation destination for settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get nav_settings;

  /// Title of the recipe library screen.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get library_title;

  /// Title of the recipe page before its name loads.
  ///
  /// In en, this message translates to:
  /// **'Recipe'**
  String get recipe_title;

  /// Title of the recipe editor.
  ///
  /// In en, this message translates to:
  /// **'Edit recipe'**
  String get editor_title;

  /// Title of the recipe import screen.
  ///
  /// In en, this message translates to:
  /// **'Import recipe'**
  String get import_title;

  /// Title of the nutrition match review screen.
  ///
  /// In en, this message translates to:
  /// **'Nutrition'**
  String get nutrition_title;

  /// Title of cooking mode.
  ///
  /// In en, this message translates to:
  /// **'Cooking'**
  String get cooking_title;

  /// Title of the grocery list screen.
  ///
  /// In en, this message translates to:
  /// **'Grocery list'**
  String get grocery_title;

  /// Title of a recipe's history of versions and experiments.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get experiments_title;

  /// Title of the share screen.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get sharing_title;

  /// Title of the settings screen.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_title;

  /// Title of the account and sign-in screen.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account_title;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
