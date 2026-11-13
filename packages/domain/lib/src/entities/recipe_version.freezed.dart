// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecipeVersion {

 RecipeVersionId get id; RecipeId get recipeId; DateTime get createdAt;/// The recipe and its lines, sections, and steps, serialized as JSON.
 String get snapshotJson;/// What changed, such as "Made experiment the recipe".
 String get summary;
/// Create a copy of RecipeVersion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeVersionCopyWith<RecipeVersion> get copyWith => _$RecipeVersionCopyWithImpl<RecipeVersion>(this as RecipeVersion, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RecipeVersion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeVersion&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.recipeId, _this.recipeId) || other.recipeId == _this.recipeId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.snapshotJson, _this.snapshotJson) || other.snapshotJson == _this.snapshotJson)&&(identical(other.summary, _this.summary) || other.summary == _this.summary));
}


@override
int get hashCode {
  final _this = this as RecipeVersion;
  return Object.hash(runtimeType,_this.id,_this.recipeId,_this.createdAt,_this.snapshotJson,_this.summary);
}

@override
String toString() {
  final _this = this as RecipeVersion;
  return 'RecipeVersion(id: ${_this.id}, recipeId: ${_this.recipeId}, createdAt: ${_this.createdAt}, snapshotJson: ${_this.snapshotJson}, summary: ${_this.summary})';
}


}

/// @nodoc
abstract mixin class $RecipeVersionCopyWith<$Res>  {
  factory $RecipeVersionCopyWith(RecipeVersion value, $Res Function(RecipeVersion) _then) = _$RecipeVersionCopyWithImpl;
@useResult
$Res call({
 RecipeVersionId id, RecipeId recipeId, DateTime createdAt, String snapshotJson, String summary
});




}
/// @nodoc
class _$RecipeVersionCopyWithImpl<$Res>
    implements $RecipeVersionCopyWith<$Res> {
  _$RecipeVersionCopyWithImpl(this._self, this._then);

  final RecipeVersion _self;
  final $Res Function(RecipeVersion) _then;

/// Create a copy of RecipeVersion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipeId = null,Object? createdAt = null,Object? snapshotJson = null,Object? summary = null,}) {
  return _then(RecipeVersion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RecipeVersionId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,snapshotJson: null == snapshotJson ? _self.snapshotJson : snapshotJson // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeVersion].
extension RecipeVersionPatterns on RecipeVersion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeVersion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeVersion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeVersion value)  $default,){
final _that = this;
switch (_that) {
case _RecipeVersion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeVersion value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeVersion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecipeVersionId id,  RecipeId recipeId,  DateTime createdAt,  String snapshotJson,  String summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeVersion() when $default != null:
return $default(_that.id,_that.recipeId,_that.createdAt,_that.snapshotJson,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecipeVersionId id,  RecipeId recipeId,  DateTime createdAt,  String snapshotJson,  String summary)  $default,) {final _that = this;
switch (_that) {
case _RecipeVersion():
return $default(_that.id,_that.recipeId,_that.createdAt,_that.snapshotJson,_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecipeVersionId id,  RecipeId recipeId,  DateTime createdAt,  String snapshotJson,  String summary)?  $default,) {final _that = this;
switch (_that) {
case _RecipeVersion() when $default != null:
return $default(_that.id,_that.recipeId,_that.createdAt,_that.snapshotJson,_that.summary);case _:
  return null;

}
}

}

/// @nodoc


class _RecipeVersion implements RecipeVersion {
  const _RecipeVersion({required this.id, required this.recipeId, required this.createdAt, required this.snapshotJson, this.summary = ''});
  

@override final  RecipeVersionId id;
@override final  RecipeId recipeId;
@override final  DateTime createdAt;
/// The recipe and its lines, sections, and steps, serialized as JSON.
@override final  String snapshotJson;
/// What changed, such as "Made experiment the recipe".
@override@JsonKey() final  String summary;

/// Create a copy of RecipeVersion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeVersionCopyWith<_RecipeVersion> get copyWith => __$RecipeVersionCopyWithImpl<_RecipeVersion>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeVersion&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.snapshotJson, snapshotJson) || other.snapshotJson == snapshotJson)&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,recipeId,createdAt,snapshotJson,summary);
}

@override
String toString() {
    return 'RecipeVersion(id: $id, recipeId: $recipeId, createdAt: $createdAt, snapshotJson: $snapshotJson, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$RecipeVersionCopyWith<$Res> implements $RecipeVersionCopyWith<$Res> {
  factory _$RecipeVersionCopyWith(_RecipeVersion value, $Res Function(_RecipeVersion) _then) = __$RecipeVersionCopyWithImpl;
@override @useResult
$Res call({
 RecipeVersionId id, RecipeId recipeId, DateTime createdAt, String snapshotJson, String summary
});




}
/// @nodoc
class __$RecipeVersionCopyWithImpl<$Res>
    implements _$RecipeVersionCopyWith<$Res> {
  __$RecipeVersionCopyWithImpl(this._self, this._then);

  final _RecipeVersion _self;
  final $Res Function(_RecipeVersion) _then;

/// Create a copy of RecipeVersion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipeId = null,Object? createdAt = null,Object? snapshotJson = null,Object? summary = null,}) {
  return _then(_RecipeVersion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RecipeVersionId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,snapshotJson: null == snapshotJson ? _self.snapshotJson : snapshotJson // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
