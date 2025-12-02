// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationModel {

 Message get message;
/// Create a copy of ValidationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationModelCopyWith<ValidationModel> get copyWith => _$ValidationModelCopyWithImpl<ValidationModel>(this as ValidationModel, _$identity);

  /// Serializes this ValidationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ValidationModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $ValidationModelCopyWith<$Res>  {
  factory $ValidationModelCopyWith(ValidationModel value, $Res Function(ValidationModel) _then) = _$ValidationModelCopyWithImpl;
@useResult
$Res call({
 Message message
});


$MessageCopyWith<$Res> get message;

}
/// @nodoc
class _$ValidationModelCopyWithImpl<$Res>
    implements $ValidationModelCopyWith<$Res> {
  _$ValidationModelCopyWithImpl(this._self, this._then);

  final ValidationModel _self;
  final $Res Function(ValidationModel) _then;

/// Create a copy of ValidationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as Message,
  ));
}
/// Create a copy of ValidationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCopyWith<$Res> get message {
  
  return $MessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [ValidationModel].
extension ValidationModelPatterns on ValidationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValidationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValidationModel value)  $default,){
final _that = this;
switch (_that) {
case _ValidationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValidationModel value)?  $default,){
final _that = this;
switch (_that) {
case _ValidationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Message message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidationModel() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Message message)  $default,) {final _that = this;
switch (_that) {
case _ValidationModel():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Message message)?  $default,) {final _that = this;
switch (_that) {
case _ValidationModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValidationModel implements ValidationModel {
  const _ValidationModel({required this.message});
  factory _ValidationModel.fromJson(Map<String, dynamic> json) => _$ValidationModelFromJson(json);

@override final  Message message;

/// Create a copy of ValidationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationModelCopyWith<_ValidationModel> get copyWith => __$ValidationModelCopyWithImpl<_ValidationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ValidationModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ValidationModelCopyWith<$Res> implements $ValidationModelCopyWith<$Res> {
  factory _$ValidationModelCopyWith(_ValidationModel value, $Res Function(_ValidationModel) _then) = __$ValidationModelCopyWithImpl;
@override @useResult
$Res call({
 Message message
});


@override $MessageCopyWith<$Res> get message;

}
/// @nodoc
class __$ValidationModelCopyWithImpl<$Res>
    implements _$ValidationModelCopyWith<$Res> {
  __$ValidationModelCopyWithImpl(this._self, this._then);

  final _ValidationModel _self;
  final $Res Function(_ValidationModel) _then;

/// Create a copy of ValidationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ValidationModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as Message,
  ));
}

/// Create a copy of ValidationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCopyWith<$Res> get message {
  
  return $MessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
mixin _$Message {

@JsonKey(name: 'is_instructor') bool get isInstructor;@JsonKey(name: 'class_incharge') String? get classIncharge;@JsonKey(name: 'class_subject') List<ClassSubject>? get classSubject;
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCopyWith<Message> get copyWith => _$MessageCopyWithImpl<Message>(this as Message, _$identity);

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message&&(identical(other.isInstructor, isInstructor) || other.isInstructor == isInstructor)&&(identical(other.classIncharge, classIncharge) || other.classIncharge == classIncharge)&&const DeepCollectionEquality().equals(other.classSubject, classSubject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isInstructor,classIncharge,const DeepCollectionEquality().hash(classSubject));

@override
String toString() {
  return 'Message(isInstructor: $isInstructor, classIncharge: $classIncharge, classSubject: $classSubject)';
}


}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res>  {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) = _$MessageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_instructor') bool isInstructor,@JsonKey(name: 'class_incharge') String? classIncharge,@JsonKey(name: 'class_subject') List<ClassSubject>? classSubject
});




}
/// @nodoc
class _$MessageCopyWithImpl<$Res>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isInstructor = null,Object? classIncharge = freezed,Object? classSubject = freezed,}) {
  return _then(_self.copyWith(
isInstructor: null == isInstructor ? _self.isInstructor : isInstructor // ignore: cast_nullable_to_non_nullable
as bool,classIncharge: freezed == classIncharge ? _self.classIncharge : classIncharge // ignore: cast_nullable_to_non_nullable
as String?,classSubject: freezed == classSubject ? _self.classSubject : classSubject // ignore: cast_nullable_to_non_nullable
as List<ClassSubject>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Message].
extension MessagePatterns on Message {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Message value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Message() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Message value)  $default,){
final _that = this;
switch (_that) {
case _Message():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Message value)?  $default,){
final _that = this;
switch (_that) {
case _Message() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_instructor')  bool isInstructor, @JsonKey(name: 'class_incharge')  String? classIncharge, @JsonKey(name: 'class_subject')  List<ClassSubject>? classSubject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.isInstructor,_that.classIncharge,_that.classSubject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_instructor')  bool isInstructor, @JsonKey(name: 'class_incharge')  String? classIncharge, @JsonKey(name: 'class_subject')  List<ClassSubject>? classSubject)  $default,) {final _that = this;
switch (_that) {
case _Message():
return $default(_that.isInstructor,_that.classIncharge,_that.classSubject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_instructor')  bool isInstructor, @JsonKey(name: 'class_incharge')  String? classIncharge, @JsonKey(name: 'class_subject')  List<ClassSubject>? classSubject)?  $default,) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.isInstructor,_that.classIncharge,_that.classSubject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Message implements Message {
  const _Message({@JsonKey(name: 'is_instructor') required this.isInstructor, @JsonKey(name: 'class_incharge') this.classIncharge, @JsonKey(name: 'class_subject') final  List<ClassSubject>? classSubject}): _classSubject = classSubject;
  factory _Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

@override@JsonKey(name: 'is_instructor') final  bool isInstructor;
@override@JsonKey(name: 'class_incharge') final  String? classIncharge;
 final  List<ClassSubject>? _classSubject;
@override@JsonKey(name: 'class_subject') List<ClassSubject>? get classSubject {
  final value = _classSubject;
  if (value == null) return null;
  if (_classSubject is EqualUnmodifiableListView) return _classSubject;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Message&&(identical(other.isInstructor, isInstructor) || other.isInstructor == isInstructor)&&(identical(other.classIncharge, classIncharge) || other.classIncharge == classIncharge)&&const DeepCollectionEquality().equals(other._classSubject, _classSubject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isInstructor,classIncharge,const DeepCollectionEquality().hash(_classSubject));

@override
String toString() {
  return 'Message(isInstructor: $isInstructor, classIncharge: $classIncharge, classSubject: $classSubject)';
}


}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) = __$MessageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_instructor') bool isInstructor,@JsonKey(name: 'class_incharge') String? classIncharge,@JsonKey(name: 'class_subject') List<ClassSubject>? classSubject
});




}
/// @nodoc
class __$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isInstructor = null,Object? classIncharge = freezed,Object? classSubject = freezed,}) {
  return _then(_Message(
isInstructor: null == isInstructor ? _self.isInstructor : isInstructor // ignore: cast_nullable_to_non_nullable
as bool,classIncharge: freezed == classIncharge ? _self.classIncharge : classIncharge // ignore: cast_nullable_to_non_nullable
as String?,classSubject: freezed == classSubject ? _self._classSubject : classSubject // ignore: cast_nullable_to_non_nullable
as List<ClassSubject>?,
  ));
}


}


/// @nodoc
mixin _$ClassSubject {

@JsonKey(name: 'student_class') String? get studentClass;@JsonKey(name: 'subject_name') String? get subjectName;
/// Create a copy of ClassSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassSubjectCopyWith<ClassSubject> get copyWith => _$ClassSubjectCopyWithImpl<ClassSubject>(this as ClassSubject, _$identity);

  /// Serializes this ClassSubject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassSubject&&(identical(other.studentClass, studentClass) || other.studentClass == studentClass)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentClass,subjectName);

@override
String toString() {
  return 'ClassSubject(studentClass: $studentClass, subjectName: $subjectName)';
}


}

/// @nodoc
abstract mixin class $ClassSubjectCopyWith<$Res>  {
  factory $ClassSubjectCopyWith(ClassSubject value, $Res Function(ClassSubject) _then) = _$ClassSubjectCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_class') String? studentClass,@JsonKey(name: 'subject_name') String? subjectName
});




}
/// @nodoc
class _$ClassSubjectCopyWithImpl<$Res>
    implements $ClassSubjectCopyWith<$Res> {
  _$ClassSubjectCopyWithImpl(this._self, this._then);

  final ClassSubject _self;
  final $Res Function(ClassSubject) _then;

/// Create a copy of ClassSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentClass = freezed,Object? subjectName = freezed,}) {
  return _then(_self.copyWith(
studentClass: freezed == studentClass ? _self.studentClass : studentClass // ignore: cast_nullable_to_non_nullable
as String?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassSubject].
extension ClassSubjectPatterns on ClassSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassSubject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassSubject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassSubject value)  $default,){
final _that = this;
switch (_that) {
case _ClassSubject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassSubject value)?  $default,){
final _that = this;
switch (_that) {
case _ClassSubject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_class')  String? studentClass, @JsonKey(name: 'subject_name')  String? subjectName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassSubject() when $default != null:
return $default(_that.studentClass,_that.subjectName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_class')  String? studentClass, @JsonKey(name: 'subject_name')  String? subjectName)  $default,) {final _that = this;
switch (_that) {
case _ClassSubject():
return $default(_that.studentClass,_that.subjectName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_class')  String? studentClass, @JsonKey(name: 'subject_name')  String? subjectName)?  $default,) {final _that = this;
switch (_that) {
case _ClassSubject() when $default != null:
return $default(_that.studentClass,_that.subjectName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassSubject implements ClassSubject {
  const _ClassSubject({@JsonKey(name: 'student_class') this.studentClass, @JsonKey(name: 'subject_name') this.subjectName});
  factory _ClassSubject.fromJson(Map<String, dynamic> json) => _$ClassSubjectFromJson(json);

@override@JsonKey(name: 'student_class') final  String? studentClass;
@override@JsonKey(name: 'subject_name') final  String? subjectName;

/// Create a copy of ClassSubject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassSubjectCopyWith<_ClassSubject> get copyWith => __$ClassSubjectCopyWithImpl<_ClassSubject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassSubjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassSubject&&(identical(other.studentClass, studentClass) || other.studentClass == studentClass)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentClass,subjectName);

@override
String toString() {
  return 'ClassSubject(studentClass: $studentClass, subjectName: $subjectName)';
}


}

/// @nodoc
abstract mixin class _$ClassSubjectCopyWith<$Res> implements $ClassSubjectCopyWith<$Res> {
  factory _$ClassSubjectCopyWith(_ClassSubject value, $Res Function(_ClassSubject) _then) = __$ClassSubjectCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_class') String? studentClass,@JsonKey(name: 'subject_name') String? subjectName
});




}
/// @nodoc
class __$ClassSubjectCopyWithImpl<$Res>
    implements _$ClassSubjectCopyWith<$Res> {
  __$ClassSubjectCopyWithImpl(this._self, this._then);

  final _ClassSubject _self;
  final $Res Function(_ClassSubject) _then;

/// Create a copy of ClassSubject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentClass = freezed,Object? subjectName = freezed,}) {
  return _then(_ClassSubject(
studentClass: freezed == studentClass ? _self.studentClass : studentClass // ignore: cast_nullable_to_non_nullable
as String?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
