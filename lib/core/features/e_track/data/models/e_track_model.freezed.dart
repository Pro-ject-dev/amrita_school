// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_track_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ETrackModel {

@JsonKey(name: 'attendance_list') List<AttendanceItemModel>? get attendanceList;@JsonKey(name: 'leave_list') List<LeaveItemModel>? get leaveList;@JsonKey(name: 'holiday_list') List<HolidayItemModel>? get holidayList;
/// Create a copy of ETrackModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ETrackModelCopyWith<ETrackModel> get copyWith => _$ETrackModelCopyWithImpl<ETrackModel>(this as ETrackModel, _$identity);

  /// Serializes this ETrackModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ETrackModel&&const DeepCollectionEquality().equals(other.attendanceList, attendanceList)&&const DeepCollectionEquality().equals(other.leaveList, leaveList)&&const DeepCollectionEquality().equals(other.holidayList, holidayList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(attendanceList),const DeepCollectionEquality().hash(leaveList),const DeepCollectionEquality().hash(holidayList));

@override
String toString() {
  return 'ETrackModel(attendanceList: $attendanceList, leaveList: $leaveList, holidayList: $holidayList)';
}


}

/// @nodoc
abstract mixin class $ETrackModelCopyWith<$Res>  {
  factory $ETrackModelCopyWith(ETrackModel value, $Res Function(ETrackModel) _then) = _$ETrackModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_list') List<AttendanceItemModel>? attendanceList,@JsonKey(name: 'leave_list') List<LeaveItemModel>? leaveList,@JsonKey(name: 'holiday_list') List<HolidayItemModel>? holidayList
});




}
/// @nodoc
class _$ETrackModelCopyWithImpl<$Res>
    implements $ETrackModelCopyWith<$Res> {
  _$ETrackModelCopyWithImpl(this._self, this._then);

  final ETrackModel _self;
  final $Res Function(ETrackModel) _then;

/// Create a copy of ETrackModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceList = freezed,Object? leaveList = freezed,Object? holidayList = freezed,}) {
  return _then(_self.copyWith(
attendanceList: freezed == attendanceList ? _self.attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<AttendanceItemModel>?,leaveList: freezed == leaveList ? _self.leaveList : leaveList // ignore: cast_nullable_to_non_nullable
as List<LeaveItemModel>?,holidayList: freezed == holidayList ? _self.holidayList : holidayList // ignore: cast_nullable_to_non_nullable
as List<HolidayItemModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ETrackModel].
extension ETrackModelPatterns on ETrackModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ETrackModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ETrackModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ETrackModel value)  $default,){
final _that = this;
switch (_that) {
case _ETrackModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ETrackModel value)?  $default,){
final _that = this;
switch (_that) {
case _ETrackModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_list')  List<AttendanceItemModel>? attendanceList, @JsonKey(name: 'leave_list')  List<LeaveItemModel>? leaveList, @JsonKey(name: 'holiday_list')  List<HolidayItemModel>? holidayList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ETrackModel() when $default != null:
return $default(_that.attendanceList,_that.leaveList,_that.holidayList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_list')  List<AttendanceItemModel>? attendanceList, @JsonKey(name: 'leave_list')  List<LeaveItemModel>? leaveList, @JsonKey(name: 'holiday_list')  List<HolidayItemModel>? holidayList)  $default,) {final _that = this;
switch (_that) {
case _ETrackModel():
return $default(_that.attendanceList,_that.leaveList,_that.holidayList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_list')  List<AttendanceItemModel>? attendanceList, @JsonKey(name: 'leave_list')  List<LeaveItemModel>? leaveList, @JsonKey(name: 'holiday_list')  List<HolidayItemModel>? holidayList)?  $default,) {final _that = this;
switch (_that) {
case _ETrackModel() when $default != null:
return $default(_that.attendanceList,_that.leaveList,_that.holidayList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ETrackModel extends ETrackModel {
  const _ETrackModel({@JsonKey(name: 'attendance_list') final  List<AttendanceItemModel>? attendanceList, @JsonKey(name: 'leave_list') final  List<LeaveItemModel>? leaveList, @JsonKey(name: 'holiday_list') final  List<HolidayItemModel>? holidayList}): _attendanceList = attendanceList,_leaveList = leaveList,_holidayList = holidayList,super._();
  factory _ETrackModel.fromJson(Map<String, dynamic> json) => _$ETrackModelFromJson(json);

 final  List<AttendanceItemModel>? _attendanceList;
@override@JsonKey(name: 'attendance_list') List<AttendanceItemModel>? get attendanceList {
  final value = _attendanceList;
  if (value == null) return null;
  if (_attendanceList is EqualUnmodifiableListView) return _attendanceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<LeaveItemModel>? _leaveList;
@override@JsonKey(name: 'leave_list') List<LeaveItemModel>? get leaveList {
  final value = _leaveList;
  if (value == null) return null;
  if (_leaveList is EqualUnmodifiableListView) return _leaveList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<HolidayItemModel>? _holidayList;
@override@JsonKey(name: 'holiday_list') List<HolidayItemModel>? get holidayList {
  final value = _holidayList;
  if (value == null) return null;
  if (_holidayList is EqualUnmodifiableListView) return _holidayList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ETrackModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ETrackModelCopyWith<_ETrackModel> get copyWith => __$ETrackModelCopyWithImpl<_ETrackModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ETrackModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ETrackModel&&const DeepCollectionEquality().equals(other._attendanceList, _attendanceList)&&const DeepCollectionEquality().equals(other._leaveList, _leaveList)&&const DeepCollectionEquality().equals(other._holidayList, _holidayList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_attendanceList),const DeepCollectionEquality().hash(_leaveList),const DeepCollectionEquality().hash(_holidayList));

@override
String toString() {
  return 'ETrackModel(attendanceList: $attendanceList, leaveList: $leaveList, holidayList: $holidayList)';
}


}

/// @nodoc
abstract mixin class _$ETrackModelCopyWith<$Res> implements $ETrackModelCopyWith<$Res> {
  factory _$ETrackModelCopyWith(_ETrackModel value, $Res Function(_ETrackModel) _then) = __$ETrackModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_list') List<AttendanceItemModel>? attendanceList,@JsonKey(name: 'leave_list') List<LeaveItemModel>? leaveList,@JsonKey(name: 'holiday_list') List<HolidayItemModel>? holidayList
});




}
/// @nodoc
class __$ETrackModelCopyWithImpl<$Res>
    implements _$ETrackModelCopyWith<$Res> {
  __$ETrackModelCopyWithImpl(this._self, this._then);

  final _ETrackModel _self;
  final $Res Function(_ETrackModel) _then;

/// Create a copy of ETrackModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceList = freezed,Object? leaveList = freezed,Object? holidayList = freezed,}) {
  return _then(_ETrackModel(
attendanceList: freezed == attendanceList ? _self._attendanceList : attendanceList // ignore: cast_nullable_to_non_nullable
as List<AttendanceItemModel>?,leaveList: freezed == leaveList ? _self._leaveList : leaveList // ignore: cast_nullable_to_non_nullable
as List<LeaveItemModel>?,holidayList: freezed == holidayList ? _self._holidayList : holidayList // ignore: cast_nullable_to_non_nullable
as List<HolidayItemModel>?,
  ));
}


}


/// @nodoc
mixin _$AttendanceItemModel {

@JsonKey(name: 'attendance_date') String? get attendanceDate; String? get status;
/// Create a copy of AttendanceItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceItemModelCopyWith<AttendanceItemModel> get copyWith => _$AttendanceItemModelCopyWithImpl<AttendanceItemModel>(this as AttendanceItemModel, _$identity);

  /// Serializes this AttendanceItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceItemModel&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attendanceDate,status);

@override
String toString() {
  return 'AttendanceItemModel(attendanceDate: $attendanceDate, status: $status)';
}


}

/// @nodoc
abstract mixin class $AttendanceItemModelCopyWith<$Res>  {
  factory $AttendanceItemModelCopyWith(AttendanceItemModel value, $Res Function(AttendanceItemModel) _then) = _$AttendanceItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_date') String? attendanceDate, String? status
});




}
/// @nodoc
class _$AttendanceItemModelCopyWithImpl<$Res>
    implements $AttendanceItemModelCopyWith<$Res> {
  _$AttendanceItemModelCopyWithImpl(this._self, this._then);

  final AttendanceItemModel _self;
  final $Res Function(AttendanceItemModel) _then;

/// Create a copy of AttendanceItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceDate = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceItemModel].
extension AttendanceItemModelPatterns on AttendanceItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceItemModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_date')  String? attendanceDate,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceItemModel() when $default != null:
return $default(_that.attendanceDate,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_date')  String? attendanceDate,  String? status)  $default,) {final _that = this;
switch (_that) {
case _AttendanceItemModel():
return $default(_that.attendanceDate,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_date')  String? attendanceDate,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceItemModel() when $default != null:
return $default(_that.attendanceDate,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceItemModel extends AttendanceItemModel {
  const _AttendanceItemModel({@JsonKey(name: 'attendance_date') this.attendanceDate, this.status}): super._();
  factory _AttendanceItemModel.fromJson(Map<String, dynamic> json) => _$AttendanceItemModelFromJson(json);

@override@JsonKey(name: 'attendance_date') final  String? attendanceDate;
@override final  String? status;

/// Create a copy of AttendanceItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceItemModelCopyWith<_AttendanceItemModel> get copyWith => __$AttendanceItemModelCopyWithImpl<_AttendanceItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceItemModel&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attendanceDate,status);

@override
String toString() {
  return 'AttendanceItemModel(attendanceDate: $attendanceDate, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AttendanceItemModelCopyWith<$Res> implements $AttendanceItemModelCopyWith<$Res> {
  factory _$AttendanceItemModelCopyWith(_AttendanceItemModel value, $Res Function(_AttendanceItemModel) _then) = __$AttendanceItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_date') String? attendanceDate, String? status
});




}
/// @nodoc
class __$AttendanceItemModelCopyWithImpl<$Res>
    implements _$AttendanceItemModelCopyWith<$Res> {
  __$AttendanceItemModelCopyWithImpl(this._self, this._then);

  final _AttendanceItemModel _self;
  final $Res Function(_AttendanceItemModel) _then;

/// Create a copy of AttendanceItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceDate = freezed,Object? status = freezed,}) {
  return _then(_AttendanceItemModel(
attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LeaveItemModel {

 String? get date;@JsonKey(name: 'leave_type') String? get leaveType;@JsonKey(name: 'day_type') String? get dayType;
/// Create a copy of LeaveItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveItemModelCopyWith<LeaveItemModel> get copyWith => _$LeaveItemModelCopyWithImpl<LeaveItemModel>(this as LeaveItemModel, _$identity);

  /// Serializes this LeaveItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveItemModel&&(identical(other.date, date) || other.date == date)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.dayType, dayType) || other.dayType == dayType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,leaveType,dayType);

@override
String toString() {
  return 'LeaveItemModel(date: $date, leaveType: $leaveType, dayType: $dayType)';
}


}

/// @nodoc
abstract mixin class $LeaveItemModelCopyWith<$Res>  {
  factory $LeaveItemModelCopyWith(LeaveItemModel value, $Res Function(LeaveItemModel) _then) = _$LeaveItemModelCopyWithImpl;
@useResult
$Res call({
 String? date,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'day_type') String? dayType
});




}
/// @nodoc
class _$LeaveItemModelCopyWithImpl<$Res>
    implements $LeaveItemModelCopyWith<$Res> {
  _$LeaveItemModelCopyWithImpl(this._self, this._then);

  final LeaveItemModel _self;
  final $Res Function(LeaveItemModel) _then;

/// Create a copy of LeaveItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? leaveType = freezed,Object? dayType = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,dayType: freezed == dayType ? _self.dayType : dayType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveItemModel].
extension LeaveItemModelPatterns on LeaveItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveItemModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaveItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? date, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'day_type')  String? dayType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveItemModel() when $default != null:
return $default(_that.date,_that.leaveType,_that.dayType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? date, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'day_type')  String? dayType)  $default,) {final _that = this;
switch (_that) {
case _LeaveItemModel():
return $default(_that.date,_that.leaveType,_that.dayType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? date, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'day_type')  String? dayType)?  $default,) {final _that = this;
switch (_that) {
case _LeaveItemModel() when $default != null:
return $default(_that.date,_that.leaveType,_that.dayType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveItemModel extends LeaveItemModel {
  const _LeaveItemModel({this.date, @JsonKey(name: 'leave_type') this.leaveType, @JsonKey(name: 'day_type') this.dayType}): super._();
  factory _LeaveItemModel.fromJson(Map<String, dynamic> json) => _$LeaveItemModelFromJson(json);

@override final  String? date;
@override@JsonKey(name: 'leave_type') final  String? leaveType;
@override@JsonKey(name: 'day_type') final  String? dayType;

/// Create a copy of LeaveItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveItemModelCopyWith<_LeaveItemModel> get copyWith => __$LeaveItemModelCopyWithImpl<_LeaveItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveItemModel&&(identical(other.date, date) || other.date == date)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.dayType, dayType) || other.dayType == dayType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,leaveType,dayType);

@override
String toString() {
  return 'LeaveItemModel(date: $date, leaveType: $leaveType, dayType: $dayType)';
}


}

/// @nodoc
abstract mixin class _$LeaveItemModelCopyWith<$Res> implements $LeaveItemModelCopyWith<$Res> {
  factory _$LeaveItemModelCopyWith(_LeaveItemModel value, $Res Function(_LeaveItemModel) _then) = __$LeaveItemModelCopyWithImpl;
@override @useResult
$Res call({
 String? date,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'day_type') String? dayType
});




}
/// @nodoc
class __$LeaveItemModelCopyWithImpl<$Res>
    implements _$LeaveItemModelCopyWith<$Res> {
  __$LeaveItemModelCopyWithImpl(this._self, this._then);

  final _LeaveItemModel _self;
  final $Res Function(_LeaveItemModel) _then;

/// Create a copy of LeaveItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? leaveType = freezed,Object? dayType = freezed,}) {
  return _then(_LeaveItemModel(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,dayType: freezed == dayType ? _self.dayType : dayType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HolidayItemModel {

@JsonKey(name: 'holiday_date') String? get holidayDate; String? get description;
/// Create a copy of HolidayItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HolidayItemModelCopyWith<HolidayItemModel> get copyWith => _$HolidayItemModelCopyWithImpl<HolidayItemModel>(this as HolidayItemModel, _$identity);

  /// Serializes this HolidayItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HolidayItemModel&&(identical(other.holidayDate, holidayDate) || other.holidayDate == holidayDate)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,holidayDate,description);

@override
String toString() {
  return 'HolidayItemModel(holidayDate: $holidayDate, description: $description)';
}


}

/// @nodoc
abstract mixin class $HolidayItemModelCopyWith<$Res>  {
  factory $HolidayItemModelCopyWith(HolidayItemModel value, $Res Function(HolidayItemModel) _then) = _$HolidayItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'holiday_date') String? holidayDate, String? description
});




}
/// @nodoc
class _$HolidayItemModelCopyWithImpl<$Res>
    implements $HolidayItemModelCopyWith<$Res> {
  _$HolidayItemModelCopyWithImpl(this._self, this._then);

  final HolidayItemModel _self;
  final $Res Function(HolidayItemModel) _then;

/// Create a copy of HolidayItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? holidayDate = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
holidayDate: freezed == holidayDate ? _self.holidayDate : holidayDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HolidayItemModel].
extension HolidayItemModelPatterns on HolidayItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HolidayItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HolidayItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HolidayItemModel value)  $default,){
final _that = this;
switch (_that) {
case _HolidayItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HolidayItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _HolidayItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'holiday_date')  String? holidayDate,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HolidayItemModel() when $default != null:
return $default(_that.holidayDate,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'holiday_date')  String? holidayDate,  String? description)  $default,) {final _that = this;
switch (_that) {
case _HolidayItemModel():
return $default(_that.holidayDate,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'holiday_date')  String? holidayDate,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _HolidayItemModel() when $default != null:
return $default(_that.holidayDate,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HolidayItemModel extends HolidayItemModel {
  const _HolidayItemModel({@JsonKey(name: 'holiday_date') this.holidayDate, this.description}): super._();
  factory _HolidayItemModel.fromJson(Map<String, dynamic> json) => _$HolidayItemModelFromJson(json);

@override@JsonKey(name: 'holiday_date') final  String? holidayDate;
@override final  String? description;

/// Create a copy of HolidayItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HolidayItemModelCopyWith<_HolidayItemModel> get copyWith => __$HolidayItemModelCopyWithImpl<_HolidayItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HolidayItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HolidayItemModel&&(identical(other.holidayDate, holidayDate) || other.holidayDate == holidayDate)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,holidayDate,description);

@override
String toString() {
  return 'HolidayItemModel(holidayDate: $holidayDate, description: $description)';
}


}

/// @nodoc
abstract mixin class _$HolidayItemModelCopyWith<$Res> implements $HolidayItemModelCopyWith<$Res> {
  factory _$HolidayItemModelCopyWith(_HolidayItemModel value, $Res Function(_HolidayItemModel) _then) = __$HolidayItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'holiday_date') String? holidayDate, String? description
});




}
/// @nodoc
class __$HolidayItemModelCopyWithImpl<$Res>
    implements _$HolidayItemModelCopyWith<$Res> {
  __$HolidayItemModelCopyWithImpl(this._self, this._then);

  final _HolidayItemModel _self;
  final $Res Function(_HolidayItemModel) _then;

/// Create a copy of HolidayItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? holidayDate = freezed,Object? description = freezed,}) {
  return _then(_HolidayItemModel(
holidayDate: freezed == holidayDate ? _self.holidayDate : holidayDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
