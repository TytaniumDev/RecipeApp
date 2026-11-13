import 'package:domain/domain.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/nutrition/presentation/nutrition_screen.dart';

/// Routes owned by the nutrition feature. Nutrition matching and review (PRD
/// 7.4).
abstract final class NutritionRoutes {
  static const path = '/nutrition/:recipeId';

  /// The location for [recipeId], for `context.go` and `context.push`.
  static String location(RecipeId recipeId) =>
      path.replaceFirst(':recipeId', Uri.encodeComponent(recipeId.value));

  static final List<RouteBase> routes = [
    GoRoute(
      path: path,
      builder: (context, state) => NutritionScreen(
        recipeId: RecipeId(state.pathParameters['recipeId']!),
      ),
    ),
  ];
}
