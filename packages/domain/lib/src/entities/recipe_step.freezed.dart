// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecipeStep {

 RecipeStepId get id; RecipeId get recipeId; String get text; SortKey get sortKey; StepSectionId? get sectionId;
/// Create a copy of RecipeStep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeStepCopyWith<RecipeStep> get copyWith => _$RecipeStepCopyWithImpl<RecipeStep>(this as RecipeStep, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RecipeStep;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeStep&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.recipeId, _this.recipeId) || other.recipeId == _this.recipeId)&&(identical(other.text, _this.text) || other.text == _this.text)&&(identical(other.sortKey, _this.sortKey) || other.sortKey == _this.sortKey)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId));
}


@override
int get hashCode {
  final _this = this as RecipeStep;
  return Object.hash(runtimeType,_this.id,_this.recipeId,_this.text,_this.sortKey,_this.sectionId);
}

@override
String toString() {
  final _this = this as RecipeStep;
  return 'RecipeStep(id: ${_this.id}, recipeId: ${_this.recipeId}, text: ${_this.text}, sortKey: ${_this.sortKey}, sectionId: ${_this.sectionId})';
}


}

/// @nodoc
abstract mixin class $RecipeStepCopyWith<$Res>  {
  factory $RecipeStepCopyWith(RecipeStep value, $Res Function(RecipeStep) _then) = _$RecipeStepCopyWithImpl;
@useResult
$Res call({
 RecipeStepId id, RecipeId recipeId, String text, SortKey sortKey, StepSectionId? sectionId
});




}
/// @nodoc
class _$RecipeStepCopyWithImpl<$Res>
    implements $RecipeStepCopyWith<$Res> {
  _$RecipeStepCopyWithImpl(this._self, this._then);

  final RecipeStep _self;
  final $Res Function(RecipeStep) _then;

/// Create a copy of RecipeStep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipeId = null,Object? text = null,Object? sortKey = null,Object? sectionId = freezed,}) {
  return _then(RecipeStep(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RecipeStepId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as StepSectionId?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeStep].
extension RecipeStepPatterns on RecipeStep {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeStep value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeStep() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeStep value)  $default,){
final _that = this;
switch (_that) {
case _RecipeStep():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeStep value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeStep() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecipeStepId id,  RecipeId recipeId,  String text,  SortKey sortKey,  StepSectionId? sectionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeStep() when $default != null:
return $default(_that.id,_that.recipeId,_that.text,_that.sortKey,_that.sectionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecipeStepId id,  RecipeId recipeId,  String text,  SortKey sortKey,  StepSectionId? sectionId)  $default,) {final _that = this;
switch (_that) {
case _RecipeStep():
return $default(_that.id,_that.recipeId,_that.text,_that.sortKey,_that.sectionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecipeStepId id,  RecipeId recipeId,  String text,  SortKey sortKey,  StepSectionId? sectionId)?  $default,) {final _that = this;
switch (_that) {
case _RecipeStep() when $default != null:
return $default(_that.id,_that.recipeId,_that.text,_that.sortKey,_that.sectionId);case _:
  return null;

}
}

}

/// @nodoc


class _RecipeStep implements RecipeStep {
  const _RecipeStep({required this.id, required this.recipeId, required this.text, required this.sortKey, this.sectionId});
  

@override final  RecipeStepId id;
@override final  RecipeId recipeId;
@override final  String text;
@override final  SortKey sortKey;
@override final  StepSectionId? sectionId;

/// Create a copy of RecipeStep
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeStepCopyWith<_RecipeStep> get copyWith => __$RecipeStepCopyWithImpl<_RecipeStep>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeStep&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.text, text) || other.text == text)&&(identical(other.sortKey, sortKey) || other.sortKey == sortKey)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,recipeId,text,sortKey,sectionId);
}

@override
String toString() {
    return 'RecipeStep(id: $id, recipeId: $recipeId, text: $text, sortKey: $sortKey, sectionId: $sectionId)';
}


}

/// @nodoc
abstract mixin class _$RecipeStepCopyWith<$Res> implements $RecipeStepCopyWith<$Res> {
  factory _$RecipeStepCopyWith(_RecipeStep value, $Res Function(_RecipeStep) _then) = __$RecipeStepCopyWithImpl;
@override @useResult
$Res call({
 RecipeStepId id, RecipeId recipeId, String text, SortKey sortKey, StepSectionId? sectionId
});




}
/// @nodoc
class __$RecipeStepCopyWithImpl<$Res>
    implements _$RecipeStepCopyWith<$Res> {
  __$RecipeStepCopyWithImpl(this._self, this._then);

  final _RecipeStep _self;
  final $Res Function(_RecipeStep) _then;

/// Create a copy of RecipeStep
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipeId = null,Object? text = null,Object? sortKey = null,Object? sectionId = freezed,}) {
  return _then(_RecipeStep(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RecipeStepId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as SortKey,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as StepSectionId?,
  ));
}


}

// dart format on
