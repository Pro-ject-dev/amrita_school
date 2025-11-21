// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashScreenState {

 bool get isLoading; String get data; String? get error; bool get isFinished;
/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashScreenStateCopyWith<SplashScreenState> get copyWith => _$SplashScreenStateCopyWithImpl<SplashScreenState>(this as SplashScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&(identical(other.error, error) || other.error == error)&&(identical(other.isFinished, isFinished) || other.isFinished == isFinished));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,error,isFinished);

@override
String toString() {
  return 'SplashScreenState(isLoading: $isLoading, data: $data, error: $error, isFinished: $isFinished)';
}


}

/// @nodoc
abstract mixin class $SplashScreenStateCopyWith<$Res>  {
  factory $SplashScreenStateCopyWith(SplashScreenState value, $Res Function(SplashScreenState) _then) = _$SplashScreenStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String data, String? error, bool isFinished
});




}
/// @nodoc
class _$SplashScreenStateCopyWithImpl<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  _$SplashScreenStateCopyWithImpl(this._self, this._then);

  final SplashScreenState _self;
  final $Res Function(SplashScreenState) _then;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = null,Object? error = freezed,Object? isFinished = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isFinished: null == isFinished ? _self.isFinished : isFinished // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SplashScreenState].
extension SplashScreenStatePatterns on SplashScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplashScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplashScreenState value)  $default,){
final _that = this;
switch (_that) {
case _SplashScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplashScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String data,  String? error,  bool isFinished)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
return $default(_that.isLoading,_that.data,_that.error,_that.isFinished);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String data,  String? error,  bool isFinished)  $default,) {final _that = this;
switch (_that) {
case _SplashScreenState():
return $default(_that.isLoading,_that.data,_that.error,_that.isFinished);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String data,  String? error,  bool isFinished)?  $default,) {final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
return $default(_that.isLoading,_that.data,_that.error,_that.isFinished);case _:
  return null;

}
}

}

/// @nodoc


class _SplashScreenState implements SplashScreenState {
  const _SplashScreenState({required this.isLoading, required this.data, this.error, this.isFinished = false});
  

@override final  bool isLoading;
@override final  String data;
@override final  String? error;
@override@JsonKey() final  bool isFinished;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplashScreenStateCopyWith<_SplashScreenState> get copyWith => __$SplashScreenStateCopyWithImpl<_SplashScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplashScreenState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&(identical(other.error, error) || other.error == error)&&(identical(other.isFinished, isFinished) || other.isFinished == isFinished));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,error,isFinished);

@override
String toString() {
  return 'SplashScreenState(isLoading: $isLoading, data: $data, error: $error, isFinished: $isFinished)';
}


}

/// @nodoc
abstract mixin class _$SplashScreenStateCopyWith<$Res> implements $SplashScreenStateCopyWith<$Res> {
  factory _$SplashScreenStateCopyWith(_SplashScreenState value, $Res Function(_SplashScreenState) _then) = __$SplashScreenStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String data, String? error, bool isFinished
});




}
/// @nodoc
class __$SplashScreenStateCopyWithImpl<$Res>
    implements _$SplashScreenStateCopyWith<$Res> {
  __$SplashScreenStateCopyWithImpl(this._self, this._then);

  final _SplashScreenState _self;
  final $Res Function(_SplashScreenState) _then;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = null,Object? error = freezed,Object? isFinished = null,}) {
  return _then(_SplashScreenState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isFinished: null == isFinished ? _self.isFinished : isFinished // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
