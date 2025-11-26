// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mainscaffold_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainscaffoldModel {

 String get value;
/// Create a copy of MainscaffoldModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainscaffoldModelCopyWith<MainscaffoldModel> get copyWith => _$MainscaffoldModelCopyWithImpl<MainscaffoldModel>(this as MainscaffoldModel, _$identity);

  /// Serializes this MainscaffoldModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainscaffoldModel&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MainscaffoldModel(value: $value)';
}


}

/// @nodoc
abstract mixin class $MainscaffoldModelCopyWith<$Res>  {
  factory $MainscaffoldModelCopyWith(MainscaffoldModel value, $Res Function(MainscaffoldModel) _then) = _$MainscaffoldModelCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$MainscaffoldModelCopyWithImpl<$Res>
    implements $MainscaffoldModelCopyWith<$Res> {
  _$MainscaffoldModelCopyWithImpl(this._self, this._then);

  final MainscaffoldModel _self;
  final $Res Function(MainscaffoldModel) _then;

/// Create a copy of MainscaffoldModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MainscaffoldModel].
extension MainscaffoldModelPatterns on MainscaffoldModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainscaffoldModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainscaffoldModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainscaffoldModel value)  $default,){
final _that = this;
switch (_that) {
case _MainscaffoldModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainscaffoldModel value)?  $default,){
final _that = this;
switch (_that) {
case _MainscaffoldModel() when $default != null:
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
case _MainscaffoldModel() when $default != null:
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
case _MainscaffoldModel():
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
case _MainscaffoldModel() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MainscaffoldModel extends MainscaffoldModel {
  const _MainscaffoldModel({required this.value}): super._();
  factory _MainscaffoldModel.fromJson(Map<String, dynamic> json) => _$MainscaffoldModelFromJson(json);

@override final  String value;

/// Create a copy of MainscaffoldModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainscaffoldModelCopyWith<_MainscaffoldModel> get copyWith => __$MainscaffoldModelCopyWithImpl<_MainscaffoldModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainscaffoldModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainscaffoldModel&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MainscaffoldModel(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MainscaffoldModelCopyWith<$Res> implements $MainscaffoldModelCopyWith<$Res> {
  factory _$MainscaffoldModelCopyWith(_MainscaffoldModel value, $Res Function(_MainscaffoldModel) _then) = __$MainscaffoldModelCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$MainscaffoldModelCopyWithImpl<$Res>
    implements _$MainscaffoldModelCopyWith<$Res> {
  __$MainscaffoldModelCopyWithImpl(this._self, this._then);

  final _MainscaffoldModel _self;
  final $Res Function(_MainscaffoldModel) _then;

/// Create a copy of MainscaffoldModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_MainscaffoldModel(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
