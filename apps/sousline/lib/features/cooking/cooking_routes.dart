import 'package:domain/domain.dart';
import 'package:go_router/go_router.dart';
import 'package:sousline/features/cooking/presentation/cooking_screen.dart';

/// Routes owned by the cooking feature. Cooking mode, the signature feature
/// (PRD 7.5, DESIGN_SYSTEM §10.3).
abstract final class CookingRoutes() {
  static const path = '/cook/:recipeId';

  /// The location for [recipeId], for `context.go` and `context.push`.
  static String location(RecipeId recipeId) =>
      path.replaceFirst(':recipeId', Uri.encodeComponent(recipeId.value));

  static final List<RouteBase> routes = [
    GoRoute(
      path: path,
      builder: (context, state) =>
          CookingScreen(recipeId: RecipeId(state.pathParameters['recipeId']!)),
    ),
  ];
}
