import 'package:material_ui/material_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_controller.g.dart';

/// The Light / Dark / System setting (DESIGN_SYSTEM.md §3). Follows the
/// system until the user picks. Saving the choice is a settings task.
@Riverpod(keepAlive: true)
class ThemeModeController extends _$ThemeModeController {
  @override
  ThemeMode build() => .system;

  // A setter would read oddly at call sites: `notifier.select(mode)`.
  // ignore: use_setters_to_change_properties
  void select(ThemeMode mode) => state = mode;
}
