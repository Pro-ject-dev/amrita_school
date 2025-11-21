// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashScreenModel {

 String get value;
/// Create a copy of SplashScreenModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashScreenModelCopyWith<SplashScreenModel> get copyWith => _$SplashScreenModelCopyWithImpl<SplashScreenModel>(this as SplashScreenModel, _$identity);

  /// Serializes this SplashScreenModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenModel&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SplashScreenModel(value: $value)';
}


}

/// @nodoc
abstract mixin class $SplashScreenModelCopyWith<$Res>  {
  factory $SplashScreenModelCopyWith(SplashScreenModel value, $Res Function(SplashScreenModel) _then) = _$SplashScreenModelCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$SplashScreenModelCopyWithImpl<$Res>
    implements $SplashScreenModelCopyWith<$Res> {
  _$SplashScreenModelCopyWithImpl(this._self, this._then);

  final SplashScreenModel _self;
  final $Res Function(SplashScreenModel) _then;

/// Create a copy of SplashScreenModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SplashScreenModel].
extension SplashScreenModelPatterns on SplashScreenModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplashScreenModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplashScreenModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplashScreenModel value)  $default,){
final _that = this;
switch (_that) {
case _SplashScreenModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplashScreenModel value)?  $default,){
final _that = this;
switch (_that) {
case _SplashScreenModel() when $default != null:
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
case _SplashScreenModel() when $default != null:
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
case _SplashScreenModel():
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
case _SplashScreenModel() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SplashScreenModel extends SplashScreenModel {
  const _SplashScreenModel({required this.value}): super._();
  factory _SplashScreenModel.fromJson(Map<String, dynamic> json) => _$SplashScreenModelFromJson(json);

@override final  String value;

/// Create a copy of SplashScreenModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplashScreenModelCopyWith<_SplashScreenModel> get copyWith => __$SplashScreenModelCopyWithImpl<_SplashScreenModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SplashScreenModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplashScreenModel&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'SplashScreenModel(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SplashScreenModelCopyWith<$Res> implements $SplashScreenModelCopyWith<$Res> {
  factory _$SplashScreenModelCopyWith(_SplashScreenModel value, $Res Function(_SplashScreenModel) _then) = __$SplashScreenModelCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$SplashScreenModelCopyWithImpl<$Res>
    implements _$SplashScreenModelCopyWith<$Res> {
  __$SplashScreenModelCopyWithImpl(this._self, this._then);

  final _SplashScreenModel _self;
  final $Res Function(_SplashScreenModel) _then;

/// Create a copy of SplashScreenModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_SplashScreenModel(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
