// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Recipe {

 RecipeId get id; String get title; Quantity get servings; DateTime get createdAt; DateTime get updatedAt; String? get photoRef; Duration? get prepTime; Duration? get cookTime; Duration? get totalTime; String get notes; String? get sourceUrl; String? get sourceName;
/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeCopyWith<Recipe> get copyWith => _$RecipeCopyWithImpl<Recipe>(this as Recipe, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Recipe;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recipe&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.servings, _this.servings) || other.servings == _this.servings)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.photoRef, _this.photoRef) || other.photoRef == _this.photoRef)&&(identical(other.prepTime, _this.prepTime) || other.prepTime == _this.prepTime)&&(identical(other.cookTime, _this.cookTime) || other.cookTime == _this.cookTime)&&(identical(other.totalTime, _this.totalTime) || other.totalTime == _this.totalTime)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.sourceUrl, _this.sourceUrl) || other.sourceUrl == _this.sourceUrl)&&(identical(other.sourceName, _this.sourceName) || other.sourceName == _this.sourceName));
}


@override
int get hashCode {
  final _this = this as Recipe;
  return Object.hash(runtimeType,_this.id,_this.title,_this.servings,_this.createdAt,_this.updatedAt,_this.photoRef,_this.prepTime,_this.cookTime,_this.totalTime,_this.notes,_this.sourceUrl,_this.sourceName);
}

@override
String toString() {
  final _this = this as Recipe;
  return 'Recipe(id: ${_this.id}, title: ${_this.title}, servings: ${_this.servings}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, photoRef: ${_this.photoRef}, prepTime: ${_this.prepTime}, cookTime: ${_this.cookTime}, totalTime: ${_this.totalTime}, notes: ${_this.notes}, sourceUrl: ${_this.sourceUrl}, sourceName: ${_this.sourceName})';
}


}

/// @nodoc
abstract mixin class $RecipeCopyWith<$Res>  {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) _then) = _$RecipeCopyWithImpl;
@useResult
$Res call({
 RecipeId id, String title, Quantity servings, DateTime createdAt, DateTime updatedAt, String? photoRef, Duration? prepTime, Duration? cookTime, Duration? totalTime, String notes, String? sourceUrl, String? sourceName
});




}
/// @nodoc
class _$RecipeCopyWithImpl<$Res>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._self, this._then);

  final Recipe _self;
  final $Res Function(Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? servings = null,Object? createdAt = null,Object? updatedAt = null,Object? photoRef = freezed,Object? prepTime = freezed,Object? cookTime = freezed,Object? totalTime = freezed,Object? notes = null,Object? sourceUrl = freezed,Object? sourceName = freezed,}) {
  return _then(Recipe(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RecipeId,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,servings: null == servings ? _self.servings : servings // ignore: cast_nullable_to_non_nullable
as Quantity,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,photoRef: freezed == photoRef ? _self.photoRef : photoRef // ignore: cast_nullable_to_non_nullable
as String?,prepTime: freezed == prepTime ? _self.prepTime : prepTime // ignore: cast_nullable_to_non_nullable
as Duration?,cookTime: freezed == cookTime ? _self.cookTime : cookTime // ignore: cast_nullable_to_non_nullable
as Duration?,totalTime: freezed == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as Duration?,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,sourceUrl: freezed == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String?,sourceName: freezed == sourceName ? _self.sourceName : sourceName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Recipe].
extension RecipePatterns on Recipe {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recipe value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recipe value)  $default,){
final _that = this;
switch (_that) {
case _Recipe():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recipe value)?  $default,){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecipeId id,  String title,  Quantity servings,  DateTime createdAt,  DateTime updatedAt,  String? photoRef,  Duration? prepTime,  Duration? cookTime,  Duration? totalTime,  String notes,  String? sourceUrl,  String? sourceName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.title,_that.servings,_that.createdAt,_that.updatedAt,_that.photoRef,_that.prepTime,_that.cookTime,_that.totalTime,_that.notes,_that.sourceUrl,_that.sourceName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecipeId id,  String title,  Quantity servings,  DateTime createdAt,  DateTime updatedAt,  String? photoRef,  Duration? prepTime,  Duration? cookTime,  Duration? totalTime,  String notes,  String? sourceUrl,  String? sourceName)  $default,) {final _that = this;
switch (_that) {
case _Recipe():
return $default(_that.id,_that.title,_that.servings,_that.createdAt,_that.updatedAt,_that.photoRef,_that.prepTime,_that.cookTime,_that.totalTime,_that.notes,_that.sourceUrl,_that.sourceName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecipeId id,  String title,  Quantity servings,  DateTime createdAt,  DateTime updatedAt,  String? photoRef,  Duration? prepTime,  Duration? cookTime,  Duration? totalTime,  String notes,  String? sourceUrl,  String? sourceName)?  $default,) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.title,_that.servings,_that.createdAt,_that.updatedAt,_that.photoRef,_that.prepTime,_that.cookTime,_that.totalTime,_that.notes,_that.sourceUrl,_that.sourceName);case _:
  return null;

}
}

}

/// @nodoc


class _Recipe implements Recipe {
  const _Recipe({required this.id, required this.title, required this.servings, required this.createdAt, required this.updatedAt, this.photoRef, this.prepTime, this.cookTime, this.totalTime, this.notes = '', this.sourceUrl, this.sourceName});
  

@override final  RecipeId id;
@override final  String title;
@override final  Quantity servings;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String? photoRef;
@override final  Duration? prepTime;
@override final  Duration? cookTime;
@override final  Duration? totalTime;
@override@JsonKey() final  String notes;
@override final  String? sourceUrl;
@override final  String? sourceName;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeCopyWith<_Recipe> get copyWith => __$RecipeCopyWithImpl<_Recipe>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recipe&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.servings, servings) || other.servings == servings)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.photoRef, photoRef) || other.photoRef == photoRef)&&(identical(other.prepTime, prepTime) || other.prepTime == prepTime)&&(identical(other.cookTime, cookTime) || other.cookTime == cookTime)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl)&&(identical(other.sourceName, sourceName) || other.sourceName == sourceName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,title,servings,createdAt,updatedAt,photoRef,prepTime,cookTime,totalTime,notes,sourceUrl,sourceName);
}

@override
String toString() {
    return 'Recipe(id: $id, title: $title, servings: $servings, createdAt: $createdAt, updatedAt: $updatedAt, photoRef: $photoRef, prepTime: $prepTime, cookTime: $cookTime, totalTime: $totalTime, notes: $notes, sourceUrl: $sourceUrl, sourceName: $sourceName)';
}


}

/// @nodoc
abstract mixin class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) _then) = __$RecipeCopyWithImpl;
@override @useResult
$Res call({
 RecipeId id, String title, Quantity servings, DateTime createdAt, DateTime updatedAt, String? photoRef, Duration? prepTime, Duration? cookTime, Duration? totalTime, String notes, String? sourceUrl, String? sourceName
});




}
/// @nodoc
class __$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(this._self, this._then);

  final _Recipe _self;
  final $Res Function(_Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? servings = null,Object? createdAt = null,Object? updatedAt = null,Object? photoRef = freezed,Object? prepTime = freezed,Object? cookTime = freezed,Object? totalTime = freezed,Object? notes = null,Object? sourceUrl = freezed,Object? sourceName = freezed,}) {
  return _then(_Recipe(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RecipeId,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,servings: null == servings ? _self.servings : servings // ignore: cast_nullable_to_non_nullable
as Quantity,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,photoRef: freezed == photoRef ? _self.photoRef : photoRef // ignore: cast_nullable_to_non_nullable
as String?,prepTime: freezed == prepTime ? _self.prepTime : prepTime // ignore: cast_nullable_to_non_nullable
as Duration?,cookTime: freezed == cookTime ? _self.cookTime : cookTime // ignore: cast_nullable_to_non_nullable
as Duration?,totalTime: freezed == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as Duration?,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,sourceUrl: freezed == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String?,sourceName: freezed == sourceName ? _self.sourceName : sourceName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
