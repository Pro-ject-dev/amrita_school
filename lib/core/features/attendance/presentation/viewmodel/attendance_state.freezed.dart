// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceState {

 bool get isLoading; String get data; UiResponseModel get updateResponse; bool get attendanceUpdatedSuccess; bool get attendanceUpdatedFaliure; List<StudentAttendance>? get attendanceList; List<StudentAttendance>? get filteredAttendanceList; List<StudentAttendance>? get originalAttendanceList; bool get isIndividual; bool get isInvidualChecked; bool get isChecked; String get date; String get greetingText; String? get error; bool get isCheckedSelectAll; Set<String> get selectedIds;
/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStateCopyWith<AttendanceState> get copyWith => _$AttendanceStateCopyWithImpl<AttendanceState>(this as AttendanceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&(identical(other.updateResponse, updateResponse) || other.updateResponse == updateResponse)&&(identical(other.attendanceUpdatedSuccess, attendanceUpdatedSuccess) || other.attendanceUpdatedSuccess == attendanceUpdatedSuccess)&&(identical(other.attendanceUpdatedFaliure, attendanceUpdatedFaliure) || other.attendanceUpdatedFaliure == attendanceUpdatedFaliure)&&const DeepCollectionEquality().equals(other.attendanceList, attendanceList)&&const DeepCollectionEquality().equals(other.filteredAttendanceList, filteredAttendanceList)&&const DeepCollectionEquality().equals(other.originalAttendanceList, originalAttendanceList)&&(identical(other.isIndividual, isIndividual) || other.isIndividual == isIndividual)&&(identical(other.isInvidualChecked, isInvidualChecked) || other.isInvidualChecked == isInvidualChecked)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.date, date) || other.date == date)&&(identical(other.greetingText, greetingText) || other.greetingText == greetingText)&&(identical(other.error, error) || other.error == error)&&(identical(other.isCheckedSelectAll, isCheckedSelectAll) || other.isCheckedSelectAll == isCheckedSelectAll)&&const DeepCollectionEquality().equals(other.selectedIds, selectedIds));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,updateResponse,attendanceUpdatedSuccess,attendanceUpdatedFaliure,const DeepCollectionEquality().hash(attendanceList),const DeepCollectionEquality().hash(filteredAttendanceList),const DeepCollectionEquality().hash(originalAttendanceList),isIndividual,isInvidualChecked,isChecked,date,greetingText,error,isCheckedSelectAll,const DeepCollectionEquality().hash(selectedIds));

@override
String toString() {
  return 'AttendanceState(isLoading: $isLoading, data: $data, updateResponse: $updateResponse, attendanceUpdatedSuccess: $attendanceUpdatedSuccess, attendanceUpdatedFaliure: $attendanceUpdatedFaliure, attendanceList: $attendanceList, filteredAttendanceList: $filteredAttendanceList, originalAttendanceList: $originalAttendanceList, isIndividual: $isIndividual, isInvidualChecked: $isInvidualChecked, isChecked: $isChecked, date: $date, greetingText: $greetingText, error: $error, isCheckedSelectAll: $isCheckedSelectAll, selectedIds: $selectedIds)';
}


}

/// @nodoc
abstract mixin class $AttendanceStateCopyWith<$Res>  {
  factory $AttendanceStateCopyWith(AttendanceState value, $Res Function(AttendanceState) _then) = _$AttendanceStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String data, UiResponseModel updateResponse, bool attendanceUpdatedSuccess, bool attendanceUpdatedFaliure, List<StudentAttendance>? attendanceList, List<StudentAttendance>? filteredAttendanceList, List<StudentAttendance>? originalAttendanceList, bool isIndividual, bool isInvidualChecked, bool isChecked, String date, String greetingText, String? error, bool isCheckedSelectAll, Set<String> selectedIds
});




}
/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._self, this._then);

  final AttendanceState _self;
  final $Res Function(AttendanceState) _then;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = null,Object? updateResponse = null,Object? attendanceUpdatedSuccess = null,Object? attendanceUpdatedFaliure = null,Object? attendanceList = freezed,Object? filteredAttendanceList = freezed,Object? originalAttendanceList = freezed,Object? isIndividual = null,Object? isInvidualChecked = null,Object? isChecked = null,Object? date = null,Object? greetingText = null,Object? error = freezed,Object? isCheckedSelectAll = null,Object? selectedIds = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,updateResponse: null == updateResponse ? _self.updateResponse : updateResponse // ignore: cast_nullable_to_non_nullable
as UiResponseModel,attendanceUpdatedSuccess: null == attendanceUpdatedSuccess ? _self.attendanceUpdatedSuccess : attendanceUpdatedSuccess // ignore: cast_nullable_to_non_nullable
as bool,attendanceUpdatedFaliure: null == attendanceUpdatedFaliure ? _self.attendanceUpdatedFaliure : attendanceUpdatedFaliure // ignore: cast_nullable_to_non_nullable
as bool,attendanceList: freezed == attendanceList ? _self.attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,filteredAttendanceList: freezed == filteredAttendanceList ? _self.filteredAttendanceList : filteredAttendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,originalAttendanceList: freezed == originalAttendanceList ? _self.originalAttendanceList : originalAttendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,isIndividual: null == isIndividual ? _self.isIndividual : isIndividual // ignore: cast_nullable_to_non_nullable
as bool,isInvidualChecked: null == isInvidualChecked ? _self.isInvidualChecked : isInvidualChecked // ignore: cast_nullable_to_non_nullable
as bool,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,greetingText: null == greetingText ? _self.greetingText : greetingText // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isCheckedSelectAll: null == isCheckedSelectAll ? _self.isCheckedSelectAll : isCheckedSelectAll // ignore: cast_nullable_to_non_nullable
as bool,selectedIds: null == selectedIds ? _self.selectedIds : selectedIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceState].
extension AttendanceStatePatterns on AttendanceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceState value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceState value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String data,  UiResponseModel updateResponse,  bool attendanceUpdatedSuccess,  bool attendanceUpdatedFaliure,  List<StudentAttendance>? attendanceList,  List<StudentAttendance>? filteredAttendanceList,  List<StudentAttendance>? originalAttendanceList,  bool isIndividual,  bool isInvidualChecked,  bool isChecked,  String date,  String greetingText,  String? error,  bool isCheckedSelectAll,  Set<String> selectedIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
return $default(_that.isLoading,_that.data,_that.updateResponse,_that.attendanceUpdatedSuccess,_that.attendanceUpdatedFaliure,_that.attendanceList,_that.filteredAttendanceList,_that.originalAttendanceList,_that.isIndividual,_that.isInvidualChecked,_that.isChecked,_that.date,_that.greetingText,_that.error,_that.isCheckedSelectAll,_that.selectedIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String data,  UiResponseModel updateResponse,  bool attendanceUpdatedSuccess,  bool attendanceUpdatedFaliure,  List<StudentAttendance>? attendanceList,  List<StudentAttendance>? filteredAttendanceList,  List<StudentAttendance>? originalAttendanceList,  bool isIndividual,  bool isInvidualChecked,  bool isChecked,  String date,  String greetingText,  String? error,  bool isCheckedSelectAll,  Set<String> selectedIds)  $default,) {final _that = this;
switch (_that) {
case _AttendanceState():
return $default(_that.isLoading,_that.data,_that.updateResponse,_that.attendanceUpdatedSuccess,_that.attendanceUpdatedFaliure,_that.attendanceList,_that.filteredAttendanceList,_that.originalAttendanceList,_that.isIndividual,_that.isInvidualChecked,_that.isChecked,_that.date,_that.greetingText,_that.error,_that.isCheckedSelectAll,_that.selectedIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String data,  UiResponseModel updateResponse,  bool attendanceUpdatedSuccess,  bool attendanceUpdatedFaliure,  List<StudentAttendance>? attendanceList,  List<StudentAttendance>? filteredAttendanceList,  List<StudentAttendance>? originalAttendanceList,  bool isIndividual,  bool isInvidualChecked,  bool isChecked,  String date,  String greetingText,  String? error,  bool isCheckedSelectAll,  Set<String> selectedIds)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceState() when $default != null:
return $default(_that.isLoading,_that.data,_that.updateResponse,_that.attendanceUpdatedSuccess,_that.attendanceUpdatedFaliure,_that.attendanceList,_that.filteredAttendanceList,_that.originalAttendanceList,_that.isIndividual,_that.isInvidualChecked,_that.isChecked,_that.date,_that.greetingText,_that.error,_that.isCheckedSelectAll,_that.selectedIds);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceState implements AttendanceState {
  const _AttendanceState({required this.isLoading, required this.data, required this.updateResponse, required this.attendanceUpdatedSuccess, required this.attendanceUpdatedFaliure, final  List<StudentAttendance>? attendanceList, final  List<StudentAttendance>? filteredAttendanceList, final  List<StudentAttendance>? originalAttendanceList, required this.isIndividual, required this.isInvidualChecked, required this.isChecked, required this.date, required this.greetingText, this.error, required this.isCheckedSelectAll, final  Set<String> selectedIds = const {}}): _attendanceList = attendanceList,_filteredAttendanceList = filteredAttendanceList,_originalAttendanceList = originalAttendanceList,_selectedIds = selectedIds;
  

@override final  bool isLoading;
@override final  String data;
@override final  UiResponseModel updateResponse;
@override final  bool attendanceUpdatedSuccess;
@override final  bool attendanceUpdatedFaliure;
 final  List<StudentAttendance>? _attendanceList;
@override List<StudentAttendance>? get attendanceList {
  final value = _attendanceList;
  if (value == null) return null;
  if (_attendanceList is EqualUnmodifiableListView) return _attendanceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<StudentAttendance>? _filteredAttendanceList;
@override List<StudentAttendance>? get filteredAttendanceList {
  final value = _filteredAttendanceList;
  if (value == null) return null;
  if (_filteredAttendanceList is EqualUnmodifiableListView) return _filteredAttendanceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<StudentAttendance>? _originalAttendanceList;
@override List<StudentAttendance>? get originalAttendanceList {
  final value = _originalAttendanceList;
  if (value == null) return null;
  if (_originalAttendanceList is EqualUnmodifiableListView) return _originalAttendanceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool isIndividual;
@override final  bool isInvidualChecked;
@override final  bool isChecked;
@override final  String date;
@override final  String greetingText;
@override final  String? error;
@override final  bool isCheckedSelectAll;
 final  Set<String> _selectedIds;
@override@JsonKey() Set<String> get selectedIds {
  if (_selectedIds is EqualUnmodifiableSetView) return _selectedIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedIds);
}


/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStateCopyWith<_AttendanceState> get copyWith => __$AttendanceStateCopyWithImpl<_AttendanceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&(identical(other.updateResponse, updateResponse) || other.updateResponse == updateResponse)&&(identical(other.attendanceUpdatedSuccess, attendanceUpdatedSuccess) || other.attendanceUpdatedSuccess == attendanceUpdatedSuccess)&&(identical(other.attendanceUpdatedFaliure, attendanceUpdatedFaliure) || other.attendanceUpdatedFaliure == attendanceUpdatedFaliure)&&const DeepCollectionEquality().equals(other._attendanceList, _attendanceList)&&const DeepCollectionEquality().equals(other._filteredAttendanceList, _filteredAttendanceList)&&const DeepCollectionEquality().equals(other._originalAttendanceList, _originalAttendanceList)&&(identical(other.isIndividual, isIndividual) || other.isIndividual == isIndividual)&&(identical(other.isInvidualChecked, isInvidualChecked) || other.isInvidualChecked == isInvidualChecked)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.date, date) || other.date == date)&&(identical(other.greetingText, greetingText) || other.greetingText == greetingText)&&(identical(other.error, error) || other.error == error)&&(identical(other.isCheckedSelectAll, isCheckedSelectAll) || other.isCheckedSelectAll == isCheckedSelectAll)&&const DeepCollectionEquality().equals(other._selectedIds, _selectedIds));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,updateResponse,attendanceUpdatedSuccess,attendanceUpdatedFaliure,const DeepCollectionEquality().hash(_attendanceList),const DeepCollectionEquality().hash(_filteredAttendanceList),const DeepCollectionEquality().hash(_originalAttendanceList),isIndividual,isInvidualChecked,isChecked,date,greetingText,error,isCheckedSelectAll,const DeepCollectionEquality().hash(_selectedIds));

@override
String toString() {
  return 'AttendanceState(isLoading: $isLoading, data: $data, updateResponse: $updateResponse, attendanceUpdatedSuccess: $attendanceUpdatedSuccess, attendanceUpdatedFaliure: $attendanceUpdatedFaliure, attendanceList: $attendanceList, filteredAttendanceList: $filteredAttendanceList, originalAttendanceList: $originalAttendanceList, isIndividual: $isIndividual, isInvidualChecked: $isInvidualChecked, isChecked: $isChecked, date: $date, greetingText: $greetingText, error: $error, isCheckedSelectAll: $isCheckedSelectAll, selectedIds: $selectedIds)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStateCopyWith<$Res> implements $AttendanceStateCopyWith<$Res> {
  factory _$AttendanceStateCopyWith(_AttendanceState value, $Res Function(_AttendanceState) _then) = __$AttendanceStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String data, UiResponseModel updateResponse, bool attendanceUpdatedSuccess, bool attendanceUpdatedFaliure, List<StudentAttendance>? attendanceList, List<StudentAttendance>? filteredAttendanceList, List<StudentAttendance>? originalAttendanceList, bool isIndividual, bool isInvidualChecked, bool isChecked, String date, String greetingText, String? error, bool isCheckedSelectAll, Set<String> selectedIds
});




}
/// @nodoc
class __$AttendanceStateCopyWithImpl<$Res>
    implements _$AttendanceStateCopyWith<$Res> {
  __$AttendanceStateCopyWithImpl(this._self, this._then);

  final _AttendanceState _self;
  final $Res Function(_AttendanceState) _then;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = null,Object? updateResponse = null,Object? attendanceUpdatedSuccess = null,Object? attendanceUpdatedFaliure = null,Object? attendanceList = freezed,Object? filteredAttendanceList = freezed,Object? originalAttendanceList = freezed,Object? isIndividual = null,Object? isInvidualChecked = null,Object? isChecked = null,Object? date = null,Object? greetingText = null,Object? error = freezed,Object? isCheckedSelectAll = null,Object? selectedIds = null,}) {
  return _then(_AttendanceState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,updateResponse: null == updateResponse ? _self.updateResponse : updateResponse // ignore: cast_nullable_to_non_nullable
as UiResponseModel,attendanceUpdatedSuccess: null == attendanceUpdatedSuccess ? _self.attendanceUpdatedSuccess : attendanceUpdatedSuccess // ignore: cast_nullable_to_non_nullable
as bool,attendanceUpdatedFaliure: null == attendanceUpdatedFaliure ? _self.attendanceUpdatedFaliure : attendanceUpdatedFaliure // ignore: cast_nullable_to_non_nullable
as bool,attendanceList: freezed == attendanceList ? _self._attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,filteredAttendanceList: freezed == filteredAttendanceList ? _self._filteredAttendanceList : filteredAttendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,originalAttendanceList: freezed == originalAttendanceList ? _self._originalAttendanceList : originalAttendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,isIndividual: null == isIndividual ? _self.isIndividual : isIndividual // ignore: cast_nullable_to_non_nullable
as bool,isInvidualChecked: null == isInvidualChecked ? _self.isInvidualChecked : isInvidualChecked // ignore: cast_nullable_to_non_nullable
as bool,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,greetingText: null == greetingText ? _self.greetingText : greetingText // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isCheckedSelectAll: null == isCheckedSelectAll ? _self.isCheckedSelectAll : isCheckedSelectAll // ignore: cast_nullable_to_non_nullable
as bool,selectedIds: null == selectedIds ? _self._selectedIds : selectedIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

// dart format on
