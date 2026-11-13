// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Food {

 FoodId get id; NutritionSource get source;/// The id in the source database (USDA FDC id or OFF barcode).
 String get externalId; String get name; String? get brand;
/// Create a copy of Food
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodCopyWith<Food> get copyWith => _$FoodCopyWithImpl<Food>(this as Food, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Food;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Food&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.externalId, _this.externalId) || other.externalId == _this.externalId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.brand, _this.brand) || other.brand == _this.brand));
}


@override
int get hashCode {
  final _this = this as Food;
  return Object.hash(runtimeType,_this.id,_this.source,_this.externalId,_this.name,_this.brand);
}

@override
String toString() {
  final _this = this as Food;
  return 'Food(id: ${_this.id}, source: ${_this.source}, externalId: ${_this.externalId}, name: ${_this.name}, brand: ${_this.brand})';
}


}

/// @nodoc
abstract mixin class $FoodCopyWith<$Res>  {
  factory $FoodCopyWith(Food value, $Res Function(Food) _then) = _$FoodCopyWithImpl;
@useResult
$Res call({
 FoodId id, NutritionSource source, String externalId, String name, String? brand
});




}
/// @nodoc
class _$FoodCopyWithImpl<$Res>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._self, this._then);

  final Food _self;
  final $Res Function(Food) _then;

/// Create a copy of Food
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? source = null,Object? externalId = null,Object? name = null,Object? brand = freezed,}) {
  return _then(Food(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FoodId,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as NutritionSource,externalId: null == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Food].
extension FoodPatterns on Food {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Food value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Food() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Food value)  $default,){
final _that = this;
switch (_that) {
case _Food():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Food value)?  $default,){
final _that = this;
switch (_that) {
case _Food() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FoodId id,  NutritionSource source,  String externalId,  String name,  String? brand)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Food() when $default != null:
return $default(_that.id,_that.source,_that.externalId,_that.name,_that.brand);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FoodId id,  NutritionSource source,  String externalId,  String name,  String? brand)  $default,) {final _that = this;
switch (_that) {
case _Food():
return $default(_that.id,_that.source,_that.externalId,_that.name,_that.brand);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FoodId id,  NutritionSource source,  String externalId,  String name,  String? brand)?  $default,) {final _that = this;
switch (_that) {
case _Food() when $default != null:
return $default(_that.id,_that.source,_that.externalId,_that.name,_that.brand);case _:
  return null;

}
}

}

/// @nodoc


class _Food implements Food {
  const _Food({required this.id, required this.source, required this.externalId, required this.name, this.brand});
  

@override final  FoodId id;
@override final  NutritionSource source;
/// The id in the source database (USDA FDC id or OFF barcode).
@override final  String externalId;
@override final  String name;
@override final  String? brand;

/// Create a copy of Food
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodCopyWith<_Food> get copyWith => __$FoodCopyWithImpl<_Food>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Food&&(identical(other.id, id) || other.id == id)&&(identical(other.source, source) || other.source == source)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,source,externalId,name,brand);
}

@override
String toString() {
    return 'Food(id: $id, source: $source, externalId: $externalId, name: $name, brand: $brand)';
}


}

/// @nodoc
abstract mixin class _$FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$FoodCopyWith(_Food value, $Res Function(_Food) _then) = __$FoodCopyWithImpl;
@override @useResult
$Res call({
 FoodId id, NutritionSource source, String externalId, String name, String? brand
});




}
/// @nodoc
class __$FoodCopyWithImpl<$Res>
    implements _$FoodCopyWith<$Res> {
  __$FoodCopyWithImpl(this._self, this._then);

  final _Food _self;
  final $Res Function(_Food) _then;

/// Create a copy of Food
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? source = null,Object? externalId = null,Object? name = null,Object? brand = freezed,}) {
  return _then(_Food(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FoodId,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as NutritionSource,externalId: null == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
