import 'package:design_system/src/tokens/radii.dart';
import 'package:design_system/src/tokens/spacing.dart';
import 'package:material_ui/material_ui.dart';

/// Component themes that give Material widgets our shapes and surfaces
/// (DESIGN_SYSTEM.md §6.4, §9.1). Buttons keep Material's fully rounded
/// default.
abstract final class AppComponentThemes {
  static CardThemeData card(ColorScheme scheme) => CardThemeData(
    color: scheme.surfaceContainerLow,
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: const RoundedRectangleBorder(borderRadius: AppRadii.borderMd),
  );

  static ChipThemeData chip(ColorScheme scheme) => const ChipThemeData(
    shape: RoundedRectangleBorder(borderRadius: AppRadii.borderSm),
  );

  static InputDecorationThemeData input(ColorScheme scheme) =>
      InputDecorationThemeData(
        filled: true,
        fillColor: scheme.surfaceContainerHighest,
        border: const OutlineInputBorder(
          borderRadius: AppRadii.borderSm,
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadii.borderSm,
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
      );

  static BottomSheetThemeData bottomSheet(ColorScheme scheme) =>
      BottomSheetThemeData(
        backgroundColor: scheme.surfaceContainerHigh,
        modalBackgroundColor: scheme.surfaceContainerHigh,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppRadii.xl),
          ),
        ),
      );

  static DialogThemeData dialog(ColorScheme scheme) => DialogThemeData(
    backgroundColor: scheme.surfaceContainerHigh,
    elevation: 0,
    shape: const RoundedRectangleBorder(borderRadius: AppRadii.borderXl),
  );

  static SnackBarThemeData snackBar(ColorScheme scheme) => SnackBarThemeData(
    backgroundColor: scheme.inverseSurface,
    actionTextColor: scheme.inversePrimary,
    behavior: SnackBarBehavior.floating,
    shape: const RoundedRectangleBorder(borderRadius: AppRadii.borderSm),
  );

  static FloatingActionButtonThemeData fab(ColorScheme scheme) =>
      const FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: AppRadii.borderLg),
      );

  static NavigationBarThemeData navigationBar(ColorScheme scheme) =>
      NavigationBarThemeData(
        backgroundColor: scheme.surfaceContainer,
        indicatorColor: scheme.primaryContainer,
        elevation: 0,
      );

  static NavigationRailThemeData navigationRail(ColorScheme scheme) =>
      NavigationRailThemeData(
        backgroundColor: scheme.surfaceContainer,
        indicatorColor: scheme.primaryContainer,
      );

  static ListTileThemeData listTile(ColorScheme scheme) =>
      const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: AppSpacing.space4),
        minTileHeight: 56,
      );
}
