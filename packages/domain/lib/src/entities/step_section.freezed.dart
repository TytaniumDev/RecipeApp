// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StepSection {

 StepSectionId get id; RecipeId get recipeId; String get name; SortKey get sortKey;
/// Create a copy of StepSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepSectionCopyWith<StepSection> get copyWith => _$StepSectionCopyWithImpl<StepSection>(this as StepSection, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StepSection;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StepSection&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.recipeId, _this.recipeId) || other.recipeId == _this.recipeId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.sortKey, _this.sortKey) || other.sortKey == _this.sortKey));
}


@override
int get hashCode {
  final _this = this as StepSection;
  return Object.hash(runtimeType,_this.id,_this.recipeId,_this.name,_this.sortKey);
}

@override
String toString() {
  final _this = this as StepSection;
  return 'StepSection(id: ${_this.id}, recipeId: ${_this.recipeId}, name: ${_this.name}, sortKey: ${_this.sortKey})';
}


}

/// @nodoc
abstract mixin class $StepSectionCopyWith<$Res>  {
  factory $StepSectionCopyWith(StepSection value, $Res Function(StepSection) _then) = _$StepSectionCopyWithImpl;
@useResult
$Res call({
 StepSectionId id, RecipeId recipeId, String name, SortKey sortKey
});




}
/// @nodoc
class _$StepSectionCopyWithImpl<$Res>
    implements $StepSectionCopyWith<$Res> {
  _$StepSectionCopyWithImpl(this._self, this._then);

  final StepSection _self;
  final $Res Function(StepSection) _then;

/// Create a copy of StepSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipeId = null,Object? name = null,Object? sortKey = null,}) {
  return _then(StepSection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as StepSectionId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,
  ));
}

}


/// Adds pattern-matching-related methods to [StepSection].
extension StepSectionPatterns on StepSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StepSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StepSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StepSection value)  $default,){
final _that = this;
switch (_that) {
case _StepSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StepSection value)?  $default,){
final _that = this;
switch (_that) {
case _StepSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StepSectionId id,  RecipeId recipeId,  String name,  SortKey sortKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StepSection() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StepSectionId id,  RecipeId recipeId,  String name,  SortKey sortKey)  $default,) {final _that = this;
switch (_that) {
case _StepSection():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StepSectionId id,  RecipeId recipeId,  String name,  SortKey sortKey)?  $default,) {final _that = this;
switch (_that) {
case _StepSection() when $default != null:
return $default(_that.id,_that.recipeId,_that.name,_that.sortKey);case _:
  return null;

}
}

}

/// @nodoc


class _StepSection implements StepSection {
  const _StepSection({required this.id, required this.recipeId, required this.name, required this.sortKey});
  

@override final  StepSectionId id;
@override final  RecipeId recipeId;
@override final  String name;
@override final  SortKey sortKey;

/// Create a copy of StepSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepSectionCopyWith<_StepSection> get copyWith => __$StepSectionCopyWithImpl<_StepSection>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StepSection&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortKey, sortKey) || other.sortKey == sortKey));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,recipeId,name,sortKey);
}

@override
String toString() {
    return 'StepSection(id: $id, recipeId: $recipeId, name: $name, sortKey: $sortKey)';
}


}

/// @nodoc
abstract mixin class _$StepSectionCopyWith<$Res> implements $StepSectionCopyWith<$Res> {
  factory _$StepSectionCopyWith(_StepSection value, $Res Function(_StepSection) _then) = __$StepSectionCopyWithImpl;
@override @useResult
$Res call({
 StepSectionId id, RecipeId recipeId, String name, SortKey sortKey
});




}
/// @nodoc
class __$StepSectionCopyWithImpl<$Res>
    implements _$StepSectionCopyWith<$Res> {
  __$StepSectionCopyWithImpl(this._self, this._then);

  final _StepSection _self;
  final $Res Function(_StepSection) _then;

/// Create a copy of StepSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipeId = null,Object? name = null,Object? sortKey = null,}) {
  return _then(_StepSection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as StepSectionId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,
  ));
}


}

// dart format on
