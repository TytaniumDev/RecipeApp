import 'package:material_ui/material_ui.dart';

/// Font families bundled with this package (DESIGN_SYSTEM.md §5.1).
abstract final class AppFonts {
  /// The package that bundles the fonts, for `TextStyle.package`.
  static const package = 'design_system';

  /// Serif for recipe names, headings, and section titles.
  static const serif = 'Newsreader';

  /// Sans for everything else, including every number.
  static const sans = 'Plus Jakarta Sans';
}

/// Builds a style in one of our variable fonts.
///
/// Both fonts are variable, so the weight is set as a font variation as well
/// as a [FontWeight]. Newsreader also gets its optical size axis set to the
/// text size, which keeps it crisp from 22 to 57 px.
TextStyle appTextStyle({
  required String family,
  required int weight,
  double? size,
  double? height,
  bool tabular = false,
}) {
  final opticalSize = family == AppFonts.serif && size != null
      ? FontVariation.opticalSize(size.clamp(6, 72))
      : null;
  return TextStyle(
    package: AppFonts.package,
    fontFamily: family,
    fontSize: size,
    height: height,
    fontWeight: FontWeight.values.firstWhere((w) => w.value == weight),
    fontVariations: [FontVariation.weight(weight.toDouble()), ?opticalSize],
    fontFeatures: tabular ? const [FontFeature.tabularFigures()] : null,
  );
}

/// Material 3's type roles with our families and weights (§5.2).
///
/// Sizes and line heights are Material's, repeated here so the theme is
/// complete on its own and the serif's optical size can follow the size.
/// Letter spacing and colors come from Material's defaults.
abstract final class AppTextTheme {
  /// The text theme for every scheme.
  static final TextTheme textTheme = TextTheme(
    displayLarge: _serif(500, 57, 64),
    displayMedium: _serif(500, 45, 52),
    displaySmall: _serif(500, 36, 44),
    headlineLarge: _serif(600, 32, 40),
    headlineMedium: _serif(600, 28, 36),
    headlineSmall: _serif(600, 24, 32),
    titleLarge: _serif(600, 22, 28),
    titleMedium: _sans(600, 16, 24),
    titleSmall: _sans(600, 14, 20),
    bodyLarge: _sans(400, 16, 24),
    bodyMedium: _sans(400, 14, 20),
    bodySmall: _sans(400, 12, 16),
    labelLarge: _sans(600, 14, 20),
    labelMedium: _sans(600, 12, 16),
    labelSmall: _sans(600, 11, 16),
  );

  static TextStyle _serif(int weight, double size, double lineHeight) =>
      appTextStyle(
        family: AppFonts.serif,
        weight: weight,
        size: size,
        height: lineHeight / size,
      );

  static TextStyle _sans(int weight, double size, double lineHeight) =>
      appTextStyle(
        family: AppFonts.sans,
        weight: weight,
        size: size,
        height: lineHeight / size,
      );
}

/// App-specific text styles (DESIGN_SYSTEM.md §5.3), all in Plus Jakarta
/// Sans. Read them with `context.appText`.
///
/// Cooking styles come in a compact size and a `Large` size for medium and
/// expanded windows.
@immutable
class AppTypography extends ThemeExtension<AppTypography> {
  const new({
    required this.numberHero,
    required this.numberLarge,
    required this.number,
    required this.amount,
    required this.cookingStep,
    required this.cookingStepLarge,
    required this.cookingAmount,
    required this.cookingAmountLarge,
    required this.cookingIngredient,
    required this.cookingIngredientLarge,
    required this.cookingSection,
    required this.cookingTimer,
  });

  /// The same styles for every scheme. Colors come from the widget.
  static final AppTypography standard = AppTypography(
    numberHero: _sans(600, 32, 40, tabular: true),
    numberLarge: _sans(600, 20, 28, tabular: true),
    number: _sans(500, 14, 20, tabular: true),
    amount: appTextStyle(family: AppFonts.sans, weight: 600, tabular: true),
    cookingStep: _sans(400, 28, 40),
    cookingStepLarge: _sans(400, 34, 48),
    cookingAmount: _sans(700, 28, 40, tabular: true),
    cookingAmountLarge: _sans(700, 34, 48, tabular: true),
    cookingIngredient: _sans(400, 20, 28, tabular: true),
    cookingIngredientLarge: _sans(400, 22, 32, tabular: true),
    cookingSection: _sans(600, 18, 24),
    cookingTimer: _sans(600, 40, 48, tabular: true),
  );

  /// Calories per serving at the top of the nutrition card.
  final TextStyle numberHero;

  /// Macro grams in the macro summary.
  final TextStyle numberLarge;

  /// Values in nutrition tables, grocery quantities.
  final TextStyle number;

  /// An amount inside running text. Inherits the surrounding size.
  final TextStyle amount;

  /// Step text in cooking mode on compact windows.
  final TextStyle cookingStep;

  /// Step text in cooking mode on medium and expanded windows.
  final TextStyle cookingStepLarge;

  /// Amounts inside cooking steps on compact windows.
  final TextStyle cookingAmount;

  /// Amounts inside cooking steps on medium and expanded windows.
  final TextStyle cookingAmountLarge;

  /// The ingredients-for-this-step panel on compact windows.
  final TextStyle cookingIngredient;

  /// The ingredients-for-this-step panel on medium and expanded windows.
  final TextStyle cookingIngredientLarge;

  /// Section name and step count ("Prep · Step 2 of 5").
  final TextStyle cookingSection;

  /// Timer countdowns.
  final TextStyle cookingTimer;

  static TextStyle _sans(
    int weight,
    double size,
    double lineHeight, {
    bool tabular = false,
  }) => appTextStyle(
    family: AppFonts.sans,
    weight: weight,
    size: size,
    height: lineHeight / size,
    tabular: tabular,
  );

  @override
  AppTypography copyWith({
    TextStyle? numberHero,
    TextStyle? numberLarge,
    TextStyle? number,
    TextStyle? amount,
    TextStyle? cookingStep,
    TextStyle? cookingStepLarge,
    TextStyle? cookingAmount,
    TextStyle? cookingAmountLarge,
    TextStyle? cookingIngredient,
    TextStyle? cookingIngredientLarge,
    TextStyle? cookingSection,
    TextStyle? cookingTimer,
  }) => AppTypography(
    numberHero: numberHero ?? this.numberHero,
    numberLarge: numberLarge ?? this.numberLarge,
    number: number ?? this.number,
    amount: amount ?? this.amount,
    cookingStep: cookingStep ?? this.cookingStep,
    cookingStepLarge: cookingStepLarge ?? this.cookingStepLarge,
    cookingAmount: cookingAmount ?? this.cookingAmount,
    cookingAmountLarge: cookingAmountLarge ?? this.cookingAmountLarge,
    cookingIngredient: cookingIngredient ?? this.cookingIngredient,
    cookingIngredientLarge:
        cookingIngredientLarge ?? this.cookingIngredientLarge,
    cookingSection: cookingSection ?? this.cookingSection,
    cookingTimer: cookingTimer ?? this.cookingTimer,
  );

  @override
  AppTypography lerp(AppTypography? other, double t) {
    if (other == null) return this;
    TextStyle mix(TextStyle a, TextStyle b) => TextStyle.lerp(a, b, t)!;
    return AppTypography(
      numberHero: mix(numberHero, other.numberHero),
      numberLarge: mix(numberLarge, other.numberLarge),
      number: mix(number, other.number),
      amount: mix(amount, other.amount),
      cookingStep: mix(cookingStep, other.cookingStep),
      cookingStepLarge: mix(cookingStepLarge, other.cookingStepLarge),
      cookingAmount: mix(cookingAmount, other.cookingAmount),
      cookingAmountLarge: mix(cookingAmountLarge, other.cookingAmountLarge),
      cookingIngredient: mix(cookingIngredient, other.cookingIngredient),
      cookingIngredientLarge: mix(
        cookingIngredientLarge,
        other.cookingIngredientLarge,
      ),
      cookingSection: mix(cookingSection, other.cookingSection),
      cookingTimer: mix(cookingTimer, other.cookingTimer),
    );
  }
}
