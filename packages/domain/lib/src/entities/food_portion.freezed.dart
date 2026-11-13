// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_portion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodPortion {

 FoodPortionId get id; FoodId get foodId; Quantity get amount; double get gramWeight;/// The portion's unit, or null for a count described in [description].
 Unit? get unit;/// The source's own wording, such as "1 large egg".
 String get description;
/// Create a copy of FoodPortion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodPortionCopyWith<FoodPortion> get copyWith => _$FoodPortionCopyWithImpl<FoodPortion>(this as FoodPortion, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FoodPortion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodPortion&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.foodId, _this.foodId) || other.foodId == _this.foodId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.gramWeight, _this.gramWeight) || other.gramWeight == _this.gramWeight)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.description, _this.description) || other.description == _this.description));
}


@override
int get hashCode {
  final _this = this as FoodPortion;
  return Object.hash(runtimeType,_this.id,_this.foodId,_this.amount,_this.gramWeight,_this.unit,_this.description);
}

@override
String toString() {
  final _this = this as FoodPortion;
  return 'FoodPortion(id: ${_this.id}, foodId: ${_this.foodId}, amount: ${_this.amount}, gramWeight: ${_this.gramWeight}, unit: ${_this.unit}, description: ${_this.description})';
}


}

/// @nodoc
abstract mixin class $FoodPortionCopyWith<$Res>  {
  factory $FoodPortionCopyWith(FoodPortion value, $Res Function(FoodPortion) _then) = _$FoodPortionCopyWithImpl;
@useResult
$Res call({
 FoodPortionId id, FoodId foodId, Quantity amount, double gramWeight, Unit? unit, String description
});




}
/// @nodoc
class _$FoodPortionCopyWithImpl<$Res>
    implements $FoodPortionCopyWith<$Res> {
  _$FoodPortionCopyWithImpl(this._self, this._then);

  final FoodPortion _self;
  final $Res Function(FoodPortion) _then;

/// Create a copy of FoodPortion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? foodId = null,Object? amount = null,Object? gramWeight = null,Object? unit = freezed,Object? description = null,}) {
  return _then(FoodPortion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FoodPortionId,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as FoodId,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Quantity,gramWeight: null == gramWeight ? _self.gramWeight : gramWeight // ignore: cast_nullable_to_non_nullable
as double,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodPortion].
extension FoodPortionPatterns on FoodPortion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodPortion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodPortion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodPortion value)  $default,){
final _that = this;
switch (_that) {
case _FoodPortion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodPortion value)?  $default,){
final _that = this;
switch (_that) {
case _FoodPortion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FoodPortionId id,  FoodId foodId,  Quantity amount,  double gramWeight,  Unit? unit,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodPortion() when $default != null:
return $default(_that.id,_that.foodId,_that.amount,_that.gramWeight,_that.unit,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FoodPortionId id,  FoodId foodId,  Quantity amount,  double gramWeight,  Unit? unit,  String description)  $default,) {final _that = this;
switch (_that) {
case _FoodPortion():
return $default(_that.id,_that.foodId,_that.amount,_that.gramWeight,_that.unit,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FoodPortionId id,  FoodId foodId,  Quantity amount,  double gramWeight,  Unit? unit,  String description)?  $default,) {final _that = this;
switch (_that) {
case _FoodPortion() when $default != null:
return $default(_that.id,_that.foodId,_that.amount,_that.gramWeight,_that.unit,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _FoodPortion implements FoodPortion {
  const _FoodPortion({required this.id, required this.foodId, required this.amount, required this.gramWeight, this.unit, this.description = ''});
  

@override final  FoodPortionId id;
@override final  FoodId foodId;
@override final  Quantity amount;
@override final  double gramWeight;
/// The portion's unit, or null for a count described in [description].
@override final  Unit? unit;
/// The source's own wording, such as "1 large egg".
@override@JsonKey() final  String description;

/// Create a copy of FoodPortion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodPortionCopyWith<_FoodPortion> get copyWith => __$FoodPortionCopyWithImpl<_FoodPortion>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodPortion&&(identical(other.id, id) || other.id == id)&&(identical(other.foodId, foodId) || other.foodId == foodId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.gramWeight, gramWeight) || other.gramWeight == gramWeight)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,foodId,amount,gramWeight,unit,description);
}

@override
String toString() {
    return 'FoodPortion(id: $id, foodId: $foodId, amount: $amount, gramWeight: $gramWeight, unit: $unit, description: $description)';
}


}

/// @nodoc
abstract mixin class _$FoodPortionCopyWith<$Res> implements $FoodPortionCopyWith<$Res> {
  factory _$FoodPortionCopyWith(_FoodPortion value, $Res Function(_FoodPortion) _then) = __$FoodPortionCopyWithImpl;
@override @useResult
$Res call({
 FoodPortionId id, FoodId foodId, Quantity amount, double gramWeight, Unit? unit, String description
});




}
/// @nodoc
class __$FoodPortionCopyWithImpl<$Res>
    implements _$FoodPortionCopyWith<$Res> {
  __$FoodPortionCopyWithImpl(this._self, this._then);

  final _FoodPortion _self;
  final $Res Function(_FoodPortion) _then;

/// Create a copy of FoodPortion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? foodId = null,Object? amount = null,Object? gramWeight = null,Object? unit = freezed,Object? description = null,}) {
  return _then(_FoodPortion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FoodPortionId,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as FoodId,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Quantity,gramWeight: null == gramWeight ? _self.gramWeight : gramWeight // ignore: cast_nullable_to_non_nullable
as double,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
