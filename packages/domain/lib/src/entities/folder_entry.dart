import 'package:domain/src/value_objects/ids.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'folder_entry.freezed.dart';

/// Puts one recipe in one folder.
@freezed
abstract class FolderEntry with _$FolderEntry {
  const factory({
    required FolderId folderId,
    required RecipeId recipeId,
    required DateTime addedAt,
  }) = _FolderEntry;
}
