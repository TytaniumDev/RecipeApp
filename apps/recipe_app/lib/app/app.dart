import 'package:design_system/design_system.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/app/router.dart';
import 'package:recipe_app/features/settings/settings.dart';
import 'package:recipe_app/l10n/l10n.dart';

final ThemeData _lightTheme = AppTheme.light();
final ThemeData _darkTheme = AppTheme.dark();

/// The root widget. Rebuilds only when the theme mode or router changes.
class RecipeApp extends ConsumerWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => MaterialApp.router(
    onGenerateTitle: (context) => context.l10n.app_title,
    theme: _lightTheme,
    darkTheme: _darkTheme,
    themeMode: ref.watch(themeModeControllerProvider),
    routerConfig: ref.watch(routerProvider),
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    debugShowCheckedModeBanner: false,
  );
}
