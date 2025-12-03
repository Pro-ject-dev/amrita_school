// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_class_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyClassState {

 bool get isLoading; String get data; List<StudentAttendance>? get studentList; List<StudentAttendance>? get orginalStudentList; String? get error;
/// Create a copy of MyClassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyClassStateCopyWith<MyClassState> get copyWith => _$MyClassStateCopyWithImpl<MyClassState>(this as MyClassState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyClassState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.studentList, studentList)&&const DeepCollectionEquality().equals(other.orginalStudentList, orginalStudentList)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,const DeepCollectionEquality().hash(studentList),const DeepCollectionEquality().hash(orginalStudentList),error);

@override
String toString() {
  return 'MyClassState(isLoading: $isLoading, data: $data, studentList: $studentList, orginalStudentList: $orginalStudentList, error: $error)';
}


}

/// @nodoc
abstract mixin class $MyClassStateCopyWith<$Res>  {
  factory $MyClassStateCopyWith(MyClassState value, $Res Function(MyClassState) _then) = _$MyClassStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String data, List<StudentAttendance>? studentList, List<StudentAttendance>? orginalStudentList, String? error
});




}
/// @nodoc
class _$MyClassStateCopyWithImpl<$Res>
    implements $MyClassStateCopyWith<$Res> {
  _$MyClassStateCopyWithImpl(this._self, this._then);

  final MyClassState _self;
  final $Res Function(MyClassState) _then;

/// Create a copy of MyClassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = null,Object? studentList = freezed,Object? orginalStudentList = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,studentList: freezed == studentList ? _self.studentList : studentList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,orginalStudentList: freezed == orginalStudentList ? _self.orginalStudentList : orginalStudentList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyClassState].
extension MyClassStatePatterns on MyClassState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyClassState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyClassState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyClassState value)  $default,){
final _that = this;
switch (_that) {
case _MyClassState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyClassState value)?  $default,){
final _that = this;
switch (_that) {
case _MyClassState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String data,  List<StudentAttendance>? studentList,  List<StudentAttendance>? orginalStudentList,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyClassState() when $default != null:
return $default(_that.isLoading,_that.data,_that.studentList,_that.orginalStudentList,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String data,  List<StudentAttendance>? studentList,  List<StudentAttendance>? orginalStudentList,  String? error)  $default,) {final _that = this;
switch (_that) {
case _MyClassState():
return $default(_that.isLoading,_that.data,_that.studentList,_that.orginalStudentList,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String data,  List<StudentAttendance>? studentList,  List<StudentAttendance>? orginalStudentList,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _MyClassState() when $default != null:
return $default(_that.isLoading,_that.data,_that.studentList,_that.orginalStudentList,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MyClassState implements MyClassState {
  const _MyClassState({required this.isLoading, required this.data, required final  List<StudentAttendance>? studentList, required final  List<StudentAttendance>? orginalStudentList, this.error}): _studentList = studentList,_orginalStudentList = orginalStudentList;
  

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

 final  List<StudentAttendance>? _orginalStudentList;
@override List<StudentAttendance>? get orginalStudentList {
  final value = _orginalStudentList;
  if (value == null) return null;
  if (_orginalStudentList is EqualUnmodifiableListView) return _orginalStudentList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? error;

/// Create a copy of MyClassState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyClassStateCopyWith<_MyClassState> get copyWith => __$MyClassStateCopyWithImpl<_MyClassState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyClassState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._studentList, _studentList)&&const DeepCollectionEquality().equals(other._orginalStudentList, _orginalStudentList)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,const DeepCollectionEquality().hash(_studentList),const DeepCollectionEquality().hash(_orginalStudentList),error);

@override
String toString() {
  return 'MyClassState(isLoading: $isLoading, data: $data, studentList: $studentList, orginalStudentList: $orginalStudentList, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MyClassStateCopyWith<$Res> implements $MyClassStateCopyWith<$Res> {
  factory _$MyClassStateCopyWith(_MyClassState value, $Res Function(_MyClassState) _then) = __$MyClassStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String data, List<StudentAttendance>? studentList, List<StudentAttendance>? orginalStudentList, String? error
});




}
/// @nodoc
class __$MyClassStateCopyWithImpl<$Res>
    implements _$MyClassStateCopyWith<$Res> {
  __$MyClassStateCopyWithImpl(this._self, this._then);

  final _MyClassState _self;
  final $Res Function(_MyClassState) _then;

/// Create a copy of MyClassState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = null,Object? studentList = freezed,Object? orginalStudentList = freezed,Object? error = freezed,}) {
  return _then(_MyClassState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,studentList: freezed == studentList ? _self._studentList : studentList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,orginalStudentList: freezed == orginalStudentList ? _self._orginalStudentList : orginalStudentList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
