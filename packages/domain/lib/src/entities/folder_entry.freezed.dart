// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folder_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FolderEntry {

 FolderId get folderId; RecipeId get recipeId; DateTime get addedAt;
/// Create a copy of FolderEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FolderEntryCopyWith<FolderEntry> get copyWith => _$FolderEntryCopyWithImpl<FolderEntry>(this as FolderEntry, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FolderEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FolderEntry&&(identical(other.folderId, _this.folderId) || other.folderId == _this.folderId)&&(identical(other.recipeId, _this.recipeId) || other.recipeId == _this.recipeId)&&(identical(other.addedAt, _this.addedAt) || other.addedAt == _this.addedAt));
}


@override
int get hashCode {
  final _this = this as FolderEntry;
  return Object.hash(runtimeType,_this.folderId,_this.recipeId,_this.addedAt);
}

@override
String toString() {
  final _this = this as FolderEntry;
  return 'FolderEntry(folderId: ${_this.folderId}, recipeId: ${_this.recipeId}, addedAt: ${_this.addedAt})';
}


}

/// @nodoc
abstract mixin class $FolderEntryCopyWith<$Res>  {
  factory $FolderEntryCopyWith(FolderEntry value, $Res Function(FolderEntry) _then) = _$FolderEntryCopyWithImpl;
@useResult
$Res call({
 FolderId folderId, RecipeId recipeId, DateTime addedAt
});




}
/// @nodoc
class _$FolderEntryCopyWithImpl<$Res>
    implements $FolderEntryCopyWith<$Res> {
  _$FolderEntryCopyWithImpl(this._self, this._then);

  final FolderEntry _self;
  final $Res Function(FolderEntry) _then;

/// Create a copy of FolderEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? folderId = null,Object? recipeId = null,Object? addedAt = null,}) {
  return _then(FolderEntry(
folderId: null == folderId ? _self.folderId : folderId // ignore: cast_nullable_to_non_nullable
as FolderId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [FolderEntry].
extension FolderEntryPatterns on FolderEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FolderEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FolderEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FolderEntry value)  $default,){
final _that = this;
switch (_that) {
case _FolderEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FolderEntry value)?  $default,){
final _that = this;
switch (_that) {
case _FolderEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FolderId folderId,  RecipeId recipeId,  DateTime addedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FolderEntry() when $default != null:
return $default(_that.folderId,_that.recipeId,_that.addedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FolderId folderId,  RecipeId recipeId,  DateTime addedAt)  $default,) {final _that = this;
switch (_that) {
case _FolderEntry():
return $default(_that.folderId,_that.recipeId,_that.addedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FolderId folderId,  RecipeId recipeId,  DateTime addedAt)?  $default,) {final _that = this;
switch (_that) {
case _FolderEntry() when $default != null:
return $default(_that.folderId,_that.recipeId,_that.addedAt);case _:
  return null;

}
}

}

/// @nodoc


class _FolderEntry implements FolderEntry {
  const _FolderEntry({required this.folderId, required this.recipeId, required this.addedAt});
  

@override final  FolderId folderId;
@override final  RecipeId recipeId;
@override final  DateTime addedAt;

/// Create a copy of FolderEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FolderEntryCopyWith<_FolderEntry> get copyWith => __$FolderEntryCopyWithImpl<_FolderEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FolderEntry&&(identical(other.folderId, folderId) || other.folderId == folderId)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,folderId,recipeId,addedAt);
}

@override
String toString() {
    return 'FolderEntry(folderId: $folderId, recipeId: $recipeId, addedAt: $addedAt)';
}


}

/// @nodoc
abstract mixin class _$FolderEntryCopyWith<$Res> implements $FolderEntryCopyWith<$Res> {
  factory _$FolderEntryCopyWith(_FolderEntry value, $Res Function(_FolderEntry) _then) = __$FolderEntryCopyWithImpl;
@override @useResult
$Res call({
 FolderId folderId, RecipeId recipeId, DateTime addedAt
});




}
/// @nodoc
class __$FolderEntryCopyWithImpl<$Res>
    implements _$FolderEntryCopyWith<$Res> {
  __$FolderEntryCopyWithImpl(this._self, this._then);

  final _FolderEntry _self;
  final $Res Function(_FolderEntry) _then;

/// Create a copy of FolderEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? folderId = null,Object? recipeId = null,Object? addedAt = null,}) {
  return _then(_FolderEntry(
folderId: null == folderId ? _self.folderId : folderId // ignore: cast_nullable_to_non_nullable
as FolderId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,addedAt: null == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
