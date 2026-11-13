import 'package:flutter/widgets.dart';

/// Material's window size classes (DESIGN_SYSTEM.md §6.3), applied the same
/// way on phones, tablets, and web.
enum WindowSizeClass {
  /// Under 600 dp: bottom navigation bar, one pane.
  compact,

  /// 600 to 839 dp: navigation rail, one pane with wider margins.
  medium,

  /// 840 dp and up: navigation rail, list and detail side by side.
  expanded;

  /// Width where [medium] starts.
  static const double mediumMinWidth = 600;

  /// Width where [expanded] starts.
  static const double expandedMinWidth = 840;

  /// Width where the navigation rail shows its labels.
  static const double extendedRailMinWidth = 1200;

  /// The size class for a window [width] in dp.
  static WindowSizeClass fromWidth(double width) {
    if (width >= expandedMinWidth) return expanded;
    if (width >= mediumMinWidth) return medium;
    return compact;
  }

  /// The size class of the window around [context]. Rebuilds the caller only
  /// when the window size changes.
  static WindowSizeClass of(BuildContext context) =>
      fromWidth(MediaQuery.sizeOf(context).width);
}
