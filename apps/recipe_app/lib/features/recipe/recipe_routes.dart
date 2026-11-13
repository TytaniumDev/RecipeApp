import 'package:domain/domain.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/recipe/presentation/recipe_screen.dart';

/// Routes owned by the recipe feature. The recipe page: ingredients, steps,
/// nutrition, notes (DESIGN_SYSTEM §10.1).
abstract final class RecipeRoutes {
  static const path = '/recipes/:recipeId';

  /// The location for [recipeId], for `context.go` and `context.push`.
  static String location(RecipeId recipeId) =>
      path.replaceFirst(':recipeId', Uri.encodeComponent(recipeId.value));

  static final List<RouteBase> routes = [
    GoRoute(
      path: path,
      builder: (context, state) =>
          RecipeScreen(recipeId: RecipeId(state.pathParameters['recipeId']!)),
    ),
  ];
}
