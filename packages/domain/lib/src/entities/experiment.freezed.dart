// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experiment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Experiment {

 ExperimentId get id; RecipeId get recipeId; RecipeVersionId get baseVersionId; RecipeId get workingRecipeId; DateTime get createdAt; String get changeDescription; String get notes;/// "Share with others" in a joint share. Off by default.
 bool get sharedWithOthers; ExperimentOutcome get outcome;
/// Create a copy of Experiment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperimentCopyWith<Experiment> get copyWith => _$ExperimentCopyWithImpl<Experiment>(this as Experiment, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Experiment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Experiment&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.recipeId, _this.recipeId) || other.recipeId == _this.recipeId)&&(identical(other.baseVersionId, _this.baseVersionId) || other.baseVersionId == _this.baseVersionId)&&(identical(other.workingRecipeId, _this.workingRecipeId) || other.workingRecipeId == _this.workingRecipeId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.changeDescription, _this.changeDescription) || other.changeDescription == _this.changeDescription)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.sharedWithOthers, _this.sharedWithOthers) || other.sharedWithOthers == _this.sharedWithOthers)&&(identical(other.outcome, _this.outcome) || other.outcome == _this.outcome));
}


@override
int get hashCode {
  final _this = this as Experiment;
  return Object.hash(runtimeType,_this.id,_this.recipeId,_this.baseVersionId,_this.workingRecipeId,_this.createdAt,_this.changeDescription,_this.notes,_this.sharedWithOthers,_this.outcome);
}

@override
String toString() {
  final _this = this as Experiment;
  return 'Experiment(id: ${_this.id}, recipeId: ${_this.recipeId}, baseVersionId: ${_this.baseVersionId}, workingRecipeId: ${_this.workingRecipeId}, createdAt: ${_this.createdAt}, changeDescription: ${_this.changeDescription}, notes: ${_this.notes}, sharedWithOthers: ${_this.sharedWithOthers}, outcome: ${_this.outcome})';
}


}

/// @nodoc
abstract mixin class $ExperimentCopyWith<$Res>  {
  factory $ExperimentCopyWith(Experiment value, $Res Function(Experiment) _then) = _$ExperimentCopyWithImpl;
@useResult
$Res call({
 ExperimentId id, RecipeId recipeId, RecipeVersionId baseVersionId, RecipeId workingRecipeId, DateTime createdAt, String changeDescription, String notes, bool sharedWithOthers, ExperimentOutcome outcome
});




}
/// @nodoc
class _$ExperimentCopyWithImpl<$Res>
    implements $ExperimentCopyWith<$Res> {
  _$ExperimentCopyWithImpl(this._self, this._then);

  final Experiment _self;
  final $Res Function(Experiment) _then;

/// Create a copy of Experiment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipeId = null,Object? baseVersionId = null,Object? workingRecipeId = null,Object? createdAt = null,Object? changeDescription = null,Object? notes = null,Object? sharedWithOthers = null,Object? outcome = null,}) {
  return _then(Experiment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ExperimentId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,baseVersionId: null == baseVersionId ? _self.baseVersionId : baseVersionId // ignore: cast_nullable_to_non_nullable
as RecipeVersionId,workingRecipeId: null == workingRecipeId ? _self.workingRecipeId : workingRecipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,changeDescription: null == changeDescription ? _self.changeDescription : changeDescription // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,sharedWithOthers: null == sharedWithOthers ? _self.sharedWithOthers : sharedWithOthers // ignore: cast_nullable_to_non_nullable
as bool,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as ExperimentOutcome,
  ));
}

}


/// Adds pattern-matching-related methods to [Experiment].
extension ExperimentPatterns on Experiment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Experiment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Experiment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Experiment value)  $default,){
final _that = this;
switch (_that) {
case _Experiment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Experiment value)?  $default,){
final _that = this;
switch (_that) {
case _Experiment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ExperimentId id,  RecipeId recipeId,  RecipeVersionId baseVersionId,  RecipeId workingRecipeId,  DateTime createdAt,  String changeDescription,  String notes,  bool sharedWithOthers,  ExperimentOutcome outcome)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Experiment() when $default != null:
return $default(_that.id,_that.recipeId,_that.baseVersionId,_that.workingRecipeId,_that.createdAt,_that.changeDescription,_that.notes,_that.sharedWithOthers,_that.outcome);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ExperimentId id,  RecipeId recipeId,  RecipeVersionId baseVersionId,  RecipeId workingRecipeId,  DateTime createdAt,  String changeDescription,  String notes,  bool sharedWithOthers,  ExperimentOutcome outcome)  $default,) {final _that = this;
switch (_that) {
case _Experiment():
return $default(_that.id,_that.recipeId,_that.baseVersionId,_that.workingRecipeId,_that.createdAt,_that.changeDescription,_that.notes,_that.sharedWithOthers,_that.outcome);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ExperimentId id,  RecipeId recipeId,  RecipeVersionId baseVersionId,  RecipeId workingRecipeId,  DateTime createdAt,  String changeDescription,  String notes,  bool sharedWithOthers,  ExperimentOutcome outcome)?  $default,) {final _that = this;
switch (_that) {
case _Experiment() when $default != null:
return $default(_that.id,_that.recipeId,_that.baseVersionId,_that.workingRecipeId,_that.createdAt,_that.changeDescription,_that.notes,_that.sharedWithOthers,_that.outcome);case _:
  return null;

}
}

}

/// @nodoc


class _Experiment implements Experiment {
  const _Experiment({required this.id, required this.recipeId, required this.baseVersionId, required this.workingRecipeId, required this.createdAt, this.changeDescription = '', this.notes = '', this.sharedWithOthers = false, this.outcome = ExperimentOutcome.open});
  

@override final  ExperimentId id;
@override final  RecipeId recipeId;
@override final  RecipeVersionId baseVersionId;
@override final  RecipeId workingRecipeId;
@override final  DateTime createdAt;
@override@JsonKey() final  String changeDescription;
@override@JsonKey() final  String notes;
/// "Share with others" in a joint share. Off by default.
@override@JsonKey() final  bool sharedWithOthers;
@override@JsonKey() final  ExperimentOutcome outcome;

/// Create a copy of Experiment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperimentCopyWith<_Experiment> get copyWith => __$ExperimentCopyWithImpl<_Experiment>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Experiment&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.baseVersionId, baseVersionId) || other.baseVersionId == baseVersionId)&&(identical(other.workingRecipeId, workingRecipeId) || other.workingRecipeId == workingRecipeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.changeDescription, changeDescription) || other.changeDescription == changeDescription)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.sharedWithOthers, sharedWithOthers) || other.sharedWithOthers == sharedWithOthers)&&(identical(other.outcome, outcome) || other.outcome == outcome));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,recipeId,baseVersionId,workingRecipeId,createdAt,changeDescription,notes,sharedWithOthers,outcome);
}

@override
String toString() {
    return 'Experiment(id: $id, recipeId: $recipeId, baseVersionId: $baseVersionId, workingRecipeId: $workingRecipeId, createdAt: $createdAt, changeDescription: $changeDescription, notes: $notes, sharedWithOthers: $sharedWithOthers, outcome: $outcome)';
}


}

/// @nodoc
abstract mixin class _$ExperimentCopyWith<$Res> implements $ExperimentCopyWith<$Res> {
  factory _$ExperimentCopyWith(_Experiment value, $Res Function(_Experiment) _then) = __$ExperimentCopyWithImpl;
@override @useResult
$Res call({
 ExperimentId id, RecipeId recipeId, RecipeVersionId baseVersionId, RecipeId workingRecipeId, DateTime createdAt, String changeDescription, String notes, bool sharedWithOthers, ExperimentOutcome outcome
});




}
/// @nodoc
class __$ExperimentCopyWithImpl<$Res>
    implements _$ExperimentCopyWith<$Res> {
  __$ExperimentCopyWithImpl(this._self, this._then);

  final _Experiment _self;
  final $Res Function(_Experiment) _then;

/// Create a copy of Experiment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipeId = null,Object? baseVersionId = null,Object? workingRecipeId = null,Object? createdAt = null,Object? changeDescription = null,Object? notes = null,Object? sharedWithOthers = null,Object? outcome = null,}) {
  return _then(_Experiment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ExperimentId,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,baseVersionId: null == baseVersionId ? _self.baseVersionId : baseVersionId // ignore: cast_nullable_to_non_nullable
as RecipeVersionId,workingRecipeId: null == workingRecipeId ? _self.workingRecipeId : workingRecipeId // ignore: cast_nullable_to_non_nullable
as RecipeId,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,changeDescription: null == changeDescription ? _self.changeDescription : changeDescription // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,sharedWithOthers: null == sharedWithOthers ? _self.sharedWithOthers : sharedWithOthers // ignore: cast_nullable_to_non_nullable
as bool,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as ExperimentOutcome,
  ));
}


}

// dart format on
