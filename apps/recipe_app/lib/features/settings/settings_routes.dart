import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/settings/presentation/settings_screen.dart';

/// Routes owned by the settings feature. App settings: theme, units, measuring
/// tools, sync.
abstract final class SettingsRoutes() {
  static const path = '/settings';

  static final List<RouteBase> routes = [
    GoRoute(path: path, builder: (context, state) => const SettingsScreen()),
  ];
}
