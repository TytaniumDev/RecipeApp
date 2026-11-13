import 'package:design_system/src/tokens/app_colors.dart';
import 'package:design_system/src/tokens/typography.dart';
import 'package:material_ui/material_ui.dart';

/// Short access to theme values, so widgets never hard-code them.
extension AppThemeContext on BuildContext {
  /// Material's color roles.
  ColorScheme get colors => Theme.of(this).colorScheme;

  /// Material's text styles, in our fonts.
  TextTheme get textStyles => Theme.of(this).textTheme;

  /// Macro and warning colors.
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;

  /// Number, amount, and cooking text styles.
  AppTypography get appText => Theme.of(this).extension<AppTypography>()!;
}
