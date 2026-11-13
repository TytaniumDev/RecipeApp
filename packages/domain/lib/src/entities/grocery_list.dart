import 'package:domain/src/value_objects/ids.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grocery_list.freezed.dart';

/// A grocery list.
@freezed
abstract class GroceryList with _$GroceryList {
  const factory({
    required GroceryListId id,
    required String name,
    required DateTime createdAt,
  }) = _GroceryList;
}
