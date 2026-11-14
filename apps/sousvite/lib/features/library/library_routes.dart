import 'package:go_router/go_router.dart';
import 'package:sousvite/features/library/presentation/library_screen.dart';

/// Routes owned by the library feature. The recipe library: folders, search,
/// and recipe cards (PRD 7.1).
abstract final class LibraryRoutes() {
  static const path = '/library';

  static final List<RouteBase> routes = [
    GoRoute(path: path, builder: (context, state) => const LibraryScreen()),
  ];
}
