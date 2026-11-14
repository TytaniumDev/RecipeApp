import 'package:go_router/go_router.dart';
import 'package:sousvite/features/import/presentation/import_screen.dart';

/// Routes owned by the import feature. Importing recipes from a URL or Umami
/// (PRD 7.2).
abstract final class ImportRoutes() {
  static const path = '/import';

  static final List<RouteBase> routes = [
    GoRoute(path: path, builder: (context, state) => const ImportScreen()),
  ];
}
