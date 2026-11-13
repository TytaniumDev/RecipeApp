// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_recipe_prefs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserRecipePrefs {

 RecipeId get recipeId;/// The serving size per-serving nutrition uses (PRD 7.4).
 Quantity get servings; UnitSystem get unitSystem;
/// Create a copy of UserRecipePrefs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRecipePrefsCopyWith<UserRecipePrefs> get copyWith => _$UserRecipePrefsCopyWithImpl<UserRecipePrefs>(this as UserRecipePrefs, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UserRecipePrefs;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRecipePrefs&&(identical(other.recipeId, _this.recipeId) || other.recipeId == _this.recipeId)&&(identical(other.servings, _this.servings) || other.servings == _this.servings)&&(identical(other.unitSystem, _this.unitSystem) || other.unitSystem == _this.unitSystem));
}


@override
int get hashCode {
  final _this = this as UserRecipePrefs;
  return Object.hash(runtimeType,_this.recipeId,_this.servings,_this.unitSystem);
}

@override
String toString() {
  final _this = this as UserRecipePrefs;
  return 'UserRecipePrefs(recipeId: ${_this.recipeId}, servings: ${_this.servings}, unitSystem: ${_this.unitSystem})';
}


}

/// @nodoc
abstract mixin class $UserRecipePrefsCopyWith<$Res>  {
  factory $UserRecipePrefsCopyWith(UserRecipePrefs value, $Res Function(UserRecipePrefs) _then) = _$UserRecipePrefsCopyWithImpl;
@useResult
$Res call({
 RecipeId recipeId, Quantity servings, UnitSystem unitSystem
});




}
/// @nodoc
class _$UserRecipePrefsCopyWithImpl<$Res>
    implements $UserRecipePrefsCopyWith<$Res> {
  _$UserRecipePrefsCopyWithImpl(this._self, this._then);

  final UserRecipePrefs _self;
  final $Res Function(UserRecipePrefs) _then;

/// Create a copy of UserRecipePrefs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipeId = null,Object? servings = null,Object? unitSystem = null,}) {
  return _then(UserRecipePrefs(
recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,servings: null == servings ? _self.servings : servings // ignore: cast_nullable_to_non_nullable
as Quantity,unitSystem: null == unitSystem ? _self.unitSystem : unitSystem // ignore: cast_nullable_to_non_nullable
as UnitSystem,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRecipePrefs].
extension UserRecipePrefsPatterns on UserRecipePrefs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRecipePrefs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRecipePrefs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRecipePrefs value)  $default,){
final _that = this;
switch (_that) {
case _UserRecipePrefs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRecipePrefs value)?  $default,){
final _that = this;
switch (_that) {
case _UserRecipePrefs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecipeId recipeId,  Quantity servings,  UnitSystem unitSystem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRecipePrefs() when $default != null:
return $default(_that.recipeId,_that.servings,_that.unitSystem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecipeId recipeId,  Quantity servings,  UnitSystem unitSystem)  $default,) {final _that = this;
switch (_that) {
case _UserRecipePrefs():
return $default(_that.recipeId,_that.servings,_that.unitSystem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecipeId recipeId,  Quantity servings,  UnitSystem unitSystem)?  $default,) {final _that = this;
switch (_that) {
case _UserRecipePrefs() when $default != null:
return $default(_that.recipeId,_that.servings,_that.unitSystem);case _:
  return null;

}
}

}

/// @nodoc


class _UserRecipePrefs implements UserRecipePrefs {
  const _UserRecipePrefs({required this.recipeId, required this.servings, this.unitSystem = UnitSystem.original});
  

@override final  RecipeId recipeId;
/// The serving size per-serving nutrition uses (PRD 7.4).
@override final  Quantity servings;
@override@JsonKey() final  UnitSystem unitSystem;

/// Create a copy of UserRecipePrefs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRecipePrefsCopyWith<_UserRecipePrefs> get copyWith => __$UserRecipePrefsCopyWithImpl<_UserRecipePrefs>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRecipePrefs&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.servings, servings) || other.servings == servings)&&(identical(other.unitSystem, unitSystem) || other.unitSystem == unitSystem));
}


@override
int get hashCode {
    return Object.hash(runtimeType,recipeId,servings,unitSystem);
}

@override
String toString() {
    return 'UserRecipePrefs(recipeId: $recipeId, servings: $servings, unitSystem: $unitSystem)';
}


}

/// @nodoc
abstract mixin class _$UserRecipePrefsCopyWith<$Res> implements $UserRecipePrefsCopyWith<$Res> {
  factory _$UserRecipePrefsCopyWith(_UserRecipePrefs value, $Res Function(_UserRecipePrefs) _then) = __$UserRecipePrefsCopyWithImpl;
@override @useResult
$Res call({
 RecipeId recipeId, Quantity servings, UnitSystem unitSystem
});




}
/// @nodoc
class __$UserRecipePrefsCopyWithImpl<$Res>
    implements _$UserRecipePrefsCopyWith<$Res> {
  __$UserRecipePrefsCopyWithImpl(this._self, this._then);

  final _UserRecipePrefs _self;
  final $Res Function(_UserRecipePrefs) _then;

/// Create a copy of UserRecipePrefs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipeId = null,Object? servings = null,Object? unitSystem = null,}) {
  return _then(_UserRecipePrefs(
recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,servings: null == servings ? _self.servings : servings // ignore: cast_nullable_to_non_nullable
as Quantity,unitSystem: null == unitSystem ? _self.unitSystem : unitSystem // ignore: cast_nullable_to_non_nullable
as UnitSystem,
  ));
}


}

// dart format on
