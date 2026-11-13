// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroceryItem {

 GroceryItemId get id; GroceryListId get listId; String get name; SortKey get sortKey; Quantity? get quantity; Unit? get unit;/// Store section name used for grouping, such as "Produce".
 String? get storeSection; bool get checked;/// The ingredient line this came from, for combining. Null when manual.
 IngredientLineId? get sourceIngredientLineId; RecipeId? get sourceRecipeId;
/// Create a copy of GroceryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceryItemCopyWith<GroceryItem> get copyWith => _$GroceryItemCopyWithImpl<GroceryItem>(this as GroceryItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GroceryItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroceryItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.listId, _this.listId) || other.listId == _this.listId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.sortKey, _this.sortKey) || other.sortKey == _this.sortKey)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.storeSection, _this.storeSection) || other.storeSection == _this.storeSection)&&(identical(other.checked, _this.checked) || other.checked == _this.checked)&&(identical(other.sourceIngredientLineId, _this.sourceIngredientLineId) || other.sourceIngredientLineId == _this.sourceIngredientLineId)&&(identical(other.sourceRecipeId, _this.sourceRecipeId) || other.sourceRecipeId == _this.sourceRecipeId));
}


@override
int get hashCode {
  final _this = this as GroceryItem;
  return Object.hash(runtimeType,_this.id,_this.listId,_this.name,_this.sortKey,_this.quantity,_this.unit,_this.storeSection,_this.checked,_this.sourceIngredientLineId,_this.sourceRecipeId);
}

@override
String toString() {
  final _this = this as GroceryItem;
  return 'GroceryItem(id: ${_this.id}, listId: ${_this.listId}, name: ${_this.name}, sortKey: ${_this.sortKey}, quantity: ${_this.quantity}, unit: ${_this.unit}, storeSection: ${_this.storeSection}, checked: ${_this.checked}, sourceIngredientLineId: ${_this.sourceIngredientLineId}, sourceRecipeId: ${_this.sourceRecipeId})';
}


}

/// @nodoc
abstract mixin class $GroceryItemCopyWith<$Res>  {
  factory $GroceryItemCopyWith(GroceryItem value, $Res Function(GroceryItem) _then) = _$GroceryItemCopyWithImpl;
@useResult
$Res call({
 GroceryItemId id, GroceryListId listId, String name, SortKey sortKey, Quantity? quantity, Unit? unit, String? storeSection, bool checked, IngredientLineId? sourceIngredientLineId, RecipeId? sourceRecipeId
});




}
/// @nodoc
class _$GroceryItemCopyWithImpl<$Res>
    implements $GroceryItemCopyWith<$Res> {
  _$GroceryItemCopyWithImpl(this._self, this._then);

  final GroceryItem _self;
  final $Res Function(GroceryItem) _then;

/// Create a copy of GroceryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listId = null,Object? name = null,Object? sortKey = null,Object? quantity = freezed,Object? unit = freezed,Object? storeSection = freezed,Object? checked = null,Object? sourceIngredientLineId = freezed,Object? sourceRecipeId = freezed,}) {
  return _then(GroceryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GroceryItemId,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as GroceryListId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as Quantity?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit?,storeSection: freezed == storeSection ? _self.storeSection : storeSection // ignore: cast_nullable_to_non_nullable
as String?,checked: null == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as bool,sourceIngredientLineId: freezed == sourceIngredientLineId ? _self.sourceIngredientLineId : sourceIngredientLineId // ignore: cast_nullable_to_non_nullable
as IngredientLineId?,sourceRecipeId: freezed == sourceRecipeId ? _self.sourceRecipeId : sourceRecipeId // ignore: cast_nullable_to_non_nullable
as RecipeId?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroceryItem].
extension GroceryItemPatterns on GroceryItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroceryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroceryItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroceryItem value)  $default,){
final _that = this;
switch (_that) {
case _GroceryItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroceryItem value)?  $default,){
final _that = this;
switch (_that) {
case _GroceryItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GroceryItemId id,  GroceryListId listId,  String name,  SortKey sortKey,  Quantity? quantity,  Unit? unit,  String? storeSection,  bool checked,  IngredientLineId? sourceIngredientLineId,  RecipeId? sourceRecipeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroceryItem() when $default != null:
return $default(_that.id,_that.listId,_that.name,_that.sortKey,_that.quantity,_that.unit,_that.storeSection,_that.checked,_that.sourceIngredientLineId,_that.sourceRecipeId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GroceryItemId id,  GroceryListId listId,  String name,  SortKey sortKey,  Quantity? quantity,  Unit? unit,  String? storeSection,  bool checked,  IngredientLineId? sourceIngredientLineId,  RecipeId? sourceRecipeId)  $default,) {final _that = this;
switch (_that) {
case _GroceryItem():
return $default(_that.id,_that.listId,_that.name,_that.sortKey,_that.quantity,_that.unit,_that.storeSection,_that.checked,_that.sourceIngredientLineId,_that.sourceRecipeId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GroceryItemId id,  GroceryListId listId,  String name,  SortKey sortKey,  Quantity? quantity,  Unit? unit,  String? storeSection,  bool checked,  IngredientLineId? sourceIngredientLineId,  RecipeId? sourceRecipeId)?  $default,) {final _that = this;
switch (_that) {
case _GroceryItem() when $default != null:
return $default(_that.id,_that.listId,_that.name,_that.sortKey,_that.quantity,_that.unit,_that.storeSection,_that.checked,_that.sourceIngredientLineId,_that.sourceRecipeId);case _:
  return null;

}
}

}

/// @nodoc


class _GroceryItem implements GroceryItem {
  const _GroceryItem({required this.id, required this.listId, required this.name, required this.sortKey, this.quantity, this.unit, this.storeSection, this.checked = false, this.sourceIngredientLineId, this.sourceRecipeId});
  

@override final  GroceryItemId id;
@override final  GroceryListId listId;
@override final  String name;
@override final  SortKey sortKey;
@override final  Quantity? quantity;
@override final  Unit? unit;
/// Store section name used for grouping, such as "Produce".
@override final  String? storeSection;
@override@JsonKey() final  bool checked;
/// The ingredient line this came from, for combining. Null when manual.
@override final  IngredientLineId? sourceIngredientLineId;
@override final  RecipeId? sourceRecipeId;

/// Create a copy of GroceryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceryItemCopyWith<_GroceryItem> get copyWith => __$GroceryItemCopyWithImpl<_GroceryItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroceryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortKey, sortKey) || other.sortKey == sortKey)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.storeSection, storeSection) || other.storeSection == storeSection)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.sourceIngredientLineId, sourceIngredientLineId) || other.sourceIngredientLineId == sourceIngredientLineId)&&(identical(other.sourceRecipeId, sourceRecipeId) || other.sourceRecipeId == sourceRecipeId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,listId,name,sortKey,quantity,unit,storeSection,checked,sourceIngredientLineId,sourceRecipeId);
}

@override
String toString() {
    return 'GroceryItem(id: $id, listId: $listId, name: $name, sortKey: $sortKey, quantity: $quantity, unit: $unit, storeSection: $storeSection, checked: $checked, sourceIngredientLineId: $sourceIngredientLineId, sourceRecipeId: $sourceRecipeId)';
}


}

/// @nodoc
abstract mixin class _$GroceryItemCopyWith<$Res> implements $GroceryItemCopyWith<$Res> {
  factory _$GroceryItemCopyWith(_GroceryItem value, $Res Function(_GroceryItem) _then) = __$GroceryItemCopyWithImpl;
@override @useResult
$Res call({
 GroceryItemId id, GroceryListId listId, String name, SortKey sortKey, Quantity? quantity, Unit? unit, String? storeSection, bool checked, IngredientLineId? sourceIngredientLineId, RecipeId? sourceRecipeId
});




}
/// @nodoc
class __$GroceryItemCopyWithImpl<$Res>
    implements _$GroceryItemCopyWith<$Res> {
  __$GroceryItemCopyWithImpl(this._self, this._then);

  final _GroceryItem _self;
  final $Res Function(_GroceryItem) _then;

/// Create a copy of GroceryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listId = null,Object? name = null,Object? sortKey = null,Object? quantity = freezed,Object? unit = freezed,Object? storeSection = freezed,Object? checked = null,Object? sourceIngredientLineId = freezed,Object? sourceRecipeId = freezed,}) {
  return _then(_GroceryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GroceryItemId,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as GroceryListId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as Quantity?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit?,storeSection: freezed == storeSection ? _self.storeSection : storeSection // ignore: cast_nullable_to_non_nullable
as String?,checked: null == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as bool,sourceIngredientLineId: freezed == sourceIngredientLineId ? _self.sourceIngredientLineId : sourceIngredientLineId // ignore: cast_nullable_to_non_nullable
as IngredientLineId?,sourceRecipeId: freezed == sourceRecipeId ? _self.sourceRecipeId : sourceRecipeId // ignore: cast_nullable_to_non_nullable
as RecipeId?,
  ));
}


}

// dart format on
