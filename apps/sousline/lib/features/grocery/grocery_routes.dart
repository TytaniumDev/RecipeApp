import 'package:go_router/go_router.dart';
import 'package:sousline/features/grocery/presentation/grocery_screen.dart';

/// Routes owned by the grocery feature. Grocery lists built from recipes (PRD
/// 7.7).
abstract final class GroceryRoutes() {
  static const path = '/grocery';

  static final List<RouteBase> routes = [
    GoRoute(path: path, builder: (context, state) => const GroceryScreen()),
  ];
}
