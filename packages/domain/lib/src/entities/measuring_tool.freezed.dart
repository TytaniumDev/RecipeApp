// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measuring_tool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MeasuringTool {

 MeasuringToolId get id; Quantity get capacity; Unit get unit;
/// Create a copy of MeasuringTool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasuringToolCopyWith<MeasuringTool> get copyWith => _$MeasuringToolCopyWithImpl<MeasuringTool>(this as MeasuringTool, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MeasuringTool;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasuringTool&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&(identical(other.unit, _this.unit) || other.unit == _this.unit));
}


@override
int get hashCode {
  final _this = this as MeasuringTool;
  return Object.hash(runtimeType,_this.id,_this.capacity,_this.unit);
}

@override
String toString() {
  final _this = this as MeasuringTool;
  return 'MeasuringTool(id: ${_this.id}, capacity: ${_this.capacity}, unit: ${_this.unit})';
}


}

/// @nodoc
abstract mixin class $MeasuringToolCopyWith<$Res>  {
  factory $MeasuringToolCopyWith(MeasuringTool value, $Res Function(MeasuringTool) _then) = _$MeasuringToolCopyWithImpl;
@useResult
$Res call({
 MeasuringToolId id, Quantity capacity, Unit unit
});




}
/// @nodoc
class _$MeasuringToolCopyWithImpl<$Res>
    implements $MeasuringToolCopyWith<$Res> {
  _$MeasuringToolCopyWithImpl(this._self, this._then);

  final MeasuringTool _self;
  final $Res Function(MeasuringTool) _then;

/// Create a copy of MeasuringTool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? capacity = null,Object? unit = null,}) {
  return _then(MeasuringTool(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as MeasuringToolId,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as Quantity,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit,
  ));
}

}


/// Adds pattern-matching-related methods to [MeasuringTool].
extension MeasuringToolPatterns on MeasuringTool {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeasuringTool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeasuringTool() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeasuringTool value)  $default,){
final _that = this;
switch (_that) {
case _MeasuringTool():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeasuringTool value)?  $default,){
final _that = this;
switch (_that) {
case _MeasuringTool() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MeasuringToolId id,  Quantity capacity,  Unit unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeasuringTool() when $default != null:
return $default(_that.id,_that.capacity,_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MeasuringToolId id,  Quantity capacity,  Unit unit)  $default,) {final _that = this;
switch (_that) {
case _MeasuringTool():
return $default(_that.id,_that.capacity,_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MeasuringToolId id,  Quantity capacity,  Unit unit)?  $default,) {final _that = this;
switch (_that) {
case _MeasuringTool() when $default != null:
return $default(_that.id,_that.capacity,_that.unit);case _:
  return null;

}
}

}

/// @nodoc


class _MeasuringTool implements MeasuringTool {
  const _MeasuringTool({required this.id, required this.capacity, required this.unit});
  

@override final  MeasuringToolId id;
@override final  Quantity capacity;
@override final  Unit unit;

/// Create a copy of MeasuringTool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasuringToolCopyWith<_MeasuringTool> get copyWith => __$MeasuringToolCopyWithImpl<_MeasuringTool>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeasuringTool&&(identical(other.id, id) || other.id == id)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.unit, unit) || other.unit == unit));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,capacity,unit);
}

@override
String toString() {
    return 'MeasuringTool(id: $id, capacity: $capacity, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$MeasuringToolCopyWith<$Res> implements $MeasuringToolCopyWith<$Res> {
  factory _$MeasuringToolCopyWith(_MeasuringTool value, $Res Function(_MeasuringTool) _then) = __$MeasuringToolCopyWithImpl;
@override @useResult
$Res call({
 MeasuringToolId id, Quantity capacity, Unit unit
});




}
/// @nodoc
class __$MeasuringToolCopyWithImpl<$Res>
    implements _$MeasuringToolCopyWith<$Res> {
  __$MeasuringToolCopyWithImpl(this._self, this._then);

  final _MeasuringTool _self;
  final $Res Function(_MeasuringTool) _then;

/// Create a copy of MeasuringTool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? capacity = null,Object? unit = null,}) {
  return _then(_MeasuringTool(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as MeasuringToolId,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as Quantity,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Unit,
  ));
}


}

// dart format on
