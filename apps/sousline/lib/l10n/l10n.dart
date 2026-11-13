import 'package:material_ui/material_ui.dart';
import 'package:sousline/l10n/gen/app_localizations.dart';

export 'package:sousline/l10n/gen/app_localizations.dart';

/// Short access to localized strings: `context.l10n.library_title`.
extension AppLocalizationsContext on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
