// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentModel {

// ignore: invalid_annotation_target
@JsonKey(name: 'attendance_list') List<StudentAttendance> get attendanceList; String get message;
/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentModelCopyWith<StudentModel> get copyWith => _$StudentModelCopyWithImpl<StudentModel>(this as StudentModel, _$identity);

  /// Serializes this StudentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentModel&&const DeepCollectionEquality().equals(other.attendanceList, attendanceList)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(attendanceList),message);

@override
String toString() {
  return 'StudentModel(attendanceList: $attendanceList, message: $message)';
}


}

/// @nodoc
abstract mixin class $StudentModelCopyWith<$Res>  {
  factory $StudentModelCopyWith(StudentModel value, $Res Function(StudentModel) _then) = _$StudentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_list') List<StudentAttendance> attendanceList, String message
});




}
/// @nodoc
class _$StudentModelCopyWithImpl<$Res>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._self, this._then);

  final StudentModel _self;
  final $Res Function(StudentModel) _then;

/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceList = null,Object? message = null,}) {
  return _then(_self.copyWith(
attendanceList: null == attendanceList ? _self.attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentModel].
extension StudentModelPatterns on StudentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentModel value)  $default,){
final _that = this;
switch (_that) {
case _StudentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentModel value)?  $default,){
final _that = this;
switch (_that) {
case _StudentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_list')  List<StudentAttendance> attendanceList,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentModel() when $default != null:
return $default(_that.attendanceList,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_list')  List<StudentAttendance> attendanceList,  String message)  $default,) {final _that = this;
switch (_that) {
case _StudentModel():
return $default(_that.attendanceList,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_list')  List<StudentAttendance> attendanceList,  String message)?  $default,) {final _that = this;
switch (_that) {
case _StudentModel() when $default != null:
return $default(_that.attendanceList,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentModel implements StudentModel {
  const _StudentModel({@JsonKey(name: 'attendance_list') required final  List<StudentAttendance> attendanceList, required this.message}): _attendanceList = attendanceList;
  factory _StudentModel.fromJson(Map<String, dynamic> json) => _$StudentModelFromJson(json);

// ignore: invalid_annotation_target
 final  List<StudentAttendance> _attendanceList;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'attendance_list') List<StudentAttendance> get attendanceList {
  if (_attendanceList is EqualUnmodifiableListView) return _attendanceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attendanceList);
}

@override final  String message;

/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentModelCopyWith<_StudentModel> get copyWith => __$StudentModelCopyWithImpl<_StudentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentModel&&const DeepCollectionEquality().equals(other._attendanceList, _attendanceList)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_attendanceList),message);

@override
String toString() {
  return 'StudentModel(attendanceList: $attendanceList, message: $message)';
}


}

/// @nodoc
abstract mixin class _$StudentModelCopyWith<$Res> implements $StudentModelCopyWith<$Res> {
  factory _$StudentModelCopyWith(_StudentModel value, $Res Function(_StudentModel) _then) = __$StudentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_list') List<StudentAttendance> attendanceList, String message
});




}
/// @nodoc
class __$StudentModelCopyWithImpl<$Res>
    implements _$StudentModelCopyWith<$Res> {
  __$StudentModelCopyWithImpl(this._self, this._then);

  final _StudentModel _self;
  final $Res Function(_StudentModel) _then;

/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceList = null,Object? message = null,}) {
  return _then(_StudentModel(
attendanceList: null == attendanceList ? _self._attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StudentAttendance {

 String get student;// ignore: invalid_annotation_target
@JsonKey(name: 'student_name') String get studentName;// ignore: invalid_annotation_target
@JsonKey(name: 'attendance_status') String get attendanceStatus;// ignore: invalid_annotation_target
@JsonKey(name: 'attendance_on') String get attendanceOn; bool get isChecked;
/// Create a copy of StudentAttendance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentAttendanceCopyWith<StudentAttendance> get copyWith => _$StudentAttendanceCopyWithImpl<StudentAttendance>(this as StudentAttendance, _$identity);

  /// Serializes this StudentAttendance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentAttendance&&(identical(other.student, student) || other.student == student)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus)&&(identical(other.attendanceOn, attendanceOn) || other.attendanceOn == attendanceOn)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,student,studentName,attendanceStatus,attendanceOn,isChecked);

@override
String toString() {
  return 'StudentAttendance(student: $student, studentName: $studentName, attendanceStatus: $attendanceStatus, attendanceOn: $attendanceOn, isChecked: $isChecked)';
}


}

/// @nodoc
abstract mixin class $StudentAttendanceCopyWith<$Res>  {
  factory $StudentAttendanceCopyWith(StudentAttendance value, $Res Function(StudentAttendance) _then) = _$StudentAttendanceCopyWithImpl;
@useResult
$Res call({
 String student,@JsonKey(name: 'student_name') String studentName,@JsonKey(name: 'attendance_status') String attendanceStatus,@JsonKey(name: 'attendance_on') String attendanceOn, bool isChecked
});




}
/// @nodoc
class _$StudentAttendanceCopyWithImpl<$Res>
    implements $StudentAttendanceCopyWith<$Res> {
  _$StudentAttendanceCopyWithImpl(this._self, this._then);

  final StudentAttendance _self;
  final $Res Function(StudentAttendance) _then;

/// Create a copy of StudentAttendance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? student = null,Object? studentName = null,Object? attendanceStatus = null,Object? attendanceOn = null,Object? isChecked = null,}) {
  return _then(_self.copyWith(
student: null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as String,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,attendanceStatus: null == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String,attendanceOn: null == attendanceOn ? _self.attendanceOn : attendanceOn // ignore: cast_nullable_to_non_nullable
as String,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentAttendance].
extension StudentAttendancePatterns on StudentAttendance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentAttendance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentAttendance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentAttendance value)  $default,){
final _that = this;
switch (_that) {
case _StudentAttendance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentAttendance value)?  $default,){
final _that = this;
switch (_that) {
case _StudentAttendance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String student, @JsonKey(name: 'student_name')  String studentName, @JsonKey(name: 'attendance_status')  String attendanceStatus, @JsonKey(name: 'attendance_on')  String attendanceOn,  bool isChecked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentAttendance() when $default != null:
return $default(_that.student,_that.studentName,_that.attendanceStatus,_that.attendanceOn,_that.isChecked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String student, @JsonKey(name: 'student_name')  String studentName, @JsonKey(name: 'attendance_status')  String attendanceStatus, @JsonKey(name: 'attendance_on')  String attendanceOn,  bool isChecked)  $default,) {final _that = this;
switch (_that) {
case _StudentAttendance():
return $default(_that.student,_that.studentName,_that.attendanceStatus,_that.attendanceOn,_that.isChecked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String student, @JsonKey(name: 'student_name')  String studentName, @JsonKey(name: 'attendance_status')  String attendanceStatus, @JsonKey(name: 'attendance_on')  String attendanceOn,  bool isChecked)?  $default,) {final _that = this;
switch (_that) {
case _StudentAttendance() when $default != null:
return $default(_that.student,_that.studentName,_that.attendanceStatus,_that.attendanceOn,_that.isChecked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentAttendance implements StudentAttendance {
  const _StudentAttendance({required this.student, @JsonKey(name: 'student_name') required this.studentName, @JsonKey(name: 'attendance_status') required this.attendanceStatus, @JsonKey(name: 'attendance_on') required this.attendanceOn, this.isChecked = false});
  factory _StudentAttendance.fromJson(Map<String, dynamic> json) => _$StudentAttendanceFromJson(json);

@override final  String student;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'student_name') final  String studentName;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'attendance_status') final  String attendanceStatus;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'attendance_on') final  String attendanceOn;
@override@JsonKey() final  bool isChecked;

/// Create a copy of StudentAttendance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentAttendanceCopyWith<_StudentAttendance> get copyWith => __$StudentAttendanceCopyWithImpl<_StudentAttendance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentAttendanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentAttendance&&(identical(other.student, student) || other.student == student)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus)&&(identical(other.attendanceOn, attendanceOn) || other.attendanceOn == attendanceOn)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,student,studentName,attendanceStatus,attendanceOn,isChecked);

@override
String toString() {
  return 'StudentAttendance(student: $student, studentName: $studentName, attendanceStatus: $attendanceStatus, attendanceOn: $attendanceOn, isChecked: $isChecked)';
}


}

/// @nodoc
abstract mixin class _$StudentAttendanceCopyWith<$Res> implements $StudentAttendanceCopyWith<$Res> {
  factory _$StudentAttendanceCopyWith(_StudentAttendance value, $Res Function(_StudentAttendance) _then) = __$StudentAttendanceCopyWithImpl;
@override @useResult
$Res call({
 String student,@JsonKey(name: 'student_name') String studentName,@JsonKey(name: 'attendance_status') String attendanceStatus,@JsonKey(name: 'attendance_on') String attendanceOn, bool isChecked
});




}
/// @nodoc
class __$StudentAttendanceCopyWithImpl<$Res>
    implements _$StudentAttendanceCopyWith<$Res> {
  __$StudentAttendanceCopyWithImpl(this._self, this._then);

  final _StudentAttendance _self;
  final $Res Function(_StudentAttendance) _then;

/// Create a copy of StudentAttendance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? student = null,Object? studentName = null,Object? attendanceStatus = null,Object? attendanceOn = null,Object? isChecked = null,}) {
  return _then(_StudentAttendance(
student: null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as String,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,attendanceStatus: null == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String,attendanceOn: null == attendanceOn ? _self.attendanceOn : attendanceOn // ignore: cast_nullable_to_non_nullable
as String,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
