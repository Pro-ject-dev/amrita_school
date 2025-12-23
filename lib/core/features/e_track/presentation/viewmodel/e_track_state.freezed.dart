// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_track_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ETrackState {

 bool get isLoading; ETrackEntity? get data; String? get error;
/// Create a copy of ETrackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ETrackStateCopyWith<ETrackState> get copyWith => _$ETrackStateCopyWithImpl<ETrackState>(this as ETrackState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ETrackState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,error);

@override
String toString() {
  return 'ETrackState(isLoading: $isLoading, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class $ETrackStateCopyWith<$Res>  {
  factory $ETrackStateCopyWith(ETrackState value, $Res Function(ETrackState) _then) = _$ETrackStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ETrackEntity? data, String? error
});




}
/// @nodoc
class _$ETrackStateCopyWithImpl<$Res>
    implements $ETrackStateCopyWith<$Res> {
  _$ETrackStateCopyWithImpl(this._self, this._then);

  final ETrackState _self;
  final $Res Function(ETrackState) _then;

/// Create a copy of ETrackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ETrackEntity?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ETrackState].
extension ETrackStatePatterns on ETrackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ETrackState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ETrackState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ETrackState value)  $default,){
final _that = this;
switch (_that) {
case _ETrackState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ETrackState value)?  $default,){
final _that = this;
switch (_that) {
case _ETrackState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ETrackEntity? data,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ETrackState() when $default != null:
return $default(_that.isLoading,_that.data,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ETrackEntity? data,  String? error)  $default,) {final _that = this;
switch (_that) {
case _ETrackState():
return $default(_that.isLoading,_that.data,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ETrackEntity? data,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _ETrackState() when $default != null:
return $default(_that.isLoading,_that.data,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ETrackState implements ETrackState {
  const _ETrackState({required this.isLoading, this.data, this.error});
  

@override final  bool isLoading;
@override final  ETrackEntity? data;
@override final  String? error;

/// Create a copy of ETrackState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ETrackStateCopyWith<_ETrackState> get copyWith => __$ETrackStateCopyWithImpl<_ETrackState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ETrackState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,error);

@override
String toString() {
  return 'ETrackState(isLoading: $isLoading, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ETrackStateCopyWith<$Res> implements $ETrackStateCopyWith<$Res> {
  factory _$ETrackStateCopyWith(_ETrackState value, $Res Function(_ETrackState) _then) = __$ETrackStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ETrackEntity? data, String? error
});




}
/// @nodoc
class __$ETrackStateCopyWithImpl<$Res>
    implements _$ETrackStateCopyWith<$Res> {
  __$ETrackStateCopyWithImpl(this._self, this._then);

  final _ETrackState _self;
  final $Res Function(_ETrackState) _then;

/// Create a copy of ETrackState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = freezed,Object? error = freezed,}) {
  return _then(_ETrackState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ETrackEntity?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
