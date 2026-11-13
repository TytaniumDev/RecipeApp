import 'package:material_ui/material_ui.dart';

/// Colors Material has no roles for: the macro colors and warning
/// (DESIGN_SYSTEM.md §4.3). Read them with `context.appColors`.
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const new({
    required this.protein,
    required this.proteinContainer,
    required this.onProteinContainer,
    required this.carbs,
    required this.carbsContainer,
    required this.onCarbsContainer,
    required this.fat,
    required this.fatContainer,
    required this.onFatContainer,
    required this.warning,
    required this.warningContainer,
    required this.onWarningContainer,
  });

  /// Custom colors for the light scheme.
  static const light = AppColors(
    protein: Color(0xFF894E45),
    proteinContainer: Color(0xFFFFDAD4),
    onProteinContainer: Color(0xFF6D382F),
    carbs: Color(0xFF7F5600),
    carbsContainer: Color(0xFFFFDEAE),
    onCarbsContainer: Color(0xFF604100),
    fat: Color(0xFF00639B),
    fatContainer: Color(0xFFCEE5FF),
    onFatContainer: Color(0xFF004A76),
    warning: Color(0xFF8D4F00),
    warningContainer: Color(0xFFFFDCC0),
    onWarningContainer: Color(0xFF6B3B00),
  );

  /// Custom colors for the dark scheme.
  static const dark = AppColors(
    protein: Color(0xFFFFB4A7),
    proteinContainer: Color(0xFF6D382F),
    onProteinContainer: Color(0xFFFFDAD4),
    carbs: Color(0xFFFFBA3E),
    carbsContainer: Color(0xFF604100),
    onCarbsContainer: Color(0xFFFFDEAE),
    fat: Color(0xFF97CBFF),
    fatContainer: Color(0xFF004A76),
    onFatContainer: Color(0xFFCEE5FF),
    warning: Color(0xFFFFB875),
    warningContainer: Color(0xFF6B3B00),
    onWarningContainer: Color(0xFFFFDCC0),
  );

  /// Custom colors for the cookingLight scheme.
  static const cookingLight = AppColors(
    protein: Color(0xFF5F2D24),
    proteinContainer: Color(0xFFFFDAD4),
    onProteinContainer: Color(0xFF370E08),
    carbs: Color(0xFF513600),
    carbsContainer: Color(0xFFFFDEAE),
    onCarbsContainer: Color(0xFF281900),
    fat: Color(0xFF003E65),
    fatContainer: Color(0xFFCEE5FF),
    onFatContainer: Color(0xFF001D33),
    warning: Color(0xFF5B3100),
    warningContainer: Color(0xFFFFDCC0),
    onWarningContainer: Color(0xFF2D1600),
  );

  /// Custom colors for the cookingDark scheme.
  static const cookingDark = AppColors(
    protein: Color(0xFFFFDAD4),
    proteinContainer: Color(0xFF51221A),
    onProteinContainer: Color(0xFFFFEDEA),
    carbs: Color(0xFFFFDEAE),
    carbsContainer: Color(0xFF432C00),
    onCarbsContainer: Color(0xFFFFEEDA),
    fat: Color(0xFFCEE5FF),
    fatContainer: Color(0xFF003353),
    onFatContainer: Color(0xFFE8F2FF),
    warning: Color(0xFFFFDCC0),
    warningContainer: Color(0xFF4B2800),
    onWarningContainer: Color(0xFFFFEEE1),
  );

  /// Protein marks and numbers on surfaces.
  final Color protein;

  /// Soft fill behind a protein label or chip.
  final Color proteinContainer;

  /// Text and icons on [proteinContainer].
  final Color onProteinContainer;

  /// Carbohydrate marks and numbers on surfaces.
  final Color carbs;

  /// Soft fill behind a carbs label or chip.
  final Color carbsContainer;

  /// Text and icons on [carbsContainer].
  final Color onCarbsContainer;

  /// Fat marks and numbers on surfaces.
  final Color fat;

  /// Soft fill behind a fat label or chip.
  final Color fatContainer;

  /// Text and icons on [fatContainer].
  final Color onFatContainer;

  /// Needs attention but is not an error. Always with an icon and words.
  final Color warning;

  /// Soft fill behind a warning label or chip.
  final Color warningContainer;

  /// Text and icons on [warningContainer].
  final Color onWarningContainer;

  @override
  AppColors copyWith({
    Color? protein,
    Color? proteinContainer,
    Color? onProteinContainer,
    Color? carbs,
    Color? carbsContainer,
    Color? onCarbsContainer,
    Color? fat,
    Color? fatContainer,
    Color? onFatContainer,
    Color? warning,
    Color? warningContainer,
    Color? onWarningContainer,
  }) => AppColors(
    protein: protein ?? this.protein,
    proteinContainer: proteinContainer ?? this.proteinContainer,
    onProteinContainer: onProteinContainer ?? this.onProteinContainer,
    carbs: carbs ?? this.carbs,
    carbsContainer: carbsContainer ?? this.carbsContainer,
    onCarbsContainer: onCarbsContainer ?? this.onCarbsContainer,
    fat: fat ?? this.fat,
    fatContainer: fatContainer ?? this.fatContainer,
    onFatContainer: onFatContainer ?? this.onFatContainer,
    warning: warning ?? this.warning,
    warningContainer: warningContainer ?? this.warningContainer,
    onWarningContainer: onWarningContainer ?? this.onWarningContainer,
  );

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other == null) return this;
    Color mix(Color a, Color b) => Color.lerp(a, b, t)!;
    return AppColors(
      protein: mix(protein, other.protein),
      proteinContainer: mix(proteinContainer, other.proteinContainer),
      onProteinContainer: mix(onProteinContainer, other.onProteinContainer),
      carbs: mix(carbs, other.carbs),
      carbsContainer: mix(carbsContainer, other.carbsContainer),
      onCarbsContainer: mix(onCarbsContainer, other.onCarbsContainer),
      fat: mix(fat, other.fat),
      fatContainer: mix(fatContainer, other.fatContainer),
      onFatContainer: mix(onFatContainer, other.onFatContainer),
      warning: mix(warning, other.warning),
      warningContainer: mix(warningContainer, other.warningContainer),
      onWarningContainer: mix(onWarningContainer, other.onWarningContainer),
    );
  }

  @override
  bool operator ==(Object other) =>
      other is AppColors &&
      other.protein == protein &&
      other.proteinContainer == proteinContainer &&
      other.onProteinContainer == onProteinContainer &&
      other.carbs == carbs &&
      other.carbsContainer == carbsContainer &&
      other.onCarbsContainer == onCarbsContainer &&
      other.fat == fat &&
      other.fatContainer == fatContainer &&
      other.onFatContainer == onFatContainer &&
      other.warning == warning &&
      other.warningContainer == warningContainer &&
      other.onWarningContainer == onWarningContainer;

  @override
  int get hashCode => Object.hashAll([
    protein,
    proteinContainer,
    onProteinContainer,
    carbs,
    carbsContainer,
    onCarbsContainer,
    fat,
    fatContainer,
    onFatContainer,
    warning,
    warningContainer,
    onWarningContainer,
  ]);
}
