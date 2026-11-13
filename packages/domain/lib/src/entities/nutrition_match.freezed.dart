// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition_match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NutritionMatch {

 NutritionMatchId get id; IngredientLineId get ingredientLineId; FoodId get foodId; NutritionSource get source;/// The line's weight in grams, after unit conversion.
 double get gramWeight;/// True once the user confirmed or picked this match.
 bool get userConfirmed;
/// Create a copy of NutritionMatch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionMatchCopyWith<NutritionMatch> get copyWith => _$NutritionMatchCopyWithImpl<NutritionMatch>(this as NutritionMatch, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NutritionMatch;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionMatch&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.ingredientLineId, _this.ingredientLineId) || other.ingredientLineId == _this.ingredientLineId)&&(identical(other.foodId, _this.foodId) || other.foodId == _this.foodId)&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.gramWeight, _this.gramWeight) || other.gramWeight == _this.gramWeight)&&(identical(other.userConfirmed, _this.userConfirmed) || other.userConfirmed == _this.userConfirmed));
}


@override
int get hashCode {
  final _this = this as NutritionMatch;
  return Object.hash(runtimeType,_this.id,_this.ingredientLineId,_this.foodId,_this.source,_this.gramWeight,_this.userConfirmed);
}

@override
String toString() {
  final _this = this as NutritionMatch;
  return 'NutritionMatch(id: ${_this.id}, ingredientLineId: ${_this.ingredientLineId}, foodId: ${_this.foodId}, source: ${_this.source}, gramWeight: ${_this.gramWeight}, userConfirmed: ${_this.userConfirmed})';
}


}

/// @nodoc
abstract mixin class $NutritionMatchCopyWith<$Res>  {
  factory $NutritionMatchCopyWith(NutritionMatch value, $Res Function(NutritionMatch) _then) = _$NutritionMatchCopyWithImpl;
@useResult
$Res call({
 NutritionMatchId id, IngredientLineId ingredientLineId, FoodId foodId, NutritionSource source, double gramWeight, bool userConfirmed
});




}
/// @nodoc
class _$NutritionMatchCopyWithImpl<$Res>
    implements $NutritionMatchCopyWith<$Res> {
  _$NutritionMatchCopyWithImpl(this._self, this._then);

  final NutritionMatch _self;
  final $Res Function(NutritionMatch) _then;

/// Create a copy of NutritionMatch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ingredientLineId = null,Object? foodId = null,Object? source = null,Object? gramWeight = null,Object? userConfirmed = null,}) {
  return _then(NutritionMatch(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as NutritionMatchId,ingredientLineId: null == ingredientLineId ? _self.ingredientLineId : ingredientLineId // ignore: cast_nullable_to_non_nullable
as IngredientLineId,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as FoodId,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as NutritionSource,gramWeight: null == gramWeight ? _self.gramWeight : gramWeight // ignore: cast_nullable_to_non_nullable
as double,userConfirmed: null == userConfirmed ? _self.userConfirmed : userConfirmed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NutritionMatch].
extension NutritionMatchPatterns on NutritionMatch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionMatch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionMatch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionMatch value)  $default,){
final _that = this;
switch (_that) {
case _NutritionMatch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionMatch value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionMatch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NutritionMatchId id,  IngredientLineId ingredientLineId,  FoodId foodId,  NutritionSource source,  double gramWeight,  bool userConfirmed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionMatch() when $default != null:
return $default(_that.id,_that.ingredientLineId,_that.foodId,_that.source,_that.gramWeight,_that.userConfirmed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NutritionMatchId id,  IngredientLineId ingredientLineId,  FoodId foodId,  NutritionSource source,  double gramWeight,  bool userConfirmed)  $default,) {final _that = this;
switch (_that) {
case _NutritionMatch():
return $default(_that.id,_that.ingredientLineId,_that.foodId,_that.source,_that.gramWeight,_that.userConfirmed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NutritionMatchId id,  IngredientLineId ingredientLineId,  FoodId foodId,  NutritionSource source,  double gramWeight,  bool userConfirmed)?  $default,) {final _that = this;
switch (_that) {
case _NutritionMatch() when $default != null:
return $default(_that.id,_that.ingredientLineId,_that.foodId,_that.source,_that.gramWeight,_that.userConfirmed);case _:
  return null;

}
}

}

/// @nodoc


class _NutritionMatch implements NutritionMatch {
  const _NutritionMatch({required this.id, required this.ingredientLineId, required this.foodId, required this.source, required this.gramWeight, this.userConfirmed = false});
  

@override final  NutritionMatchId id;
@override final  IngredientLineId ingredientLineId;
@override final  FoodId foodId;
@override final  NutritionSource source;
/// The line's weight in grams, after unit conversion.
@override final  double gramWeight;
/// True once the user confirmed or picked this match.
@override@JsonKey() final  bool userConfirmed;

/// Create a copy of NutritionMatch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionMatchCopyWith<_NutritionMatch> get copyWith => __$NutritionMatchCopyWithImpl<_NutritionMatch>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionMatch&&(identical(other.id, id) || other.id == id)&&(identical(other.ingredientLineId, ingredientLineId) || other.ingredientLineId == ingredientLineId)&&(identical(other.foodId, foodId) || other.foodId == foodId)&&(identical(other.source, source) || other.source == source)&&(identical(other.gramWeight, gramWeight) || other.gramWeight == gramWeight)&&(identical(other.userConfirmed, userConfirmed) || other.userConfirmed == userConfirmed));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,ingredientLineId,foodId,source,gramWeight,userConfirmed);
}

@override
String toString() {
    return 'NutritionMatch(id: $id, ingredientLineId: $ingredientLineId, foodId: $foodId, source: $source, gramWeight: $gramWeight, userConfirmed: $userConfirmed)';
}


}

/// @nodoc
abstract mixin class _$NutritionMatchCopyWith<$Res> implements $NutritionMatchCopyWith<$Res> {
  factory _$NutritionMatchCopyWith(_NutritionMatch value, $Res Function(_NutritionMatch) _then) = __$NutritionMatchCopyWithImpl;
@override @useResult
$Res call({
 NutritionMatchId id, IngredientLineId ingredientLineId, FoodId foodId, NutritionSource source, double gramWeight, bool userConfirmed
});




}
/// @nodoc
class __$NutritionMatchCopyWithImpl<$Res>
    implements _$NutritionMatchCopyWith<$Res> {
  __$NutritionMatchCopyWithImpl(this._self, this._then);

  final _NutritionMatch _self;
  final $Res Function(_NutritionMatch) _then;

/// Create a copy of NutritionMatch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ingredientLineId = null,Object? foodId = null,Object? source = null,Object? gramWeight = null,Object? userConfirmed = null,}) {
  return _then(_NutritionMatch(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as NutritionMatchId,ingredientLineId: null == ingredientLineId ? _self.ingredientLineId : ingredientLineId // ignore: cast_nullable_to_non_nullable
as IngredientLineId,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as FoodId,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as NutritionSource,gramWeight: null == gramWeight ? _self.gramWeight : gramWeight // ignore: cast_nullable_to_non_nullable
as double,userConfirmed: null == userConfirmed ? _self.userConfirmed : userConfirmed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
