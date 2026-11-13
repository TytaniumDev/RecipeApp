// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientLine {

 IngredientLineId get id; RecipeId get recipeId; String get rawText; SortKey get sortKey; IngredientSectionId? get sectionId; Quantity? get quantity;/// The upper end of a range such as "2–3". Null when not a range.
 Quantity? get quantityMax; Unit? get unit; String? get name; String? get preparation;
/// Create a copy of IngredientLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientLineCopyWith<IngredientLine> get copyWith => _$IngredientLineCopyWithImpl<IngredientLine>(this as IngredientLine, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as IngredientLine;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientLine&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.recipeId, _this.recipeId) || other.recipeId == _this.recipeId)&&(identical(other.rawText, _this.rawText) || other.rawText == _this.rawText)&&(identical(other.sortKey, _this.sortKey) || other.sortKey == _this.sortKey)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.quantityMax, _this.quantityMax) || other.quantityMax == _this.quantityMax)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.preparation, _this.preparation) || other.preparation == _this.preparation));
}


@override
int get hashCode {
  final _this = this as IngredientLine;
  return Object.hash(runtimeType,_this.id,_this.recipeId,_this.rawText,_this.sortKey,_this.sectionId,_this.quantity,_this.quantityMax,_this.unit,_this.name,_this.preparation);
}

@override
String toString() {
  final _this = this as IngredientLine;
  return 'IngredientLine(id: ${_this.id}, recipeId: ${_this.recipeId}, rawText: ${_this.rawText}, sortKey: ${_this.sortKey}, sectionId: ${_this.sectionId}, quantity: ${_this.quantity}, quantityMax: ${_this.quantityMax}, unit: ${_this.unit}, name: ${_this.name}, preparation: ${_this.preparation})';
}


}

/// @nodoc
abstract mixin class $IngredientLineCopyWith<$Res>  {
  factory $IngredientLineCopyWith(IngredientLine value, $Res Function(IngredientLine) _then) = _$IngredientLineCopyWithImpl;
@useResult
$Res call({
 IngredientLineId id, RecipeId recipeId, String rawText, SortKey sortKey, IngredientSectionId? sectionId, Quantity? quantity, Quantity? quantityMax, Unit? unit, String? name, String? preparation
});




}
/// @nodoc
class _$IngredientLineCopyWithImpl<$Res>
    implements $IngredientLineCopyWith<$Res> {
  _$IngredientLineCopyWithImpl(this._self, this._then);

  final IngredientLine _self;
  final $Res Function(IngredientLine) _then;

/// Create a copy of IngredientLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipeId = null,Object? rawText = null,Object? sortKey = null,Object? sectionId = freezed,Object? quantity = freezed,Object? quantityMax = freezed,Object? unit = freezed,Object? name = freezed,Object? preparation = freezed,}) {
  return _then(IngredientLine(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as IngredientLineId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,rawText: null == rawText ? _self.rawText : rawText // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as IngredientSectionId?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as Quantity?,quantityMax: freezed == quantityMax ? _self.quantityMax : quantityMax // ignore: cast_nullable_to_non_nullable
as Quantity?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,preparation: freezed == preparation ? _self.preparation : preparation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientLine].
extension IngredientLinePatterns on IngredientLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientLine value)  $default,){
final _that = this;
switch (_that) {
case _IngredientLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientLine value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IngredientLineId id,  RecipeId recipeId,  String rawText,  SortKey sortKey,  IngredientSectionId? sectionId,  Quantity? quantity,  Quantity? quantityMax,  Unit? unit,  String? name,  String? preparation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientLine() when $default != null:
return $default(_that.id,_that.recipeId,_that.rawText,_that.sortKey,_that.sectionId,_that.quantity,_that.quantityMax,_that.unit,_that.name,_that.preparation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IngredientLineId id,  RecipeId recipeId,  String rawText,  SortKey sortKey,  IngredientSectionId? sectionId,  Quantity? quantity,  Quantity? quantityMax,  Unit? unit,  String? name,  String? preparation)  $default,) {final _that = this;
switch (_that) {
case _IngredientLine():
return $default(_that.id,_that.recipeId,_that.rawText,_that.sortKey,_that.sectionId,_that.quantity,_that.quantityMax,_that.unit,_that.name,_that.preparation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IngredientLineId id,  RecipeId recipeId,  String rawText,  SortKey sortKey,  IngredientSectionId? sectionId,  Quantity? quantity,  Quantity? quantityMax,  Unit? unit,  String? name,  String? preparation)?  $default,) {final _that = this;
switch (_that) {
case _IngredientLine() when $default != null:
return $default(_that.id,_that.recipeId,_that.rawText,_that.sortKey,_that.sectionId,_that.quantity,_that.quantityMax,_that.unit,_that.name,_that.preparation);case _:
  return null;

}
}

}

/// @nodoc


class _IngredientLine implements IngredientLine {
  const _IngredientLine({required this.id, required this.recipeId, required this.rawText, required this.sortKey, this.sectionId, this.quantity, this.quantityMax, this.unit, this.name, this.preparation});
  

@override final  IngredientLineId id;
@override final  RecipeId recipeId;
@override final  String rawText;
@override final  SortKey sortKey;
@override final  IngredientSectionId? sectionId;
@override final  Quantity? quantity;
/// The upper end of a range such as "2–3". Null when not a range.
@override final  Quantity? quantityMax;
@override final  Unit? unit;
@override final  String? name;
@override final  String? preparation;

/// Create a copy of IngredientLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientLineCopyWith<_IngredientLine> get copyWith => __$IngredientLineCopyWithImpl<_IngredientLine>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientLine&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.rawText, rawText) || other.rawText == rawText)&&(identical(other.sortKey, sortKey) || other.sortKey == sortKey)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.quantityMax, quantityMax) || other.quantityMax == quantityMax)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.name, name) || other.name == name)&&(identical(other.preparation, preparation) || other.preparation == preparation));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,recipeId,rawText,sortKey,sectionId,quantity,quantityMax,unit,name,preparation);
}

@override
String toString() {
    return 'IngredientLine(id: $id, recipeId: $recipeId, rawText: $rawText, sortKey: $sortKey, sectionId: $sectionId, quantity: $quantity, quantityMax: $quantityMax, unit: $unit, name: $name, preparation: $preparation)';
}


}

/// @nodoc
abstract mixin class _$IngredientLineCopyWith<$Res> implements $IngredientLineCopyWith<$Res> {
  factory _$IngredientLineCopyWith(_IngredientLine value, $Res Function(_IngredientLine) _then) = __$IngredientLineCopyWithImpl;
@override @useResult
$Res call({
 IngredientLineId id, RecipeId recipeId, String rawText, SortKey sortKey, IngredientSectionId? sectionId, Quantity? quantity, Quantity? quantityMax, Unit? unit, String? name, String? preparation
});




}
/// @nodoc
class __$IngredientLineCopyWithImpl<$Res>
    implements _$IngredientLineCopyWith<$Res> {
  __$IngredientLineCopyWithImpl(this._self, this._then);

  final _IngredientLine _self;
  final $Res Function(_IngredientLine) _then;

/// Create a copy of IngredientLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipeId = null,Object? rawText = null,Object? sortKey = null,Object? sectionId = freezed,Object? quantity = freezed,Object? quantityMax = freezed,Object? unit = freezed,Object? name = freezed,Object? preparation = freezed,}) {
  return _then(_IngredientLine(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as IngredientLineId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,rawText: null == rawText ? _self.rawText : rawText // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as IngredientSectionId?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as Quantity?,quantityMax: freezed == quantityMax ? _self.quantityMax : quantityMax // ignore: cast_nullable_to_non_nullable
as Quantity?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,preparation: freezed == preparation ? _self.preparation : preparation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
