// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeModel {

@JsonKey(name: "emp_data") EmpDataModel? get empData;@JsonKey(name: "attendance_list") List<AttendanceModel>? get attendanceList;@JsonKey(name: "punch_list") List<PunchModel>? get punchList; String? get message;
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeModelCopyWith<HomeModel> get copyWith => _$HomeModelCopyWithImpl<HomeModel>(this as HomeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeModel&&(identical(other.empData, empData) || other.empData == empData)&&const DeepCollectionEquality().equals(other.attendanceList, attendanceList)&&const DeepCollectionEquality().equals(other.punchList, punchList)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,empData,const DeepCollectionEquality().hash(attendanceList),const DeepCollectionEquality().hash(punchList),message);

@override
String toString() {
  return 'HomeModel(empData: $empData, attendanceList: $attendanceList, punchList: $punchList, message: $message)';
}


}

/// @nodoc
abstract mixin class $HomeModelCopyWith<$Res>  {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) _then) = _$HomeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "emp_data") EmpDataModel? empData,@JsonKey(name: "attendance_list") List<AttendanceModel>? attendanceList,@JsonKey(name: "punch_list") List<PunchModel>? punchList, String? message
});


$EmpDataModelCopyWith<$Res>? get empData;

}
/// @nodoc
class _$HomeModelCopyWithImpl<$Res>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._self, this._then);

  final HomeModel _self;
  final $Res Function(HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empData = freezed,Object? attendanceList = freezed,Object? punchList = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
empData: freezed == empData ? _self.empData : empData // ignore: cast_nullable_to_non_nullable
as EmpDataModel?,attendanceList: freezed == attendanceList ? _self.attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<AttendanceModel>?,punchList: freezed == punchList ? _self.punchList : punchList // ignore: cast_nullable_to_non_nullable
as List<PunchModel>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpDataModelCopyWith<$Res>? get empData {
    if (_self.empData == null) {
    return null;
  }

  return $EmpDataModelCopyWith<$Res>(_self.empData!, (value) {
    return _then(_self.copyWith(empData: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeModel].
extension HomeModelPatterns on HomeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "emp_data")  EmpDataModel? empData, @JsonKey(name: "attendance_list")  List<AttendanceModel>? attendanceList, @JsonKey(name: "punch_list")  List<PunchModel>? punchList,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.empData,_that.attendanceList,_that.punchList,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "emp_data")  EmpDataModel? empData, @JsonKey(name: "attendance_list")  List<AttendanceModel>? attendanceList, @JsonKey(name: "punch_list")  List<PunchModel>? punchList,  String? message)  $default,) {final _that = this;
switch (_that) {
case _HomeModel():
return $default(_that.empData,_that.attendanceList,_that.punchList,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "emp_data")  EmpDataModel? empData, @JsonKey(name: "attendance_list")  List<AttendanceModel>? attendanceList, @JsonKey(name: "punch_list")  List<PunchModel>? punchList,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _HomeModel() when $default != null:
return $default(_that.empData,_that.attendanceList,_that.punchList,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _HomeModel implements HomeModel {
  const _HomeModel({@JsonKey(name: "emp_data") this.empData, @JsonKey(name: "attendance_list") final  List<AttendanceModel>? attendanceList, @JsonKey(name: "punch_list") final  List<PunchModel>? punchList, this.message}): _attendanceList = attendanceList,_punchList = punchList;
  

@override@JsonKey(name: "emp_data") final  EmpDataModel? empData;
 final  List<AttendanceModel>? _attendanceList;
@override@JsonKey(name: "attendance_list") List<AttendanceModel>? get attendanceList {
  final value = _attendanceList;
  if (value == null) return null;
  if (_attendanceList is EqualUnmodifiableListView) return _attendanceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PunchModel>? _punchList;
@override@JsonKey(name: "punch_list") List<PunchModel>? get punchList {
  final value = _punchList;
  if (value == null) return null;
  if (_punchList is EqualUnmodifiableListView) return _punchList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? message;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeModelCopyWith<_HomeModel> get copyWith => __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeModel&&(identical(other.empData, empData) || other.empData == empData)&&const DeepCollectionEquality().equals(other._attendanceList, _attendanceList)&&const DeepCollectionEquality().equals(other._punchList, _punchList)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,empData,const DeepCollectionEquality().hash(_attendanceList),const DeepCollectionEquality().hash(_punchList),message);

@override
String toString() {
  return 'HomeModel(empData: $empData, attendanceList: $attendanceList, punchList: $punchList, message: $message)';
}


}

/// @nodoc
abstract mixin class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(_HomeModel value, $Res Function(_HomeModel) _then) = __$HomeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "emp_data") EmpDataModel? empData,@JsonKey(name: "attendance_list") List<AttendanceModel>? attendanceList,@JsonKey(name: "punch_list") List<PunchModel>? punchList, String? message
});


@override $EmpDataModelCopyWith<$Res>? get empData;

}
/// @nodoc
class __$HomeModelCopyWithImpl<$Res>
    implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(this._self, this._then);

  final _HomeModel _self;
  final $Res Function(_HomeModel) _then;

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empData = freezed,Object? attendanceList = freezed,Object? punchList = freezed,Object? message = freezed,}) {
  return _then(_HomeModel(
empData: freezed == empData ? _self.empData : empData // ignore: cast_nullable_to_non_nullable
as EmpDataModel?,attendanceList: freezed == attendanceList ? _self._attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<AttendanceModel>?,punchList: freezed == punchList ? _self._punchList : punchList // ignore: cast_nullable_to_non_nullable
as List<PunchModel>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpDataModelCopyWith<$Res>? get empData {
    if (_self.empData == null) {
    return null;
  }

  return $EmpDataModelCopyWith<$Res>(_self.empData!, (value) {
    return _then(_self.copyWith(empData: value));
  });
}
}


/// @nodoc
mixin _$EmpDataModel {

@JsonKey(name: 'emp_id') String? get empId;@JsonKey(name: 'employee_name') String? get employeeName; String? get status; String? get gender;@JsonKey(name: 'date_of_birth') String? get dateOfBirth;@JsonKey(name: 'date_of_joining') String? get dateOfJoining; String? get school; String? get designation;@JsonKey(name: 'employment_category') String? get employmentCategory;@JsonKey(name: 'employment_type') String? get employmentType;
/// Create a copy of EmpDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpDataModelCopyWith<EmpDataModel> get copyWith => _$EmpDataModelCopyWithImpl<EmpDataModel>(this as EmpDataModel, _$identity);

  /// Serializes this EmpDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpDataModel&&(identical(other.empId, empId) || other.empId == empId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.status, status) || other.status == status)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.dateOfJoining, dateOfJoining) || other.dateOfJoining == dateOfJoining)&&(identical(other.school, school) || other.school == school)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.employmentCategory, employmentCategory) || other.employmentCategory == employmentCategory)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empId,employeeName,status,gender,dateOfBirth,dateOfJoining,school,designation,employmentCategory,employmentType);

@override
String toString() {
  return 'EmpDataModel(empId: $empId, employeeName: $employeeName, status: $status, gender: $gender, dateOfBirth: $dateOfBirth, dateOfJoining: $dateOfJoining, school: $school, designation: $designation, employmentCategory: $employmentCategory, employmentType: $employmentType)';
}


}

/// @nodoc
abstract mixin class $EmpDataModelCopyWith<$Res>  {
  factory $EmpDataModelCopyWith(EmpDataModel value, $Res Function(EmpDataModel) _then) = _$EmpDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'emp_id') String? empId,@JsonKey(name: 'employee_name') String? employeeName, String? status, String? gender,@JsonKey(name: 'date_of_birth') String? dateOfBirth,@JsonKey(name: 'date_of_joining') String? dateOfJoining, String? school, String? designation,@JsonKey(name: 'employment_category') String? employmentCategory,@JsonKey(name: 'employment_type') String? employmentType
});




}
/// @nodoc
class _$EmpDataModelCopyWithImpl<$Res>
    implements $EmpDataModelCopyWith<$Res> {
  _$EmpDataModelCopyWithImpl(this._self, this._then);

  final EmpDataModel _self;
  final $Res Function(EmpDataModel) _then;

/// Create a copy of EmpDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empId = freezed,Object? employeeName = freezed,Object? status = freezed,Object? gender = freezed,Object? dateOfBirth = freezed,Object? dateOfJoining = freezed,Object? school = freezed,Object? designation = freezed,Object? employmentCategory = freezed,Object? employmentType = freezed,}) {
  return _then(_self.copyWith(
empId: freezed == empId ? _self.empId : empId // ignore: cast_nullable_to_non_nullable
as String?,employeeName: freezed == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,dateOfJoining: freezed == dateOfJoining ? _self.dateOfJoining : dateOfJoining // ignore: cast_nullable_to_non_nullable
as String?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,employmentCategory: freezed == employmentCategory ? _self.employmentCategory : employmentCategory // ignore: cast_nullable_to_non_nullable
as String?,employmentType: freezed == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmpDataModel].
extension EmpDataModelPatterns on EmpDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmpDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmpDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmpDataModel value)  $default,){
final _that = this;
switch (_that) {
case _EmpDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmpDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmpDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'emp_id')  String? empId, @JsonKey(name: 'employee_name')  String? employeeName,  String? status,  String? gender, @JsonKey(name: 'date_of_birth')  String? dateOfBirth, @JsonKey(name: 'date_of_joining')  String? dateOfJoining,  String? school,  String? designation, @JsonKey(name: 'employment_category')  String? employmentCategory, @JsonKey(name: 'employment_type')  String? employmentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmpDataModel() when $default != null:
return $default(_that.empId,_that.employeeName,_that.status,_that.gender,_that.dateOfBirth,_that.dateOfJoining,_that.school,_that.designation,_that.employmentCategory,_that.employmentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'emp_id')  String? empId, @JsonKey(name: 'employee_name')  String? employeeName,  String? status,  String? gender, @JsonKey(name: 'date_of_birth')  String? dateOfBirth, @JsonKey(name: 'date_of_joining')  String? dateOfJoining,  String? school,  String? designation, @JsonKey(name: 'employment_category')  String? employmentCategory, @JsonKey(name: 'employment_type')  String? employmentType)  $default,) {final _that = this;
switch (_that) {
case _EmpDataModel():
return $default(_that.empId,_that.employeeName,_that.status,_that.gender,_that.dateOfBirth,_that.dateOfJoining,_that.school,_that.designation,_that.employmentCategory,_that.employmentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'emp_id')  String? empId, @JsonKey(name: 'employee_name')  String? employeeName,  String? status,  String? gender, @JsonKey(name: 'date_of_birth')  String? dateOfBirth, @JsonKey(name: 'date_of_joining')  String? dateOfJoining,  String? school,  String? designation, @JsonKey(name: 'employment_category')  String? employmentCategory, @JsonKey(name: 'employment_type')  String? employmentType)?  $default,) {final _that = this;
switch (_that) {
case _EmpDataModel() when $default != null:
return $default(_that.empId,_that.employeeName,_that.status,_that.gender,_that.dateOfBirth,_that.dateOfJoining,_that.school,_that.designation,_that.employmentCategory,_that.employmentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmpDataModel implements EmpDataModel {
  const _EmpDataModel({@JsonKey(name: 'emp_id') this.empId, @JsonKey(name: 'employee_name') this.employeeName, this.status, this.gender, @JsonKey(name: 'date_of_birth') this.dateOfBirth, @JsonKey(name: 'date_of_joining') this.dateOfJoining, this.school, this.designation, @JsonKey(name: 'employment_category') this.employmentCategory, @JsonKey(name: 'employment_type') this.employmentType});
  factory _EmpDataModel.fromJson(Map<String, dynamic> json) => _$EmpDataModelFromJson(json);

@override@JsonKey(name: 'emp_id') final  String? empId;
@override@JsonKey(name: 'employee_name') final  String? employeeName;
@override final  String? status;
@override final  String? gender;
@override@JsonKey(name: 'date_of_birth') final  String? dateOfBirth;
@override@JsonKey(name: 'date_of_joining') final  String? dateOfJoining;
@override final  String? school;
@override final  String? designation;
@override@JsonKey(name: 'employment_category') final  String? employmentCategory;
@override@JsonKey(name: 'employment_type') final  String? employmentType;

/// Create a copy of EmpDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpDataModelCopyWith<_EmpDataModel> get copyWith => __$EmpDataModelCopyWithImpl<_EmpDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmpDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmpDataModel&&(identical(other.empId, empId) || other.empId == empId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.status, status) || other.status == status)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.dateOfJoining, dateOfJoining) || other.dateOfJoining == dateOfJoining)&&(identical(other.school, school) || other.school == school)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.employmentCategory, employmentCategory) || other.employmentCategory == employmentCategory)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empId,employeeName,status,gender,dateOfBirth,dateOfJoining,school,designation,employmentCategory,employmentType);

@override
String toString() {
  return 'EmpDataModel(empId: $empId, employeeName: $employeeName, status: $status, gender: $gender, dateOfBirth: $dateOfBirth, dateOfJoining: $dateOfJoining, school: $school, designation: $designation, employmentCategory: $employmentCategory, employmentType: $employmentType)';
}


}

/// @nodoc
abstract mixin class _$EmpDataModelCopyWith<$Res> implements $EmpDataModelCopyWith<$Res> {
  factory _$EmpDataModelCopyWith(_EmpDataModel value, $Res Function(_EmpDataModel) _then) = __$EmpDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'emp_id') String? empId,@JsonKey(name: 'employee_name') String? employeeName, String? status, String? gender,@JsonKey(name: 'date_of_birth') String? dateOfBirth,@JsonKey(name: 'date_of_joining') String? dateOfJoining, String? school, String? designation,@JsonKey(name: 'employment_category') String? employmentCategory,@JsonKey(name: 'employment_type') String? employmentType
});




}
/// @nodoc
class __$EmpDataModelCopyWithImpl<$Res>
    implements _$EmpDataModelCopyWith<$Res> {
  __$EmpDataModelCopyWithImpl(this._self, this._then);

  final _EmpDataModel _self;
  final $Res Function(_EmpDataModel) _then;

/// Create a copy of EmpDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empId = freezed,Object? employeeName = freezed,Object? status = freezed,Object? gender = freezed,Object? dateOfBirth = freezed,Object? dateOfJoining = freezed,Object? school = freezed,Object? designation = freezed,Object? employmentCategory = freezed,Object? employmentType = freezed,}) {
  return _then(_EmpDataModel(
empId: freezed == empId ? _self.empId : empId // ignore: cast_nullable_to_non_nullable
as String?,employeeName: freezed == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,dateOfJoining: freezed == dateOfJoining ? _self.dateOfJoining : dateOfJoining // ignore: cast_nullable_to_non_nullable
as String?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,employmentCategory: freezed == employmentCategory ? _self.employmentCategory : employmentCategory // ignore: cast_nullable_to_non_nullable
as String?,employmentType: freezed == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AttendanceModel {

 String? get employee;@JsonKey(name: 'attendance_date') String? get attendanceDate;@JsonKey(name: 'employee_name') String? get employeeName; String? get status; String? get shift;@JsonKey(name: 'late_entry') int? get lateEntry;@JsonKey(name: 'early_exit') int? get earlyExit;
/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<AttendanceModel> get copyWith => _$AttendanceModelCopyWithImpl<AttendanceModel>(this as AttendanceModel, _$identity);

  /// Serializes this AttendanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceModel&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.status, status) || other.status == status)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.lateEntry, lateEntry) || other.lateEntry == lateEntry)&&(identical(other.earlyExit, earlyExit) || other.earlyExit == earlyExit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employee,attendanceDate,employeeName,status,shift,lateEntry,earlyExit);

@override
String toString() {
  return 'AttendanceModel(employee: $employee, attendanceDate: $attendanceDate, employeeName: $employeeName, status: $status, shift: $shift, lateEntry: $lateEntry, earlyExit: $earlyExit)';
}


}

/// @nodoc
abstract mixin class $AttendanceModelCopyWith<$Res>  {
  factory $AttendanceModelCopyWith(AttendanceModel value, $Res Function(AttendanceModel) _then) = _$AttendanceModelCopyWithImpl;
@useResult
$Res call({
 String? employee,@JsonKey(name: 'attendance_date') String? attendanceDate,@JsonKey(name: 'employee_name') String? employeeName, String? status, String? shift,@JsonKey(name: 'late_entry') int? lateEntry,@JsonKey(name: 'early_exit') int? earlyExit
});




}
/// @nodoc
class _$AttendanceModelCopyWithImpl<$Res>
    implements $AttendanceModelCopyWith<$Res> {
  _$AttendanceModelCopyWithImpl(this._self, this._then);

  final AttendanceModel _self;
  final $Res Function(AttendanceModel) _then;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employee = freezed,Object? attendanceDate = freezed,Object? employeeName = freezed,Object? status = freezed,Object? shift = freezed,Object? lateEntry = freezed,Object? earlyExit = freezed,}) {
  return _then(_self.copyWith(
employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as String?,attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as String?,employeeName: freezed == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as String?,lateEntry: freezed == lateEntry ? _self.lateEntry : lateEntry // ignore: cast_nullable_to_non_nullable
as int?,earlyExit: freezed == earlyExit ? _self.earlyExit : earlyExit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceModel].
extension AttendanceModelPatterns on AttendanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? employee, @JsonKey(name: 'attendance_date')  String? attendanceDate, @JsonKey(name: 'employee_name')  String? employeeName,  String? status,  String? shift, @JsonKey(name: 'late_entry')  int? lateEntry, @JsonKey(name: 'early_exit')  int? earlyExit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that.employee,_that.attendanceDate,_that.employeeName,_that.status,_that.shift,_that.lateEntry,_that.earlyExit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? employee, @JsonKey(name: 'attendance_date')  String? attendanceDate, @JsonKey(name: 'employee_name')  String? employeeName,  String? status,  String? shift, @JsonKey(name: 'late_entry')  int? lateEntry, @JsonKey(name: 'early_exit')  int? earlyExit)  $default,) {final _that = this;
switch (_that) {
case _AttendanceModel():
return $default(_that.employee,_that.attendanceDate,_that.employeeName,_that.status,_that.shift,_that.lateEntry,_that.earlyExit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? employee, @JsonKey(name: 'attendance_date')  String? attendanceDate, @JsonKey(name: 'employee_name')  String? employeeName,  String? status,  String? shift, @JsonKey(name: 'late_entry')  int? lateEntry, @JsonKey(name: 'early_exit')  int? earlyExit)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that.employee,_that.attendanceDate,_that.employeeName,_that.status,_that.shift,_that.lateEntry,_that.earlyExit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceModel implements AttendanceModel {
  const _AttendanceModel({this.employee, @JsonKey(name: 'attendance_date') this.attendanceDate, @JsonKey(name: 'employee_name') this.employeeName, this.status, this.shift, @JsonKey(name: 'late_entry') this.lateEntry, @JsonKey(name: 'early_exit') this.earlyExit});
  factory _AttendanceModel.fromJson(Map<String, dynamic> json) => _$AttendanceModelFromJson(json);

@override final  String? employee;
@override@JsonKey(name: 'attendance_date') final  String? attendanceDate;
@override@JsonKey(name: 'employee_name') final  String? employeeName;
@override final  String? status;
@override final  String? shift;
@override@JsonKey(name: 'late_entry') final  int? lateEntry;
@override@JsonKey(name: 'early_exit') final  int? earlyExit;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceModelCopyWith<_AttendanceModel> get copyWith => __$AttendanceModelCopyWithImpl<_AttendanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceModel&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.status, status) || other.status == status)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.lateEntry, lateEntry) || other.lateEntry == lateEntry)&&(identical(other.earlyExit, earlyExit) || other.earlyExit == earlyExit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employee,attendanceDate,employeeName,status,shift,lateEntry,earlyExit);

@override
String toString() {
  return 'AttendanceModel(employee: $employee, attendanceDate: $attendanceDate, employeeName: $employeeName, status: $status, shift: $shift, lateEntry: $lateEntry, earlyExit: $earlyExit)';
}


}

/// @nodoc
abstract mixin class _$AttendanceModelCopyWith<$Res> implements $AttendanceModelCopyWith<$Res> {
  factory _$AttendanceModelCopyWith(_AttendanceModel value, $Res Function(_AttendanceModel) _then) = __$AttendanceModelCopyWithImpl;
@override @useResult
$Res call({
 String? employee,@JsonKey(name: 'attendance_date') String? attendanceDate,@JsonKey(name: 'employee_name') String? employeeName, String? status, String? shift,@JsonKey(name: 'late_entry') int? lateEntry,@JsonKey(name: 'early_exit') int? earlyExit
});




}
/// @nodoc
class __$AttendanceModelCopyWithImpl<$Res>
    implements _$AttendanceModelCopyWith<$Res> {
  __$AttendanceModelCopyWithImpl(this._self, this._then);

  final _AttendanceModel _self;
  final $Res Function(_AttendanceModel) _then;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employee = freezed,Object? attendanceDate = freezed,Object? employeeName = freezed,Object? status = freezed,Object? shift = freezed,Object? lateEntry = freezed,Object? earlyExit = freezed,}) {
  return _then(_AttendanceModel(
employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as String?,attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as String?,employeeName: freezed == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as String?,lateEntry: freezed == lateEntry ? _self.lateEntry : lateEntry // ignore: cast_nullable_to_non_nullable
as int?,earlyExit: freezed == earlyExit ? _self.earlyExit : earlyExit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PunchModel {

@JsonKey(name: 'in_time_diff') String? get inTimeDiff;@JsonKey(name: 'in_time_status') String? get inTimeStatus;@JsonKey(name: 'out_time_diff') String? get outTimeDiff;@JsonKey(name: 'out_time_status') String? get outTimeStatus;@JsonKey(name: 'first_punch') String? get firstPunch;@JsonKey(name: 'last_punch') String? get lastPunch;@JsonKey(name: 'shift_start') String? get shiftStart;@JsonKey(name: 'shift_end') String? get shiftEnd;@JsonKey(name: 'date_of_punch') String? get dateOfPunch;
/// Create a copy of PunchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PunchModelCopyWith<PunchModel> get copyWith => _$PunchModelCopyWithImpl<PunchModel>(this as PunchModel, _$identity);

  /// Serializes this PunchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PunchModel&&(identical(other.inTimeDiff, inTimeDiff) || other.inTimeDiff == inTimeDiff)&&(identical(other.inTimeStatus, inTimeStatus) || other.inTimeStatus == inTimeStatus)&&(identical(other.outTimeDiff, outTimeDiff) || other.outTimeDiff == outTimeDiff)&&(identical(other.outTimeStatus, outTimeStatus) || other.outTimeStatus == outTimeStatus)&&(identical(other.firstPunch, firstPunch) || other.firstPunch == firstPunch)&&(identical(other.lastPunch, lastPunch) || other.lastPunch == lastPunch)&&(identical(other.shiftStart, shiftStart) || other.shiftStart == shiftStart)&&(identical(other.shiftEnd, shiftEnd) || other.shiftEnd == shiftEnd)&&(identical(other.dateOfPunch, dateOfPunch) || other.dateOfPunch == dateOfPunch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inTimeDiff,inTimeStatus,outTimeDiff,outTimeStatus,firstPunch,lastPunch,shiftStart,shiftEnd,dateOfPunch);

@override
String toString() {
  return 'PunchModel(inTimeDiff: $inTimeDiff, inTimeStatus: $inTimeStatus, outTimeDiff: $outTimeDiff, outTimeStatus: $outTimeStatus, firstPunch: $firstPunch, lastPunch: $lastPunch, shiftStart: $shiftStart, shiftEnd: $shiftEnd, dateOfPunch: $dateOfPunch)';
}


}

/// @nodoc
abstract mixin class $PunchModelCopyWith<$Res>  {
  factory $PunchModelCopyWith(PunchModel value, $Res Function(PunchModel) _then) = _$PunchModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'in_time_diff') String? inTimeDiff,@JsonKey(name: 'in_time_status') String? inTimeStatus,@JsonKey(name: 'out_time_diff') String? outTimeDiff,@JsonKey(name: 'out_time_status') String? outTimeStatus,@JsonKey(name: 'first_punch') String? firstPunch,@JsonKey(name: 'last_punch') String? lastPunch,@JsonKey(name: 'shift_start') String? shiftStart,@JsonKey(name: 'shift_end') String? shiftEnd,@JsonKey(name: 'date_of_punch') String? dateOfPunch
});




}
/// @nodoc
class _$PunchModelCopyWithImpl<$Res>
    implements $PunchModelCopyWith<$Res> {
  _$PunchModelCopyWithImpl(this._self, this._then);

  final PunchModel _self;
  final $Res Function(PunchModel) _then;

/// Create a copy of PunchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inTimeDiff = freezed,Object? inTimeStatus = freezed,Object? outTimeDiff = freezed,Object? outTimeStatus = freezed,Object? firstPunch = freezed,Object? lastPunch = freezed,Object? shiftStart = freezed,Object? shiftEnd = freezed,Object? dateOfPunch = freezed,}) {
  return _then(_self.copyWith(
inTimeDiff: freezed == inTimeDiff ? _self.inTimeDiff : inTimeDiff // ignore: cast_nullable_to_non_nullable
as String?,inTimeStatus: freezed == inTimeStatus ? _self.inTimeStatus : inTimeStatus // ignore: cast_nullable_to_non_nullable
as String?,outTimeDiff: freezed == outTimeDiff ? _self.outTimeDiff : outTimeDiff // ignore: cast_nullable_to_non_nullable
as String?,outTimeStatus: freezed == outTimeStatus ? _self.outTimeStatus : outTimeStatus // ignore: cast_nullable_to_non_nullable
as String?,firstPunch: freezed == firstPunch ? _self.firstPunch : firstPunch // ignore: cast_nullable_to_non_nullable
as String?,lastPunch: freezed == lastPunch ? _self.lastPunch : lastPunch // ignore: cast_nullable_to_non_nullable
as String?,shiftStart: freezed == shiftStart ? _self.shiftStart : shiftStart // ignore: cast_nullable_to_non_nullable
as String?,shiftEnd: freezed == shiftEnd ? _self.shiftEnd : shiftEnd // ignore: cast_nullable_to_non_nullable
as String?,dateOfPunch: freezed == dateOfPunch ? _self.dateOfPunch : dateOfPunch // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PunchModel].
extension PunchModelPatterns on PunchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PunchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PunchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PunchModel value)  $default,){
final _that = this;
switch (_that) {
case _PunchModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PunchModel value)?  $default,){
final _that = this;
switch (_that) {
case _PunchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'in_time_diff')  String? inTimeDiff, @JsonKey(name: 'in_time_status')  String? inTimeStatus, @JsonKey(name: 'out_time_diff')  String? outTimeDiff, @JsonKey(name: 'out_time_status')  String? outTimeStatus, @JsonKey(name: 'first_punch')  String? firstPunch, @JsonKey(name: 'last_punch')  String? lastPunch, @JsonKey(name: 'shift_start')  String? shiftStart, @JsonKey(name: 'shift_end')  String? shiftEnd, @JsonKey(name: 'date_of_punch')  String? dateOfPunch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PunchModel() when $default != null:
return $default(_that.inTimeDiff,_that.inTimeStatus,_that.outTimeDiff,_that.outTimeStatus,_that.firstPunch,_that.lastPunch,_that.shiftStart,_that.shiftEnd,_that.dateOfPunch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'in_time_diff')  String? inTimeDiff, @JsonKey(name: 'in_time_status')  String? inTimeStatus, @JsonKey(name: 'out_time_diff')  String? outTimeDiff, @JsonKey(name: 'out_time_status')  String? outTimeStatus, @JsonKey(name: 'first_punch')  String? firstPunch, @JsonKey(name: 'last_punch')  String? lastPunch, @JsonKey(name: 'shift_start')  String? shiftStart, @JsonKey(name: 'shift_end')  String? shiftEnd, @JsonKey(name: 'date_of_punch')  String? dateOfPunch)  $default,) {final _that = this;
switch (_that) {
case _PunchModel():
return $default(_that.inTimeDiff,_that.inTimeStatus,_that.outTimeDiff,_that.outTimeStatus,_that.firstPunch,_that.lastPunch,_that.shiftStart,_that.shiftEnd,_that.dateOfPunch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'in_time_diff')  String? inTimeDiff, @JsonKey(name: 'in_time_status')  String? inTimeStatus, @JsonKey(name: 'out_time_diff')  String? outTimeDiff, @JsonKey(name: 'out_time_status')  String? outTimeStatus, @JsonKey(name: 'first_punch')  String? firstPunch, @JsonKey(name: 'last_punch')  String? lastPunch, @JsonKey(name: 'shift_start')  String? shiftStart, @JsonKey(name: 'shift_end')  String? shiftEnd, @JsonKey(name: 'date_of_punch')  String? dateOfPunch)?  $default,) {final _that = this;
switch (_that) {
case _PunchModel() when $default != null:
return $default(_that.inTimeDiff,_that.inTimeStatus,_that.outTimeDiff,_that.outTimeStatus,_that.firstPunch,_that.lastPunch,_that.shiftStart,_that.shiftEnd,_that.dateOfPunch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PunchModel implements PunchModel {
  const _PunchModel({@JsonKey(name: 'in_time_diff') this.inTimeDiff, @JsonKey(name: 'in_time_status') this.inTimeStatus, @JsonKey(name: 'out_time_diff') this.outTimeDiff, @JsonKey(name: 'out_time_status') this.outTimeStatus, @JsonKey(name: 'first_punch') this.firstPunch, @JsonKey(name: 'last_punch') this.lastPunch, @JsonKey(name: 'shift_start') this.shiftStart, @JsonKey(name: 'shift_end') this.shiftEnd, @JsonKey(name: 'date_of_punch') this.dateOfPunch});
  factory _PunchModel.fromJson(Map<String, dynamic> json) => _$PunchModelFromJson(json);

@override@JsonKey(name: 'in_time_diff') final  String? inTimeDiff;
@override@JsonKey(name: 'in_time_status') final  String? inTimeStatus;
@override@JsonKey(name: 'out_time_diff') final  String? outTimeDiff;
@override@JsonKey(name: 'out_time_status') final  String? outTimeStatus;
@override@JsonKey(name: 'first_punch') final  String? firstPunch;
@override@JsonKey(name: 'last_punch') final  String? lastPunch;
@override@JsonKey(name: 'shift_start') final  String? shiftStart;
@override@JsonKey(name: 'shift_end') final  String? shiftEnd;
@override@JsonKey(name: 'date_of_punch') final  String? dateOfPunch;

/// Create a copy of PunchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PunchModelCopyWith<_PunchModel> get copyWith => __$PunchModelCopyWithImpl<_PunchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PunchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PunchModel&&(identical(other.inTimeDiff, inTimeDiff) || other.inTimeDiff == inTimeDiff)&&(identical(other.inTimeStatus, inTimeStatus) || other.inTimeStatus == inTimeStatus)&&(identical(other.outTimeDiff, outTimeDiff) || other.outTimeDiff == outTimeDiff)&&(identical(other.outTimeStatus, outTimeStatus) || other.outTimeStatus == outTimeStatus)&&(identical(other.firstPunch, firstPunch) || other.firstPunch == firstPunch)&&(identical(other.lastPunch, lastPunch) || other.lastPunch == lastPunch)&&(identical(other.shiftStart, shiftStart) || other.shiftStart == shiftStart)&&(identical(other.shiftEnd, shiftEnd) || other.shiftEnd == shiftEnd)&&(identical(other.dateOfPunch, dateOfPunch) || other.dateOfPunch == dateOfPunch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inTimeDiff,inTimeStatus,outTimeDiff,outTimeStatus,firstPunch,lastPunch,shiftStart,shiftEnd,dateOfPunch);

@override
String toString() {
  return 'PunchModel(inTimeDiff: $inTimeDiff, inTimeStatus: $inTimeStatus, outTimeDiff: $outTimeDiff, outTimeStatus: $outTimeStatus, firstPunch: $firstPunch, lastPunch: $lastPunch, shiftStart: $shiftStart, shiftEnd: $shiftEnd, dateOfPunch: $dateOfPunch)';
}


}

/// @nodoc
abstract mixin class _$PunchModelCopyWith<$Res> implements $PunchModelCopyWith<$Res> {
  factory _$PunchModelCopyWith(_PunchModel value, $Res Function(_PunchModel) _then) = __$PunchModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'in_time_diff') String? inTimeDiff,@JsonKey(name: 'in_time_status') String? inTimeStatus,@JsonKey(name: 'out_time_diff') String? outTimeDiff,@JsonKey(name: 'out_time_status') String? outTimeStatus,@JsonKey(name: 'first_punch') String? firstPunch,@JsonKey(name: 'last_punch') String? lastPunch,@JsonKey(name: 'shift_start') String? shiftStart,@JsonKey(name: 'shift_end') String? shiftEnd,@JsonKey(name: 'date_of_punch') String? dateOfPunch
});




}
/// @nodoc
class __$PunchModelCopyWithImpl<$Res>
    implements _$PunchModelCopyWith<$Res> {
  __$PunchModelCopyWithImpl(this._self, this._then);

  final _PunchModel _self;
  final $Res Function(_PunchModel) _then;

/// Create a copy of PunchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inTimeDiff = freezed,Object? inTimeStatus = freezed,Object? outTimeDiff = freezed,Object? outTimeStatus = freezed,Object? firstPunch = freezed,Object? lastPunch = freezed,Object? shiftStart = freezed,Object? shiftEnd = freezed,Object? dateOfPunch = freezed,}) {
  return _then(_PunchModel(
inTimeDiff: freezed == inTimeDiff ? _self.inTimeDiff : inTimeDiff // ignore: cast_nullable_to_non_nullable
as String?,inTimeStatus: freezed == inTimeStatus ? _self.inTimeStatus : inTimeStatus // ignore: cast_nullable_to_non_nullable
as String?,outTimeDiff: freezed == outTimeDiff ? _self.outTimeDiff : outTimeDiff // ignore: cast_nullable_to_non_nullable
as String?,outTimeStatus: freezed == outTimeStatus ? _self.outTimeStatus : outTimeStatus // ignore: cast_nullable_to_non_nullable
as String?,firstPunch: freezed == firstPunch ? _self.firstPunch : firstPunch // ignore: cast_nullable_to_non_nullable
as String?,lastPunch: freezed == lastPunch ? _self.lastPunch : lastPunch // ignore: cast_nullable_to_non_nullable
as String?,shiftStart: freezed == shiftStart ? _self.shiftStart : shiftStart // ignore: cast_nullable_to_non_nullable
as String?,shiftEnd: freezed == shiftEnd ? _self.shiftEnd : shiftEnd // ignore: cast_nullable_to_non_nullable
as String?,dateOfPunch: freezed == dateOfPunch ? _self.dateOfPunch : dateOfPunch // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
