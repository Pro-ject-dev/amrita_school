// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mainscaffold_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainscaffoldState {

 bool get isLoading; String get data; int get currentIndex; String? get error;
/// Create a copy of MainscaffoldState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainscaffoldStateCopyWith<MainscaffoldState> get copyWith => _$MainscaffoldStateCopyWithImpl<MainscaffoldState>(this as MainscaffoldState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainscaffoldState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,currentIndex,error);

@override
String toString() {
  return 'MainscaffoldState(isLoading: $isLoading, data: $data, currentIndex: $currentIndex, error: $error)';
}


}

/// @nodoc
abstract mixin class $MainscaffoldStateCopyWith<$Res>  {
  factory $MainscaffoldStateCopyWith(MainscaffoldState value, $Res Function(MainscaffoldState) _then) = _$MainscaffoldStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String data, int currentIndex, String? error
});




}
/// @nodoc
class _$MainscaffoldStateCopyWithImpl<$Res>
    implements $MainscaffoldStateCopyWith<$Res> {
  _$MainscaffoldStateCopyWithImpl(this._self, this._then);

  final MainscaffoldState _self;
  final $Res Function(MainscaffoldState) _then;

/// Create a copy of MainscaffoldState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = null,Object? currentIndex = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MainscaffoldState].
extension MainscaffoldStatePatterns on MainscaffoldState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainscaffoldState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainscaffoldState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainscaffoldState value)  $default,){
final _that = this;
switch (_that) {
case _MainscaffoldState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainscaffoldState value)?  $default,){
final _that = this;
switch (_that) {
case _MainscaffoldState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String data,  int currentIndex,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainscaffoldState() when $default != null:
return $default(_that.isLoading,_that.data,_that.currentIndex,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String data,  int currentIndex,  String? error)  $default,) {final _that = this;
switch (_that) {
case _MainscaffoldState():
return $default(_that.isLoading,_that.data,_that.currentIndex,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String data,  int currentIndex,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _MainscaffoldState() when $default != null:
return $default(_that.isLoading,_that.data,_that.currentIndex,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MainscaffoldState implements MainscaffoldState {
  const _MainscaffoldState({required this.isLoading, required this.data, required this.currentIndex, this.error});
  

@override final  bool isLoading;
@override final  String data;
@override final  int currentIndex;
@override final  String? error;

/// Create a copy of MainscaffoldState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainscaffoldStateCopyWith<_MainscaffoldState> get copyWith => __$MainscaffoldStateCopyWithImpl<_MainscaffoldState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainscaffoldState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,currentIndex,error);

@override
String toString() {
  return 'MainscaffoldState(isLoading: $isLoading, data: $data, currentIndex: $currentIndex, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MainscaffoldStateCopyWith<$Res> implements $MainscaffoldStateCopyWith<$Res> {
  factory _$MainscaffoldStateCopyWith(_MainscaffoldState value, $Res Function(_MainscaffoldState) _then) = __$MainscaffoldStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String data, int currentIndex, String? error
});




}
/// @nodoc
class __$MainscaffoldStateCopyWithImpl<$Res>
    implements _$MainscaffoldStateCopyWith<$Res> {
  __$MainscaffoldStateCopyWithImpl(this._self, this._then);

  final _MainscaffoldState _self;
  final $Res Function(_MainscaffoldState) _then;

/// Create a copy of MainscaffoldState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = null,Object? currentIndex = null,Object? error = freezed,}) {
  return _then(_MainscaffoldState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
