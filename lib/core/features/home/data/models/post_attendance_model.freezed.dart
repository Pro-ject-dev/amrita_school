// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceUpdateResponse {

 MessageData get message;// Optional -> only present when failed
@JsonKey(name: '_server_messages') String? get serverMessages;
/// Create a copy of AttendanceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceUpdateResponseCopyWith<AttendanceUpdateResponse> get copyWith => _$AttendanceUpdateResponseCopyWithImpl<AttendanceUpdateResponse>(this as AttendanceUpdateResponse, _$identity);

  /// Serializes this AttendanceUpdateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceUpdateResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.serverMessages, serverMessages) || other.serverMessages == serverMessages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,serverMessages);

@override
String toString() {
  return 'AttendanceUpdateResponse(message: $message, serverMessages: $serverMessages)';
}


}

/// @nodoc
abstract mixin class $AttendanceUpdateResponseCopyWith<$Res>  {
  factory $AttendanceUpdateResponseCopyWith(AttendanceUpdateResponse value, $Res Function(AttendanceUpdateResponse) _then) = _$AttendanceUpdateResponseCopyWithImpl;
@useResult
$Res call({
 MessageData message,@JsonKey(name: '_server_messages') String? serverMessages
});


$MessageDataCopyWith<$Res> get message;

}
/// @nodoc
class _$AttendanceUpdateResponseCopyWithImpl<$Res>
    implements $AttendanceUpdateResponseCopyWith<$Res> {
  _$AttendanceUpdateResponseCopyWithImpl(this._self, this._then);

  final AttendanceUpdateResponse _self;
  final $Res Function(AttendanceUpdateResponse) _then;

/// Create a copy of AttendanceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? serverMessages = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageData,serverMessages: freezed == serverMessages ? _self.serverMessages : serverMessages // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AttendanceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageDataCopyWith<$Res> get message {
  
  return $MessageDataCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceUpdateResponse].
extension AttendanceUpdateResponsePatterns on AttendanceUpdateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceUpdateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceUpdateResponse value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceUpdateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceUpdateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MessageData message, @JsonKey(name: '_server_messages')  String? serverMessages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceUpdateResponse() when $default != null:
return $default(_that.message,_that.serverMessages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MessageData message, @JsonKey(name: '_server_messages')  String? serverMessages)  $default,) {final _that = this;
switch (_that) {
case _AttendanceUpdateResponse():
return $default(_that.message,_that.serverMessages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MessageData message, @JsonKey(name: '_server_messages')  String? serverMessages)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceUpdateResponse() when $default != null:
return $default(_that.message,_that.serverMessages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceUpdateResponse implements AttendanceUpdateResponse {
  const _AttendanceUpdateResponse({required this.message, @JsonKey(name: '_server_messages') this.serverMessages});
  factory _AttendanceUpdateResponse.fromJson(Map<String, dynamic> json) => _$AttendanceUpdateResponseFromJson(json);

@override final  MessageData message;
// Optional -> only present when failed
@override@JsonKey(name: '_server_messages') final  String? serverMessages;

/// Create a copy of AttendanceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceUpdateResponseCopyWith<_AttendanceUpdateResponse> get copyWith => __$AttendanceUpdateResponseCopyWithImpl<_AttendanceUpdateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceUpdateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceUpdateResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.serverMessages, serverMessages) || other.serverMessages == serverMessages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,serverMessages);

@override
String toString() {
  return 'AttendanceUpdateResponse(message: $message, serverMessages: $serverMessages)';
}


}

/// @nodoc
abstract mixin class _$AttendanceUpdateResponseCopyWith<$Res> implements $AttendanceUpdateResponseCopyWith<$Res> {
  factory _$AttendanceUpdateResponseCopyWith(_AttendanceUpdateResponse value, $Res Function(_AttendanceUpdateResponse) _then) = __$AttendanceUpdateResponseCopyWithImpl;
@override @useResult
$Res call({
 MessageData message,@JsonKey(name: '_server_messages') String? serverMessages
});


@override $MessageDataCopyWith<$Res> get message;

}
/// @nodoc
class __$AttendanceUpdateResponseCopyWithImpl<$Res>
    implements _$AttendanceUpdateResponseCopyWith<$Res> {
  __$AttendanceUpdateResponseCopyWithImpl(this._self, this._then);

  final _AttendanceUpdateResponse _self;
  final $Res Function(_AttendanceUpdateResponse) _then;

/// Create a copy of AttendanceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? serverMessages = freezed,}) {
  return _then(_AttendanceUpdateResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageData,serverMessages: freezed == serverMessages ? _self.serverMessages : serverMessages // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AttendanceUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageDataCopyWith<$Res> get message {
  
  return $MessageDataCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
mixin _$MessageData {

 String get status; String get message; Summary get summary;@JsonKey(name: 'total_created') int get totalCreated;
/// Create a copy of MessageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageDataCopyWith<MessageData> get copyWith => _$MessageDataCopyWithImpl<MessageData>(this as MessageData, _$identity);

  /// Serializes this MessageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageData&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.totalCreated, totalCreated) || other.totalCreated == totalCreated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,summary,totalCreated);

@override
String toString() {
  return 'MessageData(status: $status, message: $message, summary: $summary, totalCreated: $totalCreated)';
}


}

/// @nodoc
abstract mixin class $MessageDataCopyWith<$Res>  {
  factory $MessageDataCopyWith(MessageData value, $Res Function(MessageData) _then) = _$MessageDataCopyWithImpl;
@useResult
$Res call({
 String status, String message, Summary summary,@JsonKey(name: 'total_created') int totalCreated
});


$SummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$MessageDataCopyWithImpl<$Res>
    implements $MessageDataCopyWith<$Res> {
  _$MessageDataCopyWithImpl(this._self, this._then);

  final MessageData _self;
  final $Res Function(MessageData) _then;

/// Create a copy of MessageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? summary = null,Object? totalCreated = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Summary,totalCreated: null == totalCreated ? _self.totalCreated : totalCreated // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of MessageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryCopyWith<$Res> get summary {
  
  return $SummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessageData].
extension MessageDataPatterns on MessageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageData value)  $default,){
final _that = this;
switch (_that) {
case _MessageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageData value)?  $default,){
final _that = this;
switch (_that) {
case _MessageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String message,  Summary summary, @JsonKey(name: 'total_created')  int totalCreated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageData() when $default != null:
return $default(_that.status,_that.message,_that.summary,_that.totalCreated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String message,  Summary summary, @JsonKey(name: 'total_created')  int totalCreated)  $default,) {final _that = this;
switch (_that) {
case _MessageData():
return $default(_that.status,_that.message,_that.summary,_that.totalCreated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String message,  Summary summary, @JsonKey(name: 'total_created')  int totalCreated)?  $default,) {final _that = this;
switch (_that) {
case _MessageData() when $default != null:
return $default(_that.status,_that.message,_that.summary,_that.totalCreated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageData implements MessageData {
  const _MessageData({required this.status, required this.message, required this.summary, @JsonKey(name: 'total_created') required this.totalCreated});
  factory _MessageData.fromJson(Map<String, dynamic> json) => _$MessageDataFromJson(json);

@override final  String status;
@override final  String message;
@override final  Summary summary;
@override@JsonKey(name: 'total_created') final  int totalCreated;

/// Create a copy of MessageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageDataCopyWith<_MessageData> get copyWith => __$MessageDataCopyWithImpl<_MessageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageData&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.totalCreated, totalCreated) || other.totalCreated == totalCreated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,summary,totalCreated);

@override
String toString() {
  return 'MessageData(status: $status, message: $message, summary: $summary, totalCreated: $totalCreated)';
}


}

/// @nodoc
abstract mixin class _$MessageDataCopyWith<$Res> implements $MessageDataCopyWith<$Res> {
  factory _$MessageDataCopyWith(_MessageData value, $Res Function(_MessageData) _then) = __$MessageDataCopyWithImpl;
@override @useResult
$Res call({
 String status, String message, Summary summary,@JsonKey(name: 'total_created') int totalCreated
});


@override $SummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$MessageDataCopyWithImpl<$Res>
    implements _$MessageDataCopyWith<$Res> {
  __$MessageDataCopyWithImpl(this._self, this._then);

  final _MessageData _self;
  final $Res Function(_MessageData) _then;

/// Create a copy of MessageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? summary = null,Object? totalCreated = null,}) {
  return _then(_MessageData(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Summary,totalCreated: null == totalCreated ? _self.totalCreated : totalCreated // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of MessageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryCopyWith<$Res> get summary {
  
  return $SummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$Summary {

 SummaryItem get present; SummaryItem get absent;
/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryCopyWith<Summary> get copyWith => _$SummaryCopyWithImpl<Summary>(this as Summary, _$identity);

  /// Serializes this Summary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Summary&&(identical(other.present, present) || other.present == present)&&(identical(other.absent, absent) || other.absent == absent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,present,absent);

@override
String toString() {
  return 'Summary(present: $present, absent: $absent)';
}


}

/// @nodoc
abstract mixin class $SummaryCopyWith<$Res>  {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) _then) = _$SummaryCopyWithImpl;
@useResult
$Res call({
 SummaryItem present, SummaryItem absent
});


$SummaryItemCopyWith<$Res> get present;$SummaryItemCopyWith<$Res> get absent;

}
/// @nodoc
class _$SummaryCopyWithImpl<$Res>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._self, this._then);

  final Summary _self;
  final $Res Function(Summary) _then;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? present = null,Object? absent = null,}) {
  return _then(_self.copyWith(
present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as SummaryItem,absent: null == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as SummaryItem,
  ));
}
/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get present {
  
  return $SummaryItemCopyWith<$Res>(_self.present, (value) {
    return _then(_self.copyWith(present: value));
  });
}/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get absent {
  
  return $SummaryItemCopyWith<$Res>(_self.absent, (value) {
    return _then(_self.copyWith(absent: value));
  });
}
}


/// Adds pattern-matching-related methods to [Summary].
extension SummaryPatterns on Summary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Summary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Summary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Summary value)  $default,){
final _that = this;
switch (_that) {
case _Summary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Summary value)?  $default,){
final _that = this;
switch (_that) {
case _Summary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SummaryItem present,  SummaryItem absent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Summary() when $default != null:
return $default(_that.present,_that.absent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SummaryItem present,  SummaryItem absent)  $default,) {final _that = this;
switch (_that) {
case _Summary():
return $default(_that.present,_that.absent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SummaryItem present,  SummaryItem absent)?  $default,) {final _that = this;
switch (_that) {
case _Summary() when $default != null:
return $default(_that.present,_that.absent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Summary implements Summary {
  const _Summary({required this.present, required this.absent});
  factory _Summary.fromJson(Map<String, dynamic> json) => _$SummaryFromJson(json);

@override final  SummaryItem present;
@override final  SummaryItem absent;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryCopyWith<_Summary> get copyWith => __$SummaryCopyWithImpl<_Summary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Summary&&(identical(other.present, present) || other.present == present)&&(identical(other.absent, absent) || other.absent == absent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,present,absent);

@override
String toString() {
  return 'Summary(present: $present, absent: $absent)';
}


}

/// @nodoc
abstract mixin class _$SummaryCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$SummaryCopyWith(_Summary value, $Res Function(_Summary) _then) = __$SummaryCopyWithImpl;
@override @useResult
$Res call({
 SummaryItem present, SummaryItem absent
});


@override $SummaryItemCopyWith<$Res> get present;@override $SummaryItemCopyWith<$Res> get absent;

}
/// @nodoc
class __$SummaryCopyWithImpl<$Res>
    implements _$SummaryCopyWith<$Res> {
  __$SummaryCopyWithImpl(this._self, this._then);

  final _Summary _self;
  final $Res Function(_Summary) _then;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? present = null,Object? absent = null,}) {
  return _then(_Summary(
present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as SummaryItem,absent: null == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as SummaryItem,
  ));
}

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get present {
  
  return $SummaryItemCopyWith<$Res>(_self.present, (value) {
    return _then(_self.copyWith(present: value));
  });
}/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<$Res> get absent {
  
  return $SummaryItemCopyWith<$Res>(_self.absent, (value) {
    return _then(_self.copyWith(absent: value));
  });
}
}


/// @nodoc
mixin _$SummaryItem {

 int get created;
/// Create a copy of SummaryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryItemCopyWith<SummaryItem> get copyWith => _$SummaryItemCopyWithImpl<SummaryItem>(this as SummaryItem, _$identity);

  /// Serializes this SummaryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryItem&&(identical(other.created, created) || other.created == created));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,created);

@override
String toString() {
  return 'SummaryItem(created: $created)';
}


}

/// @nodoc
abstract mixin class $SummaryItemCopyWith<$Res>  {
  factory $SummaryItemCopyWith(SummaryItem value, $Res Function(SummaryItem) _then) = _$SummaryItemCopyWithImpl;
@useResult
$Res call({
 int created
});




}
/// @nodoc
class _$SummaryItemCopyWithImpl<$Res>
    implements $SummaryItemCopyWith<$Res> {
  _$SummaryItemCopyWithImpl(this._self, this._then);

  final SummaryItem _self;
  final $Res Function(SummaryItem) _then;

/// Create a copy of SummaryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? created = null,}) {
  return _then(_self.copyWith(
created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SummaryItem].
extension SummaryItemPatterns on SummaryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryItem value)  $default,){
final _that = this;
switch (_that) {
case _SummaryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryItem value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int created)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryItem() when $default != null:
return $default(_that.created);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int created)  $default,) {final _that = this;
switch (_that) {
case _SummaryItem():
return $default(_that.created);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int created)?  $default,) {final _that = this;
switch (_that) {
case _SummaryItem() when $default != null:
return $default(_that.created);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SummaryItem implements SummaryItem {
  const _SummaryItem({required this.created});
  factory _SummaryItem.fromJson(Map<String, dynamic> json) => _$SummaryItemFromJson(json);

@override final  int created;

/// Create a copy of SummaryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryItemCopyWith<_SummaryItem> get copyWith => __$SummaryItemCopyWithImpl<_SummaryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryItem&&(identical(other.created, created) || other.created == created));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,created);

@override
String toString() {
  return 'SummaryItem(created: $created)';
}


}

/// @nodoc
abstract mixin class _$SummaryItemCopyWith<$Res> implements $SummaryItemCopyWith<$Res> {
  factory _$SummaryItemCopyWith(_SummaryItem value, $Res Function(_SummaryItem) _then) = __$SummaryItemCopyWithImpl;
@override @useResult
$Res call({
 int created
});




}
/// @nodoc
class __$SummaryItemCopyWithImpl<$Res>
    implements _$SummaryItemCopyWith<$Res> {
  __$SummaryItemCopyWithImpl(this._self, this._then);

  final _SummaryItem _self;
  final $Res Function(_SummaryItem) _then;

/// Create a copy of SummaryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? created = null,}) {
  return _then(_SummaryItem(
created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
