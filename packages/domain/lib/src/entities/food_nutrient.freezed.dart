// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_nutrient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodNutrient {

 FoodId get foodId;/// USDA nutrient number, such as "208" for energy in kcal. Open Food
/// Facts values are mapped to the same numbers.
 String get nutrientCode; double get amountPer100g;
/// Create a copy of FoodNutrient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodNutrientCopyWith<FoodNutrient> get copyWith => _$FoodNutrientCopyWithImpl<FoodNutrient>(this as FoodNutrient, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FoodNutrient;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodNutrient&&(identical(other.foodId, _this.foodId) || other.foodId == _this.foodId)&&(identical(other.nutrientCode, _this.nutrientCode) || other.nutrientCode == _this.nutrientCode)&&(identical(other.amountPer100g, _this.amountPer100g) || other.amountPer100g == _this.amountPer100g));
}


@override
int get hashCode {
  final _this = this as FoodNutrient;
  return Object.hash(runtimeType,_this.foodId,_this.nutrientCode,_this.amountPer100g);
}

@override
String toString() {
  final _this = this as FoodNutrient;
  return 'FoodNutrient(foodId: ${_this.foodId}, nutrientCode: ${_this.nutrientCode}, amountPer100g: ${_this.amountPer100g})';
}


}

/// @nodoc
abstract mixin class $FoodNutrientCopyWith<$Res>  {
  factory $FoodNutrientCopyWith(FoodNutrient value, $Res Function(FoodNutrient) _then) = _$FoodNutrientCopyWithImpl;
@useResult
$Res call({
 FoodId foodId, String nutrientCode, double amountPer100g
});




}
/// @nodoc
class _$FoodNutrientCopyWithImpl<$Res>
    implements $FoodNutrientCopyWith<$Res> {
  _$FoodNutrientCopyWithImpl(this._self, this._then);

  final FoodNutrient _self;
  final $Res Function(FoodNutrient) _then;

/// Create a copy of FoodNutrient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foodId = null,Object? nutrientCode = null,Object? amountPer100g = null,}) {
  return _then(FoodNutrient(
foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as FoodId,nutrientCode: null == nutrientCode ? _self.nutrientCode : nutrientCode // ignore: cast_nullable_to_non_nullable
as String,amountPer100g: null == amountPer100g ? _self.amountPer100g : amountPer100g // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodNutrient].
extension FoodNutrientPatterns on FoodNutrient {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodNutrient value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodNutrient() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodNutrient value)  $default,){
final _that = this;
switch (_that) {
case _FoodNutrient():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodNutrient value)?  $default,){
final _that = this;
switch (_that) {
case _FoodNutrient() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FoodId foodId,  String nutrientCode,  double amountPer100g)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodNutrient() when $default != null:
return $default(_that.foodId,_that.nutrientCode,_that.amountPer100g);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FoodId foodId,  String nutrientCode,  double amountPer100g)  $default,) {final _that = this;
switch (_that) {
case _FoodNutrient():
return $default(_that.foodId,_that.nutrientCode,_that.amountPer100g);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FoodId foodId,  String nutrientCode,  double amountPer100g)?  $default,) {final _that = this;
switch (_that) {
case _FoodNutrient() when $default != null:
return $default(_that.foodId,_that.nutrientCode,_that.amountPer100g);case _:
  return null;

}
}

}

/// @nodoc


class _FoodNutrient implements FoodNutrient {
  const _FoodNutrient({required this.foodId, required this.nutrientCode, required this.amountPer100g});
  

@override final  FoodId foodId;
/// USDA nutrient number, such as "208" for energy in kcal. Open Food
/// Facts values are mapped to the same numbers.
@override final  String nutrientCode;
@override final  double amountPer100g;

/// Create a copy of FoodNutrient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodNutrientCopyWith<_FoodNutrient> get copyWith => __$FoodNutrientCopyWithImpl<_FoodNutrient>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodNutrient&&(identical(other.foodId, foodId) || other.foodId == foodId)&&(identical(other.nutrientCode, nutrientCode) || other.nutrientCode == nutrientCode)&&(identical(other.amountPer100g, amountPer100g) || other.amountPer100g == amountPer100g));
}


@override
int get hashCode {
    return Object.hash(runtimeType,foodId,nutrientCode,amountPer100g);
}

@override
String toString() {
    return 'FoodNutrient(foodId: $foodId, nutrientCode: $nutrientCode, amountPer100g: $amountPer100g)';
}


}

/// @nodoc
abstract mixin class _$FoodNutrientCopyWith<$Res> implements $FoodNutrientCopyWith<$Res> {
  factory _$FoodNutrientCopyWith(_FoodNutrient value, $Res Function(_FoodNutrient) _then) = __$FoodNutrientCopyWithImpl;
@override @useResult
$Res call({
 FoodId foodId, String nutrientCode, double amountPer100g
});




}
/// @nodoc
class __$FoodNutrientCopyWithImpl<$Res>
    implements _$FoodNutrientCopyWith<$Res> {
  __$FoodNutrientCopyWithImpl(this._self, this._then);

  final _FoodNutrient _self;
  final $Res Function(_FoodNutrient) _then;

/// Create a copy of FoodNutrient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foodId = null,Object? nutrientCode = null,Object? amountPer100g = null,}) {
  return _then(_FoodNutrient(
foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as FoodId,nutrientCode: null == nutrientCode ? _self.nutrientCode : nutrientCode // ignore: cast_nullable_to_non_nullable
as String,amountPer100g: null == amountPer100g ? _self.amountPer100g : amountPer100g // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
