import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/account/presentation/account_screen.dart';

/// Routes owned by the account feature. Sign-in and account (PRD 7.9).
abstract final class AccountRoutes {
  static const path = '/account';

  static final List<RouteBase> routes = [
    GoRoute(path: path, builder: (context, state) => const AccountScreen()),
  ];
}
