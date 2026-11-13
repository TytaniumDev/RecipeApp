import 'package:flutter/widgets.dart';

/// Corner radii (DESIGN_SYSTEM.md §6.4). Nested corners follow
/// inner radius = outer radius − padding.
abstract final class AppRadii {
  /// 4 dp. Checkboxes, small badges, macro bar ends.
  static const double xs = 4;

  /// 8 dp. Chips, text fields, snackbars, menus.
  static const double sm = 8;

  /// 12 dp. Cards, list item highlights, the ingredients panel.
  static const double md = 12;

  /// 16 dp. Recipe card photos, the FAB, large cards.
  static const double lg = 16;

  /// 28 dp. Bottom sheet top corners, dialogs.
  static const double xl = 28;

  /// Fully rounded. Buttons, segmented buttons, the serving stepper.
  static const double full = 9999;

  static const BorderRadius borderXs = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius borderSm = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius borderMd = BorderRadius.all(Radius.circular(md));
  static const BorderRadius borderLg = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius borderXl = BorderRadius.all(Radius.circular(xl));
}
