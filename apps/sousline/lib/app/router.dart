import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sousline/app/app_shell.dart';
import 'package:sousline/features/account/account.dart';
import 'package:sousline/features/cooking/cooking.dart';
import 'package:sousline/features/editor/editor.dart';
import 'package:sousline/features/experiments/experiments.dart';
import 'package:sousline/features/grocery/grocery.dart';
import 'package:sousline/features/import/import.dart';
import 'package:sousline/features/library/library.dart';
import 'package:sousline/features/nutrition/nutrition.dart';
import 'package:sousline/features/recipe/recipe.dart';
import 'package:sousline/features/settings/settings.dart';
import 'package:sousline/features/sharing/sharing.dart';

part 'router.g.dart';

/// The app's routes, composed from each feature's `<name>_routes.dart`.
///
/// Features add and change routes only in their own routes file. This file
/// changes only when a feature is added.
@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  final router = GoRouter(
    initialLocation: LibraryRoutes.path,
    routes: [
      // Top-level destinations keep their own navigation stacks.
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            AppShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(routes: LibraryRoutes.routes),
          StatefulShellBranch(routes: GroceryRoutes.routes),
          StatefulShellBranch(routes: SettingsRoutes.routes),
        ],
      ),
      // Full-screen routes, shown on top of the shell.
      ...RecipeRoutes.routes,
      ...EditorRoutes.routes,
      ...ImportRoutes.routes,
      ...NutritionRoutes.routes,
      ...CookingRoutes.routes,
      ...ExperimentsRoutes.routes,
      ...SharingRoutes.routes,
      ...AccountRoutes.routes,
    ],
  );
  ref.onDispose(router.dispose);
  return router;
}
