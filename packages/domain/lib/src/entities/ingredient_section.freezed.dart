// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientSection {

 IngredientSectionId get id; RecipeId get recipeId; String get name; SortKey get sortKey;
/// Create a copy of IngredientSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientSectionCopyWith<IngredientSection> get copyWith => _$IngredientSectionCopyWithImpl<IngredientSection>(this as IngredientSection, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as IngredientSection;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientSection&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.recipeId, _this.recipeId) || other.recipeId == _this.recipeId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.sortKey, _this.sortKey) || other.sortKey == _this.sortKey));
}


@override
int get hashCode {
  final _this = this as IngredientSection;
  return Object.hash(runtimeType,_this.id,_this.recipeId,_this.name,_this.sortKey);
}

@override
String toString() {
  final _this = this as IngredientSection;
  return 'IngredientSection(id: ${_this.id}, recipeId: ${_this.recipeId}, name: ${_this.name}, sortKey: ${_this.sortKey})';
}


}

/// @nodoc
abstract mixin class $IngredientSectionCopyWith<$Res>  {
  factory $IngredientSectionCopyWith(IngredientSection value, $Res Function(IngredientSection) _then) = _$IngredientSectionCopyWithImpl;
@useResult
$Res call({
 IngredientSectionId id, RecipeId recipeId, String name, SortKey sortKey
});




}
/// @nodoc
class _$IngredientSectionCopyWithImpl<$Res>
    implements $IngredientSectionCopyWith<$Res> {
  _$IngredientSectionCopyWithImpl(this._self, this._then);

  final IngredientSection _self;
  final $Res Function(IngredientSection) _then;

/// Create a copy of IngredientSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipeId = null,Object? name = null,Object? sortKey = null,}) {
  return _then(IngredientSection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as IngredientSectionId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientSection].
extension IngredientSectionPatterns on IngredientSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientSection value)  $default,){
final _that = this;
switch (_that) {
case _IngredientSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientSection value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IngredientSectionId id,  RecipeId recipeId,  String name,  SortKey sortKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientSection() when $default != null:
return $default(_that.id,_that.recipeId,_that.name,_that.sortKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IngredientSectionId id,  RecipeId recipeId,  String name,  SortKey sortKey)  $default,) {final _that = this;
switch (_that) {
case _IngredientSection():
return $default(_that.id,_that.recipeId,_that.name,_that.sortKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IngredientSectionId id,  RecipeId recipeId,  String name,  SortKey sortKey)?  $default,) {final _that = this;
switch (_that) {
case _IngredientSection() when $default != null:
return $default(_that.id,_that.recipeId,_that.name,_that.sortKey);case _:
  return null;

}
}

}

/// @nodoc


class _IngredientSection implements IngredientSection {
  const _IngredientSection({required this.id, required this.recipeId, required this.name, required this.sortKey});
  

@override final  IngredientSectionId id;
@override final  RecipeId recipeId;
@override final  String name;
@override final  SortKey sortKey;

/// Create a copy of IngredientSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientSectionCopyWith<_IngredientSection> get copyWith => __$IngredientSectionCopyWithImpl<_IngredientSection>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientSection&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortKey, sortKey) || other.sortKey == sortKey));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,recipeId,name,sortKey);
}

@override
String toString() {
    return 'IngredientSection(id: $id, recipeId: $recipeId, name: $name, sortKey: $sortKey)';
}


}

/// @nodoc
abstract mixin class _$IngredientSectionCopyWith<$Res> implements $IngredientSectionCopyWith<$Res> {
  factory _$IngredientSectionCopyWith(_IngredientSection value, $Res Function(_IngredientSection) _then) = __$IngredientSectionCopyWithImpl;
@override @useResult
$Res call({
 IngredientSectionId id, RecipeId recipeId, String name, SortKey sortKey
});




}
/// @nodoc
class __$IngredientSectionCopyWithImpl<$Res>
    implements _$IngredientSectionCopyWith<$Res> {
  __$IngredientSectionCopyWithImpl(this._self, this._then);

  final _IngredientSection _self;
  final $Res Function(_IngredientSection) _then;

/// Create a copy of IngredientSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipeId = null,Object? name = null,Object? sortKey = null,}) {
  return _then(_IngredientSection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as IngredientSectionId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,
  ));
}


}

// dart format on
