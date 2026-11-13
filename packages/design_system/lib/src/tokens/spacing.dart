/// Spacing on a 4 dp grid (DESIGN_SYSTEM.md §6.1). Use these, never raw
/// numbers, for padding and gaps.
///
/// They are constants rather than a theme extension so that widgets using
/// them can stay `const`.
abstract final class AppSpacing() {
  /// 4 dp. Icon-to-label gap inside chips.
  static const double space1 = 4;

  /// 8 dp. Gap between related items, chip spacing.
  static const double space2 = 8;

  /// 12 dp. Gap inside list items, compact row padding.
  static const double space3 = 12;

  /// 16 dp. Default padding, phone page gutter, card padding.
  static const double space4 = 16;

  /// 20 dp. Between a section title and its content.
  static const double space5 = 20;

  /// 24 dp. Between sections, tablet page gutter.
  static const double space6 = 24;

  /// 32 dp. Large section breaks, desktop page gutter.
  static const double space8 = 32;

  /// 40 dp. Cooking mode outer padding.
  static const double space10 = 40;

  /// 48 dp. Empty-state spacing.
  static const double space12 = 48;

  /// 64 dp. Top of onboarding and hero layouts.
  static const double space16 = 64;
}
