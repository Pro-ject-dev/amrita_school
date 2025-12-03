// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_track_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ETrackModel {

 String get value;
/// Create a copy of ETrackModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ETrackModelCopyWith<ETrackModel> get copyWith => _$ETrackModelCopyWithImpl<ETrackModel>(this as ETrackModel, _$identity);

  /// Serializes this ETrackModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ETrackModel&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ETrackModel(value: $value)';
}


}

/// @nodoc
abstract mixin class $ETrackModelCopyWith<$Res>  {
  factory $ETrackModelCopyWith(ETrackModel value, $Res Function(ETrackModel) _then) = _$ETrackModelCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$ETrackModelCopyWithImpl<$Res>
    implements $ETrackModelCopyWith<$Res> {
  _$ETrackModelCopyWithImpl(this._self, this._then);

  final ETrackModel _self;
  final $Res Function(ETrackModel) _then;

/// Create a copy of ETrackModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ETrackModel].
extension ETrackModelPatterns on ETrackModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ETrackModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ETrackModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ETrackModel value)  $default,){
final _that = this;
switch (_that) {
case _ETrackModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ETrackModel value)?  $default,){
final _that = this;
switch (_that) {
case _ETrackModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ETrackModel() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value)  $default,) {final _that = this;
switch (_that) {
case _ETrackModel():
return $default(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value)?  $default,) {final _that = this;
switch (_that) {
case _ETrackModel() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ETrackModel extends ETrackModel {
  const _ETrackModel({required this.value}): super._();
  factory _ETrackModel.fromJson(Map<String, dynamic> json) => _$ETrackModelFromJson(json);

@override final  String value;

/// Create a copy of ETrackModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ETrackModelCopyWith<_ETrackModel> get copyWith => __$ETrackModelCopyWithImpl<_ETrackModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ETrackModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ETrackModel&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ETrackModel(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ETrackModelCopyWith<$Res> implements $ETrackModelCopyWith<$Res> {
  factory _$ETrackModelCopyWith(_ETrackModel value, $Res Function(_ETrackModel) _then) = __$ETrackModelCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$ETrackModelCopyWithImpl<$Res>
    implements _$ETrackModelCopyWith<$Res> {
  __$ETrackModelCopyWithImpl(this._self, this._then);

  final _ETrackModel _self;
  final $Res Function(_ETrackModel) _then;

/// Create a copy of ETrackModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_ETrackModel(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
