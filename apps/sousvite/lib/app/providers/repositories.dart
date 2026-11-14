import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repositories.g.dart';

// One provider per repository interface in packages/domain. Features watch
// these and tests override them with fakes. Each data task replaces one
// body with its Drift implementation (docs/BUILD_PLAN.md).

@Riverpod(keepAlive: true)
RecipeRepository recipeRepository(Ref ref) =>
    throw UnimplementedError('RecipeRepository is not implemented yet.');

@Riverpod(keepAlive: true)
FolderRepository folderRepository(Ref ref) =>
    throw UnimplementedError('FolderRepository is not implemented yet.');

@Riverpod(keepAlive: true)
FoodRepository foodRepository(Ref ref) =>
    throw UnimplementedError('FoodRepository is not implemented yet.');

@Riverpod(keepAlive: true)
ExperimentRepository experimentRepository(Ref ref) =>
    throw UnimplementedError('ExperimentRepository is not implemented yet.');

@Riverpod(keepAlive: true)
GroceryRepository groceryRepository(Ref ref) =>
    throw UnimplementedError('GroceryRepository is not implemented yet.');

@Riverpod(keepAlive: true)
MeasuringToolRepository measuringToolRepository(Ref ref) =>
    throw UnimplementedError('MeasuringToolRepository is not implemented yet.');

@Riverpod(keepAlive: true)
UserRecipePrefsRepository userRecipePrefsRepository(Ref ref) =>
    throw UnimplementedError(
      'UserRecipePrefsRepository is not implemented yet.',
    );
