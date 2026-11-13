import 'package:design_system/src/theme/component_themes.dart';
import 'package:design_system/src/tokens/app_colors.dart';
import 'package:design_system/src/tokens/color_schemes.dart';
import 'package:design_system/src/tokens/typography.dart';
import 'package:material_ui/material_ui.dart';

/// The app's themes (DESIGN_SYSTEM.md §13.2).
///
/// `MaterialApp` gets [light] and [dark]. Cooking mode wraps its route in
/// `Theme(data: AppTheme.cooking(brightness))`, using the active brightness.
abstract final class AppTheme() {
  /// The light theme.
  static ThemeData light() => _build(AppColorSchemes.light, AppColors.light);

  /// The dark theme.
  static ThemeData dark() => _build(AppColorSchemes.dark, AppColors.dark);

  /// The high-contrast cooking theme for [brightness] (§10.3).
  static ThemeData cooking(Brightness brightness) => brightness == .light
      ? _build(AppColorSchemes.cookingLight, AppColors.cookingLight)
      : _build(AppColorSchemes.cookingDark, AppColors.cookingDark);

  static ThemeData _build(ColorScheme scheme, AppColors appColors) => ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    // Comfortable density on every platform, including web and desktop,
    // which Flutter would otherwise make compact (§6.2).
    visualDensity: VisualDensity.standard,
    textTheme: AppTextTheme.textTheme,
    scaffoldBackgroundColor: scheme.surface,
    extensions: [appColors, AppTypography.standard],
    cardTheme: AppComponentThemes.card(scheme),
    chipTheme: AppComponentThemes.chip(scheme),
    inputDecorationTheme: AppComponentThemes.input(scheme),
    bottomSheetTheme: AppComponentThemes.bottomSheet(scheme),
    dialogTheme: AppComponentThemes.dialog(scheme),
    snackBarTheme: AppComponentThemes.snackBar(scheme),
    floatingActionButtonTheme: AppComponentThemes.fab(scheme),
    navigationBarTheme: AppComponentThemes.navigationBar(scheme),
    navigationRailTheme: AppComponentThemes.navigationRail(scheme),
    listTileTheme: AppComponentThemes.listTile(scheme),
  );
}
