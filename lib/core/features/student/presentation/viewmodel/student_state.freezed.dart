// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StudentState {

 bool get isLoading; String get data; List<StudentAttendance>? get studentList; String? get error;
/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentStateCopyWith<StudentState> get copyWith => _$StudentStateCopyWithImpl<StudentState>(this as StudentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.studentList, studentList)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,const DeepCollectionEquality().hash(studentList),error);

@override
String toString() {
  return 'StudentState(isLoading: $isLoading, data: $data, studentList: $studentList, error: $error)';
}


}

/// @nodoc
abstract mixin class $StudentStateCopyWith<$Res>  {
  factory $StudentStateCopyWith(StudentState value, $Res Function(StudentState) _then) = _$StudentStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String data, List<StudentAttendance>? studentList, String? error
});




}
/// @nodoc
class _$StudentStateCopyWithImpl<$Res>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._self, this._then);

  final StudentState _self;
  final $Res Function(StudentState) _then;

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = null,Object? studentList = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,studentList: freezed == studentList ? _self.studentList : studentList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentState].
extension StudentStatePatterns on StudentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentState value)  $default,){
final _that = this;
switch (_that) {
case _StudentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentState value)?  $default,){
final _that = this;
switch (_that) {
case _StudentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String data,  List<StudentAttendance>? studentList,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentState() when $default != null:
return $default(_that.isLoading,_that.data,_that.studentList,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String data,  List<StudentAttendance>? studentList,  String? error)  $default,) {final _that = this;
switch (_that) {
case _StudentState():
return $default(_that.isLoading,_that.data,_that.studentList,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String data,  List<StudentAttendance>? studentList,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _StudentState() when $default != null:
return $default(_that.isLoading,_that.data,_that.studentList,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _StudentState implements StudentState {
  const _StudentState({required this.isLoading, required this.data, required final  List<StudentAttendance>? studentList, this.error}): _studentList = studentList;
  

@override final  bool isLoading;
@override final  String data;
 final  List<StudentAttendance>? _studentList;
@override List<StudentAttendance>? get studentList {
  final value = _studentList;
  if (value == null) return null;
  if (_studentList is EqualUnmodifiableListView) return _studentList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? error;

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentStateCopyWith<_StudentState> get copyWith => __$StudentStateCopyWithImpl<_StudentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._studentList, _studentList)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,const DeepCollectionEquality().hash(_studentList),error);

@override
String toString() {
  return 'StudentState(isLoading: $isLoading, data: $data, studentList: $studentList, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StudentStateCopyWith<$Res> implements $StudentStateCopyWith<$Res> {
  factory _$StudentStateCopyWith(_StudentState value, $Res Function(_StudentState) _then) = __$StudentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String data, List<StudentAttendance>? studentList, String? error
});




}
/// @nodoc
class __$StudentStateCopyWithImpl<$Res>
    implements _$StudentStateCopyWith<$Res> {
  __$StudentStateCopyWithImpl(this._self, this._then);

  final _StudentState _self;
  final $Res Function(_StudentState) _then;

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = null,Object? studentList = freezed,Object? error = freezed,}) {
  return _then(_StudentState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,studentList: freezed == studentList ? _self._studentList : studentList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
