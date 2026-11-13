import 'package:domain/src/entities/folder.dart';
import 'package:domain/src/value_objects/ids.dart';

/// Folders and which recipes are in them.
abstract interface class FolderRepository {
  Stream<List<Folder>> watchFolders();

  Stream<List<RecipeId>> watchRecipeIdsInFolder(FolderId folderId);

  Future<Folder?> getFolder(FolderId id);

  Future<void> saveFolder(Folder folder);

  Future<void> deleteFolder(FolderId id);

  Future<void> addRecipeToFolder(FolderId folderId, RecipeId recipeId);

  Future<void> removeRecipeFromFolder(FolderId folderId, RecipeId recipeId);
}
