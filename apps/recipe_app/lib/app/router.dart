import 'package:go_router/go_router.dart';
import 'package:recipe_app/app/app_shell.dart';
import 'package:recipe_app/features/account/account.dart';
import 'package:recipe_app/features/cooking/cooking.dart';
import 'package:recipe_app/features/editor/editor.dart';
import 'package:recipe_app/features/experiments/experiments.dart';
import 'package:recipe_app/features/grocery/grocery.dart';
import 'package:recipe_app/features/import/import.dart';
import 'package:recipe_app/features/library/library.dart';
import 'package:recipe_app/features/nutrition/nutrition.dart';
import 'package:recipe_app/features/recipe/recipe.dart';
import 'package:recipe_app/features/settings/settings.dart';
import 'package:recipe_app/features/sharing/sharing.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
