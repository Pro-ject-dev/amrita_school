// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 bool get isLoading; String get data; List<StudentAttendance>? get attendanceList; List<StudentAttendance>? get filteredAttendanceList; bool get isChecked; String get date; String? get error; bool get isCheckedSelectAll; Set<String> get selectedIds;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.attendanceList, attendanceList)&&const DeepCollectionEquality().equals(other.filteredAttendanceList, filteredAttendanceList)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.date, date) || other.date == date)&&(identical(other.error, error) || other.error == error)&&(identical(other.isCheckedSelectAll, isCheckedSelectAll) || other.isCheckedSelectAll == isCheckedSelectAll)&&const DeepCollectionEquality().equals(other.selectedIds, selectedIds));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,const DeepCollectionEquality().hash(attendanceList),const DeepCollectionEquality().hash(filteredAttendanceList),isChecked,date,error,isCheckedSelectAll,const DeepCollectionEquality().hash(selectedIds));

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, data: $data, attendanceList: $attendanceList, filteredAttendanceList: $filteredAttendanceList, isChecked: $isChecked, date: $date, error: $error, isCheckedSelectAll: $isCheckedSelectAll, selectedIds: $selectedIds)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String data, List<StudentAttendance>? attendanceList, List<StudentAttendance>? filteredAttendanceList, bool isChecked, String date, String? error, bool isCheckedSelectAll, Set<String> selectedIds
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = null,Object? attendanceList = freezed,Object? filteredAttendanceList = freezed,Object? isChecked = null,Object? date = null,Object? error = freezed,Object? isCheckedSelectAll = null,Object? selectedIds = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,attendanceList: freezed == attendanceList ? _self.attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,filteredAttendanceList: freezed == filteredAttendanceList ? _self.filteredAttendanceList : filteredAttendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isCheckedSelectAll: null == isCheckedSelectAll ? _self.isCheckedSelectAll : isCheckedSelectAll // ignore: cast_nullable_to_non_nullable
as bool,selectedIds: null == selectedIds ? _self.selectedIds : selectedIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String data,  List<StudentAttendance>? attendanceList,  List<StudentAttendance>? filteredAttendanceList,  bool isChecked,  String date,  String? error,  bool isCheckedSelectAll,  Set<String> selectedIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoading,_that.data,_that.attendanceList,_that.filteredAttendanceList,_that.isChecked,_that.date,_that.error,_that.isCheckedSelectAll,_that.selectedIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String data,  List<StudentAttendance>? attendanceList,  List<StudentAttendance>? filteredAttendanceList,  bool isChecked,  String date,  String? error,  bool isCheckedSelectAll,  Set<String> selectedIds)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isLoading,_that.data,_that.attendanceList,_that.filteredAttendanceList,_that.isChecked,_that.date,_that.error,_that.isCheckedSelectAll,_that.selectedIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String data,  List<StudentAttendance>? attendanceList,  List<StudentAttendance>? filteredAttendanceList,  bool isChecked,  String date,  String? error,  bool isCheckedSelectAll,  Set<String> selectedIds)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoading,_that.data,_that.attendanceList,_that.filteredAttendanceList,_that.isChecked,_that.date,_that.error,_that.isCheckedSelectAll,_that.selectedIds);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.isLoading, required this.data, final  List<StudentAttendance>? attendanceList, final  List<StudentAttendance>? filteredAttendanceList, required this.isChecked, required this.date, this.error, required this.isCheckedSelectAll, final  Set<String> selectedIds = const {}}): _attendanceList = attendanceList,_filteredAttendanceList = filteredAttendanceList,_selectedIds = selectedIds;
  

@override final  bool isLoading;
@override final  String data;
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

@override final  bool isChecked;
@override final  String date;
@override final  String? error;
@override final  bool isCheckedSelectAll;
 final  Set<String> _selectedIds;
@override@JsonKey() Set<String> get selectedIds {
  if (_selectedIds is EqualUnmodifiableSetView) return _selectedIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedIds);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._attendanceList, _attendanceList)&&const DeepCollectionEquality().equals(other._filteredAttendanceList, _filteredAttendanceList)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.date, date) || other.date == date)&&(identical(other.error, error) || other.error == error)&&(identical(other.isCheckedSelectAll, isCheckedSelectAll) || other.isCheckedSelectAll == isCheckedSelectAll)&&const DeepCollectionEquality().equals(other._selectedIds, _selectedIds));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,data,const DeepCollectionEquality().hash(_attendanceList),const DeepCollectionEquality().hash(_filteredAttendanceList),isChecked,date,error,isCheckedSelectAll,const DeepCollectionEquality().hash(_selectedIds));

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, data: $data, attendanceList: $attendanceList, filteredAttendanceList: $filteredAttendanceList, isChecked: $isChecked, date: $date, error: $error, isCheckedSelectAll: $isCheckedSelectAll, selectedIds: $selectedIds)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String data, List<StudentAttendance>? attendanceList, List<StudentAttendance>? filteredAttendanceList, bool isChecked, String date, String? error, bool isCheckedSelectAll, Set<String> selectedIds
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = null,Object? attendanceList = freezed,Object? filteredAttendanceList = freezed,Object? isChecked = null,Object? date = null,Object? error = freezed,Object? isCheckedSelectAll = null,Object? selectedIds = null,}) {
  return _then(_HomeState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,attendanceList: freezed == attendanceList ? _self._attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,filteredAttendanceList: freezed == filteredAttendanceList ? _self._filteredAttendanceList : filteredAttendanceList // ignore: cast_nullable_to_non_nullable
as List<StudentAttendance>?,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isCheckedSelectAll: null == isCheckedSelectAll ? _self.isCheckedSelectAll : isCheckedSelectAll // ignore: cast_nullable_to_non_nullable
as bool,selectedIds: null == selectedIds ? _self._selectedIds : selectedIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

// dart format on
