// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroceryList {

 GroceryListId get id; String get name; DateTime get createdAt;
/// Create a copy of GroceryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceryListCopyWith<GroceryList> get copyWith => _$GroceryListCopyWithImpl<GroceryList>(this as GroceryList, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GroceryList;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroceryList&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as GroceryList;
  return Object.hash(runtimeType,_this.id,_this.name,_this.createdAt);
}

@override
String toString() {
  final _this = this as GroceryList;
  return 'GroceryList(id: ${_this.id}, name: ${_this.name}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $GroceryListCopyWith<$Res>  {
  factory $GroceryListCopyWith(GroceryList value, $Res Function(GroceryList) _then) = _$GroceryListCopyWithImpl;
@useResult
$Res call({
 GroceryListId id, String name, DateTime createdAt
});




}
/// @nodoc
class _$GroceryListCopyWithImpl<$Res>
    implements $GroceryListCopyWith<$Res> {
  _$GroceryListCopyWithImpl(this._self, this._then);

  final GroceryList _self;
  final $Res Function(GroceryList) _then;

/// Create a copy of GroceryList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? createdAt = null,}) {
  return _then(GroceryList(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GroceryListId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [GroceryList].
extension GroceryListPatterns on GroceryList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroceryList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroceryList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroceryList value)  $default,){
final _that = this;
switch (_that) {
case _GroceryList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroceryList value)?  $default,){
final _that = this;
switch (_that) {
case _GroceryList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GroceryListId id,  String name,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroceryList() when $default != null:
return $default(_that.id,_that.name,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GroceryListId id,  String name,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _GroceryList():
return $default(_that.id,_that.name,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GroceryListId id,  String name,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _GroceryList() when $default != null:
return $default(_that.id,_that.name,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _GroceryList implements GroceryList {
  const _GroceryList({required this.id, required this.name, required this.createdAt});
  

@override final  GroceryListId id;
@override final  String name;
@override final  DateTime createdAt;

/// Create a copy of GroceryList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceryListCopyWith<_GroceryList> get copyWith => __$GroceryListCopyWithImpl<_GroceryList>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroceryList&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,createdAt);
}

@override
String toString() {
    return 'GroceryList(id: $id, name: $name, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$GroceryListCopyWith<$Res> implements $GroceryListCopyWith<$Res> {
  factory _$GroceryListCopyWith(_GroceryList value, $Res Function(_GroceryList) _then) = __$GroceryListCopyWithImpl;
@override @useResult
$Res call({
 GroceryListId id, String name, DateTime createdAt
});




}
/// @nodoc
class __$GroceryListCopyWithImpl<$Res>
    implements _$GroceryListCopyWith<$Res> {
  __$GroceryListCopyWithImpl(this._self, this._then);

  final _GroceryList _self;
  final $Res Function(_GroceryList) _then;

/// Create a copy of GroceryList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? createdAt = null,}) {
  return _then(_GroceryList(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as GroceryListId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
