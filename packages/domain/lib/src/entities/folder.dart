import 'package:domain/src/value_objects/ids.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'folder.freezed.dart';

/// A folder of recipes. A recipe can be in several folders (PRD 7.1).
@freezed
abstract class Folder with _$Folder {
  const factory({
    required FolderId id,
    required String name,
    required DateTime createdAt,
  }) = _Folder;
}
