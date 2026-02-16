// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Appointment {

 String get id; String get patientId; String get patientName; String get doctorId; String get doctorName; DateTime get scheduledTime; int get durationMinutes; AppointmentType get type; AppointmentStatus get status; String? get reason; String? get location; String? get notes; bool? get isFollowUp; DateTime? get createdAt;
/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentCopyWith<Appointment> get copyWith => _$AppointmentCopyWithImpl<Appointment>(this as Appointment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Appointment&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.scheduledTime, scheduledTime) || other.scheduledTime == scheduledTime)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.location, location) || other.location == location)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isFollowUp, isFollowUp) || other.isFollowUp == isFollowUp)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,doctorId,doctorName,scheduledTime,durationMinutes,type,status,reason,location,notes,isFollowUp,createdAt);

@override
String toString() {
  return 'Appointment(id: $id, patientId: $patientId, patientName: $patientName, doctorId: $doctorId, doctorName: $doctorName, scheduledTime: $scheduledTime, durationMinutes: $durationMinutes, type: $type, status: $status, reason: $reason, location: $location, notes: $notes, isFollowUp: $isFollowUp, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AppointmentCopyWith<$Res>  {
  factory $AppointmentCopyWith(Appointment value, $Res Function(Appointment) _then) = _$AppointmentCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, String doctorId, String doctorName, DateTime scheduledTime, int durationMinutes, AppointmentType type, AppointmentStatus status, String? reason, String? location, String? notes, bool? isFollowUp, DateTime? createdAt
});




}
/// @nodoc
class _$AppointmentCopyWithImpl<$Res>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._self, this._then);

  final Appointment _self;
  final $Res Function(Appointment) _then;

/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? doctorId = null,Object? doctorName = null,Object? scheduledTime = null,Object? durationMinutes = null,Object? type = null,Object? status = null,Object? reason = freezed,Object? location = freezed,Object? notes = freezed,Object? isFollowUp = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,scheduledTime: null == scheduledTime ? _self.scheduledTime : scheduledTime // ignore: cast_nullable_to_non_nullable
as DateTime,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AppointmentType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppointmentStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isFollowUp: freezed == isFollowUp ? _self.isFollowUp : isFollowUp // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Appointment].
extension AppointmentPatterns on Appointment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Appointment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Appointment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Appointment value)  $default,){
final _that = this;
switch (_that) {
case _Appointment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Appointment value)?  $default,){
final _that = this;
switch (_that) {
case _Appointment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String doctorId,  String doctorName,  DateTime scheduledTime,  int durationMinutes,  AppointmentType type,  AppointmentStatus status,  String? reason,  String? location,  String? notes,  bool? isFollowUp,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Appointment() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.doctorId,_that.doctorName,_that.scheduledTime,_that.durationMinutes,_that.type,_that.status,_that.reason,_that.location,_that.notes,_that.isFollowUp,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String doctorId,  String doctorName,  DateTime scheduledTime,  int durationMinutes,  AppointmentType type,  AppointmentStatus status,  String? reason,  String? location,  String? notes,  bool? isFollowUp,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Appointment():
return $default(_that.id,_that.patientId,_that.patientName,_that.doctorId,_that.doctorName,_that.scheduledTime,_that.durationMinutes,_that.type,_that.status,_that.reason,_that.location,_that.notes,_that.isFollowUp,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  String doctorId,  String doctorName,  DateTime scheduledTime,  int durationMinutes,  AppointmentType type,  AppointmentStatus status,  String? reason,  String? location,  String? notes,  bool? isFollowUp,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Appointment() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.doctorId,_that.doctorName,_that.scheduledTime,_that.durationMinutes,_that.type,_that.status,_that.reason,_that.location,_that.notes,_that.isFollowUp,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _Appointment extends Appointment {
  const _Appointment({required this.id, required this.patientId, required this.patientName, required this.doctorId, required this.doctorName, required this.scheduledTime, required this.durationMinutes, required this.type, required this.status, this.reason, this.location, this.notes, this.isFollowUp, this.createdAt}): super._();
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  String doctorId;
@override final  String doctorName;
@override final  DateTime scheduledTime;
@override final  int durationMinutes;
@override final  AppointmentType type;
@override final  AppointmentStatus status;
@override final  String? reason;
@override final  String? location;
@override final  String? notes;
@override final  bool? isFollowUp;
@override final  DateTime? createdAt;

/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentCopyWith<_Appointment> get copyWith => __$AppointmentCopyWithImpl<_Appointment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Appointment&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.scheduledTime, scheduledTime) || other.scheduledTime == scheduledTime)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.location, location) || other.location == location)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isFollowUp, isFollowUp) || other.isFollowUp == isFollowUp)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,doctorId,doctorName,scheduledTime,durationMinutes,type,status,reason,location,notes,isFollowUp,createdAt);

@override
String toString() {
  return 'Appointment(id: $id, patientId: $patientId, patientName: $patientName, doctorId: $doctorId, doctorName: $doctorName, scheduledTime: $scheduledTime, durationMinutes: $durationMinutes, type: $type, status: $status, reason: $reason, location: $location, notes: $notes, isFollowUp: $isFollowUp, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AppointmentCopyWith<$Res> implements $AppointmentCopyWith<$Res> {
  factory _$AppointmentCopyWith(_Appointment value, $Res Function(_Appointment) _then) = __$AppointmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, String doctorId, String doctorName, DateTime scheduledTime, int durationMinutes, AppointmentType type, AppointmentStatus status, String? reason, String? location, String? notes, bool? isFollowUp, DateTime? createdAt
});




}
/// @nodoc
class __$AppointmentCopyWithImpl<$Res>
    implements _$AppointmentCopyWith<$Res> {
  __$AppointmentCopyWithImpl(this._self, this._then);

  final _Appointment _self;
  final $Res Function(_Appointment) _then;

/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? doctorId = null,Object? doctorName = null,Object? scheduledTime = null,Object? durationMinutes = null,Object? type = null,Object? status = null,Object? reason = freezed,Object? location = freezed,Object? notes = freezed,Object? isFollowUp = freezed,Object? createdAt = freezed,}) {
  return _then(_Appointment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,scheduledTime: null == scheduledTime ? _self.scheduledTime : scheduledTime // ignore: cast_nullable_to_non_nullable
as DateTime,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AppointmentType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppointmentStatus,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isFollowUp: freezed == isFollowUp ? _self.isFollowUp : isFollowUp // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$TimeSlot {

 DateTime get startTime; int get durationMinutes; bool get isAvailable; String? get bookedBy;
/// Create a copy of TimeSlot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeSlotCopyWith<TimeSlot> get copyWith => _$TimeSlotCopyWithImpl<TimeSlot>(this as TimeSlot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeSlot&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.bookedBy, bookedBy) || other.bookedBy == bookedBy));
}


@override
int get hashCode => Object.hash(runtimeType,startTime,durationMinutes,isAvailable,bookedBy);

@override
String toString() {
  return 'TimeSlot(startTime: $startTime, durationMinutes: $durationMinutes, isAvailable: $isAvailable, bookedBy: $bookedBy)';
}


}

/// @nodoc
abstract mixin class $TimeSlotCopyWith<$Res>  {
  factory $TimeSlotCopyWith(TimeSlot value, $Res Function(TimeSlot) _then) = _$TimeSlotCopyWithImpl;
@useResult
$Res call({
 DateTime startTime, int durationMinutes, bool isAvailable, String? bookedBy
});




}
/// @nodoc
class _$TimeSlotCopyWithImpl<$Res>
    implements $TimeSlotCopyWith<$Res> {
  _$TimeSlotCopyWithImpl(this._self, this._then);

  final TimeSlot _self;
  final $Res Function(TimeSlot) _then;

/// Create a copy of TimeSlot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startTime = null,Object? durationMinutes = null,Object? isAvailable = null,Object? bookedBy = freezed,}) {
  return _then(_self.copyWith(
startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,bookedBy: freezed == bookedBy ? _self.bookedBy : bookedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeSlot].
extension TimeSlotPatterns on TimeSlot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeSlot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeSlot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeSlot value)  $default,){
final _that = this;
switch (_that) {
case _TimeSlot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeSlot value)?  $default,){
final _that = this;
switch (_that) {
case _TimeSlot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime startTime,  int durationMinutes,  bool isAvailable,  String? bookedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeSlot() when $default != null:
return $default(_that.startTime,_that.durationMinutes,_that.isAvailable,_that.bookedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime startTime,  int durationMinutes,  bool isAvailable,  String? bookedBy)  $default,) {final _that = this;
switch (_that) {
case _TimeSlot():
return $default(_that.startTime,_that.durationMinutes,_that.isAvailable,_that.bookedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime startTime,  int durationMinutes,  bool isAvailable,  String? bookedBy)?  $default,) {final _that = this;
switch (_that) {
case _TimeSlot() when $default != null:
return $default(_that.startTime,_that.durationMinutes,_that.isAvailable,_that.bookedBy);case _:
  return null;

}
}

}

/// @nodoc


class _TimeSlot extends TimeSlot {
  const _TimeSlot({required this.startTime, required this.durationMinutes, required this.isAvailable, this.bookedBy}): super._();
  

@override final  DateTime startTime;
@override final  int durationMinutes;
@override final  bool isAvailable;
@override final  String? bookedBy;

/// Create a copy of TimeSlot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeSlotCopyWith<_TimeSlot> get copyWith => __$TimeSlotCopyWithImpl<_TimeSlot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeSlot&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.bookedBy, bookedBy) || other.bookedBy == bookedBy));
}


@override
int get hashCode => Object.hash(runtimeType,startTime,durationMinutes,isAvailable,bookedBy);

@override
String toString() {
  return 'TimeSlot(startTime: $startTime, durationMinutes: $durationMinutes, isAvailable: $isAvailable, bookedBy: $bookedBy)';
}


}

/// @nodoc
abstract mixin class _$TimeSlotCopyWith<$Res> implements $TimeSlotCopyWith<$Res> {
  factory _$TimeSlotCopyWith(_TimeSlot value, $Res Function(_TimeSlot) _then) = __$TimeSlotCopyWithImpl;
@override @useResult
$Res call({
 DateTime startTime, int durationMinutes, bool isAvailable, String? bookedBy
});




}
/// @nodoc
class __$TimeSlotCopyWithImpl<$Res>
    implements _$TimeSlotCopyWith<$Res> {
  __$TimeSlotCopyWithImpl(this._self, this._then);

  final _TimeSlot _self;
  final $Res Function(_TimeSlot) _then;

/// Create a copy of TimeSlot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startTime = null,Object? durationMinutes = null,Object? isAvailable = null,Object? bookedBy = freezed,}) {
  return _then(_TimeSlot(
startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,bookedBy: freezed == bookedBy ? _self.bookedBy : bookedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$DoctorSchedule {

 String get doctorId; DateTime get date; List<TimeSlot> get slots; List<Appointment> get appointments;
/// Create a copy of DoctorSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorScheduleCopyWith<DoctorSchedule> get copyWith => _$DoctorScheduleCopyWithImpl<DoctorSchedule>(this as DoctorSchedule, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorSchedule&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.slots, slots)&&const DeepCollectionEquality().equals(other.appointments, appointments));
}


@override
int get hashCode => Object.hash(runtimeType,doctorId,date,const DeepCollectionEquality().hash(slots),const DeepCollectionEquality().hash(appointments));

@override
String toString() {
  return 'DoctorSchedule(doctorId: $doctorId, date: $date, slots: $slots, appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class $DoctorScheduleCopyWith<$Res>  {
  factory $DoctorScheduleCopyWith(DoctorSchedule value, $Res Function(DoctorSchedule) _then) = _$DoctorScheduleCopyWithImpl;
@useResult
$Res call({
 String doctorId, DateTime date, List<TimeSlot> slots, List<Appointment> appointments
});




}
/// @nodoc
class _$DoctorScheduleCopyWithImpl<$Res>
    implements $DoctorScheduleCopyWith<$Res> {
  _$DoctorScheduleCopyWithImpl(this._self, this._then);

  final DoctorSchedule _self;
  final $Res Function(DoctorSchedule) _then;

/// Create a copy of DoctorSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctorId = null,Object? date = null,Object? slots = null,Object? appointments = null,}) {
  return _then(_self.copyWith(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,slots: null == slots ? _self.slots : slots // ignore: cast_nullable_to_non_nullable
as List<TimeSlot>,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<Appointment>,
  ));
}

}


/// Adds pattern-matching-related methods to [DoctorSchedule].
extension DoctorSchedulePatterns on DoctorSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoctorSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoctorSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoctorSchedule value)  $default,){
final _that = this;
switch (_that) {
case _DoctorSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoctorSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _DoctorSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String doctorId,  DateTime date,  List<TimeSlot> slots,  List<Appointment> appointments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorSchedule() when $default != null:
return $default(_that.doctorId,_that.date,_that.slots,_that.appointments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String doctorId,  DateTime date,  List<TimeSlot> slots,  List<Appointment> appointments)  $default,) {final _that = this;
switch (_that) {
case _DoctorSchedule():
return $default(_that.doctorId,_that.date,_that.slots,_that.appointments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String doctorId,  DateTime date,  List<TimeSlot> slots,  List<Appointment> appointments)?  $default,) {final _that = this;
switch (_that) {
case _DoctorSchedule() when $default != null:
return $default(_that.doctorId,_that.date,_that.slots,_that.appointments);case _:
  return null;

}
}

}

/// @nodoc


class _DoctorSchedule extends DoctorSchedule {
  const _DoctorSchedule({required this.doctorId, required this.date, required final  List<TimeSlot> slots, required final  List<Appointment> appointments}): _slots = slots,_appointments = appointments,super._();
  

@override final  String doctorId;
@override final  DateTime date;
 final  List<TimeSlot> _slots;
@override List<TimeSlot> get slots {
  if (_slots is EqualUnmodifiableListView) return _slots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_slots);
}

 final  List<Appointment> _appointments;
@override List<Appointment> get appointments {
  if (_appointments is EqualUnmodifiableListView) return _appointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appointments);
}


/// Create a copy of DoctorSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorScheduleCopyWith<_DoctorSchedule> get copyWith => __$DoctorScheduleCopyWithImpl<_DoctorSchedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorSchedule&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._slots, _slots)&&const DeepCollectionEquality().equals(other._appointments, _appointments));
}


@override
int get hashCode => Object.hash(runtimeType,doctorId,date,const DeepCollectionEquality().hash(_slots),const DeepCollectionEquality().hash(_appointments));

@override
String toString() {
  return 'DoctorSchedule(doctorId: $doctorId, date: $date, slots: $slots, appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class _$DoctorScheduleCopyWith<$Res> implements $DoctorScheduleCopyWith<$Res> {
  factory _$DoctorScheduleCopyWith(_DoctorSchedule value, $Res Function(_DoctorSchedule) _then) = __$DoctorScheduleCopyWithImpl;
@override @useResult
$Res call({
 String doctorId, DateTime date, List<TimeSlot> slots, List<Appointment> appointments
});




}
/// @nodoc
class __$DoctorScheduleCopyWithImpl<$Res>
    implements _$DoctorScheduleCopyWith<$Res> {
  __$DoctorScheduleCopyWithImpl(this._self, this._then);

  final _DoctorSchedule _self;
  final $Res Function(_DoctorSchedule) _then;

/// Create a copy of DoctorSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctorId = null,Object? date = null,Object? slots = null,Object? appointments = null,}) {
  return _then(_DoctorSchedule(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,slots: null == slots ? _self._slots : slots // ignore: cast_nullable_to_non_nullable
as List<TimeSlot>,appointments: null == appointments ? _self._appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<Appointment>,
  ));
}


}

// dart format on
