// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Consultation {

 String get id; String get patientId; String get patientName; String? get patientAvatarUrl; String get doctorId; String get doctorName; String? get doctorAvatarUrl; ConsultationType get type; ConsultationStatus get status; DateTime get scheduledAt; DateTime? get startedAt; DateTime? get endedAt; String? get roomId; String? get roomToken; String? get reason; String? get notes; List<String>? get participants;// Additional participants (family, nurses)
 bool? get recordingEnabled; bool? get consentGiven; List<String>? get attachments; ConsultationMetrics? get metrics;
/// Create a copy of Consultation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsultationCopyWith<Consultation> get copyWith => _$ConsultationCopyWithImpl<Consultation>(this as Consultation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Consultation&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientAvatarUrl, patientAvatarUrl) || other.patientAvatarUrl == patientAvatarUrl)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.doctorAvatarUrl, doctorAvatarUrl) || other.doctorAvatarUrl == doctorAvatarUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomToken, roomToken) || other.roomToken == roomToken)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.participants, participants)&&(identical(other.recordingEnabled, recordingEnabled) || other.recordingEnabled == recordingEnabled)&&(identical(other.consentGiven, consentGiven) || other.consentGiven == consentGiven)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.metrics, metrics) || other.metrics == metrics));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,patientAvatarUrl,doctorId,doctorName,doctorAvatarUrl,type,status,scheduledAt,startedAt,endedAt,roomId,roomToken,reason,notes,const DeepCollectionEquality().hash(participants),recordingEnabled,consentGiven,const DeepCollectionEquality().hash(attachments),metrics]);

@override
String toString() {
  return 'Consultation(id: $id, patientId: $patientId, patientName: $patientName, patientAvatarUrl: $patientAvatarUrl, doctorId: $doctorId, doctorName: $doctorName, doctorAvatarUrl: $doctorAvatarUrl, type: $type, status: $status, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, roomId: $roomId, roomToken: $roomToken, reason: $reason, notes: $notes, participants: $participants, recordingEnabled: $recordingEnabled, consentGiven: $consentGiven, attachments: $attachments, metrics: $metrics)';
}


}

/// @nodoc
abstract mixin class $ConsultationCopyWith<$Res>  {
  factory $ConsultationCopyWith(Consultation value, $Res Function(Consultation) _then) = _$ConsultationCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, String? patientAvatarUrl, String doctorId, String doctorName, String? doctorAvatarUrl, ConsultationType type, ConsultationStatus status, DateTime scheduledAt, DateTime? startedAt, DateTime? endedAt, String? roomId, String? roomToken, String? reason, String? notes, List<String>? participants, bool? recordingEnabled, bool? consentGiven, List<String>? attachments, ConsultationMetrics? metrics
});


$ConsultationMetricsCopyWith<$Res>? get metrics;

}
/// @nodoc
class _$ConsultationCopyWithImpl<$Res>
    implements $ConsultationCopyWith<$Res> {
  _$ConsultationCopyWithImpl(this._self, this._then);

  final Consultation _self;
  final $Res Function(Consultation) _then;

/// Create a copy of Consultation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientAvatarUrl = freezed,Object? doctorId = null,Object? doctorName = null,Object? doctorAvatarUrl = freezed,Object? type = null,Object? status = null,Object? scheduledAt = null,Object? startedAt = freezed,Object? endedAt = freezed,Object? roomId = freezed,Object? roomToken = freezed,Object? reason = freezed,Object? notes = freezed,Object? participants = freezed,Object? recordingEnabled = freezed,Object? consentGiven = freezed,Object? attachments = freezed,Object? metrics = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientAvatarUrl: freezed == patientAvatarUrl ? _self.patientAvatarUrl : patientAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,doctorAvatarUrl: freezed == doctorAvatarUrl ? _self.doctorAvatarUrl : doctorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ConsultationType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConsultationStatus,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String?,roomToken: freezed == roomToken ? _self.roomToken : roomToken // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,participants: freezed == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<String>?,recordingEnabled: freezed == recordingEnabled ? _self.recordingEnabled : recordingEnabled // ignore: cast_nullable_to_non_nullable
as bool?,consentGiven: freezed == consentGiven ? _self.consentGiven : consentGiven // ignore: cast_nullable_to_non_nullable
as bool?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as ConsultationMetrics?,
  ));
}
/// Create a copy of Consultation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConsultationMetricsCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $ConsultationMetricsCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}
}


/// Adds pattern-matching-related methods to [Consultation].
extension ConsultationPatterns on Consultation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Consultation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Consultation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Consultation value)  $default,){
final _that = this;
switch (_that) {
case _Consultation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Consultation value)?  $default,){
final _that = this;
switch (_that) {
case _Consultation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String? patientAvatarUrl,  String doctorId,  String doctorName,  String? doctorAvatarUrl,  ConsultationType type,  ConsultationStatus status,  DateTime scheduledAt,  DateTime? startedAt,  DateTime? endedAt,  String? roomId,  String? roomToken,  String? reason,  String? notes,  List<String>? participants,  bool? recordingEnabled,  bool? consentGiven,  List<String>? attachments,  ConsultationMetrics? metrics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Consultation() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAvatarUrl,_that.doctorId,_that.doctorName,_that.doctorAvatarUrl,_that.type,_that.status,_that.scheduledAt,_that.startedAt,_that.endedAt,_that.roomId,_that.roomToken,_that.reason,_that.notes,_that.participants,_that.recordingEnabled,_that.consentGiven,_that.attachments,_that.metrics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String? patientAvatarUrl,  String doctorId,  String doctorName,  String? doctorAvatarUrl,  ConsultationType type,  ConsultationStatus status,  DateTime scheduledAt,  DateTime? startedAt,  DateTime? endedAt,  String? roomId,  String? roomToken,  String? reason,  String? notes,  List<String>? participants,  bool? recordingEnabled,  bool? consentGiven,  List<String>? attachments,  ConsultationMetrics? metrics)  $default,) {final _that = this;
switch (_that) {
case _Consultation():
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAvatarUrl,_that.doctorId,_that.doctorName,_that.doctorAvatarUrl,_that.type,_that.status,_that.scheduledAt,_that.startedAt,_that.endedAt,_that.roomId,_that.roomToken,_that.reason,_that.notes,_that.participants,_that.recordingEnabled,_that.consentGiven,_that.attachments,_that.metrics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  String? patientAvatarUrl,  String doctorId,  String doctorName,  String? doctorAvatarUrl,  ConsultationType type,  ConsultationStatus status,  DateTime scheduledAt,  DateTime? startedAt,  DateTime? endedAt,  String? roomId,  String? roomToken,  String? reason,  String? notes,  List<String>? participants,  bool? recordingEnabled,  bool? consentGiven,  List<String>? attachments,  ConsultationMetrics? metrics)?  $default,) {final _that = this;
switch (_that) {
case _Consultation() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAvatarUrl,_that.doctorId,_that.doctorName,_that.doctorAvatarUrl,_that.type,_that.status,_that.scheduledAt,_that.startedAt,_that.endedAt,_that.roomId,_that.roomToken,_that.reason,_that.notes,_that.participants,_that.recordingEnabled,_that.consentGiven,_that.attachments,_that.metrics);case _:
  return null;

}
}

}

/// @nodoc


class _Consultation extends Consultation {
  const _Consultation({required this.id, required this.patientId, required this.patientName, this.patientAvatarUrl, required this.doctorId, required this.doctorName, this.doctorAvatarUrl, required this.type, required this.status, required this.scheduledAt, this.startedAt, this.endedAt, this.roomId, this.roomToken, this.reason, this.notes, final  List<String>? participants, this.recordingEnabled, this.consentGiven, final  List<String>? attachments, this.metrics}): _participants = participants,_attachments = attachments,super._();
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  String? patientAvatarUrl;
@override final  String doctorId;
@override final  String doctorName;
@override final  String? doctorAvatarUrl;
@override final  ConsultationType type;
@override final  ConsultationStatus status;
@override final  DateTime scheduledAt;
@override final  DateTime? startedAt;
@override final  DateTime? endedAt;
@override final  String? roomId;
@override final  String? roomToken;
@override final  String? reason;
@override final  String? notes;
 final  List<String>? _participants;
@override List<String>? get participants {
  final value = _participants;
  if (value == null) return null;
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Additional participants (family, nurses)
@override final  bool? recordingEnabled;
@override final  bool? consentGiven;
 final  List<String>? _attachments;
@override List<String>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ConsultationMetrics? metrics;

/// Create a copy of Consultation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConsultationCopyWith<_Consultation> get copyWith => __$ConsultationCopyWithImpl<_Consultation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Consultation&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientAvatarUrl, patientAvatarUrl) || other.patientAvatarUrl == patientAvatarUrl)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.doctorAvatarUrl, doctorAvatarUrl) || other.doctorAvatarUrl == doctorAvatarUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomToken, roomToken) || other.roomToken == roomToken)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._participants, _participants)&&(identical(other.recordingEnabled, recordingEnabled) || other.recordingEnabled == recordingEnabled)&&(identical(other.consentGiven, consentGiven) || other.consentGiven == consentGiven)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.metrics, metrics) || other.metrics == metrics));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,patientAvatarUrl,doctorId,doctorName,doctorAvatarUrl,type,status,scheduledAt,startedAt,endedAt,roomId,roomToken,reason,notes,const DeepCollectionEquality().hash(_participants),recordingEnabled,consentGiven,const DeepCollectionEquality().hash(_attachments),metrics]);

@override
String toString() {
  return 'Consultation(id: $id, patientId: $patientId, patientName: $patientName, patientAvatarUrl: $patientAvatarUrl, doctorId: $doctorId, doctorName: $doctorName, doctorAvatarUrl: $doctorAvatarUrl, type: $type, status: $status, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, roomId: $roomId, roomToken: $roomToken, reason: $reason, notes: $notes, participants: $participants, recordingEnabled: $recordingEnabled, consentGiven: $consentGiven, attachments: $attachments, metrics: $metrics)';
}


}

/// @nodoc
abstract mixin class _$ConsultationCopyWith<$Res> implements $ConsultationCopyWith<$Res> {
  factory _$ConsultationCopyWith(_Consultation value, $Res Function(_Consultation) _then) = __$ConsultationCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, String? patientAvatarUrl, String doctorId, String doctorName, String? doctorAvatarUrl, ConsultationType type, ConsultationStatus status, DateTime scheduledAt, DateTime? startedAt, DateTime? endedAt, String? roomId, String? roomToken, String? reason, String? notes, List<String>? participants, bool? recordingEnabled, bool? consentGiven, List<String>? attachments, ConsultationMetrics? metrics
});


@override $ConsultationMetricsCopyWith<$Res>? get metrics;

}
/// @nodoc
class __$ConsultationCopyWithImpl<$Res>
    implements _$ConsultationCopyWith<$Res> {
  __$ConsultationCopyWithImpl(this._self, this._then);

  final _Consultation _self;
  final $Res Function(_Consultation) _then;

/// Create a copy of Consultation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientAvatarUrl = freezed,Object? doctorId = null,Object? doctorName = null,Object? doctorAvatarUrl = freezed,Object? type = null,Object? status = null,Object? scheduledAt = null,Object? startedAt = freezed,Object? endedAt = freezed,Object? roomId = freezed,Object? roomToken = freezed,Object? reason = freezed,Object? notes = freezed,Object? participants = freezed,Object? recordingEnabled = freezed,Object? consentGiven = freezed,Object? attachments = freezed,Object? metrics = freezed,}) {
  return _then(_Consultation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientAvatarUrl: freezed == patientAvatarUrl ? _self.patientAvatarUrl : patientAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,doctorAvatarUrl: freezed == doctorAvatarUrl ? _self.doctorAvatarUrl : doctorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ConsultationType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConsultationStatus,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String?,roomToken: freezed == roomToken ? _self.roomToken : roomToken // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,participants: freezed == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<String>?,recordingEnabled: freezed == recordingEnabled ? _self.recordingEnabled : recordingEnabled // ignore: cast_nullable_to_non_nullable
as bool?,consentGiven: freezed == consentGiven ? _self.consentGiven : consentGiven // ignore: cast_nullable_to_non_nullable
as bool?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as ConsultationMetrics?,
  ));
}

/// Create a copy of Consultation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConsultationMetricsCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $ConsultationMetricsCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}
}

/// @nodoc
mixin _$ConsultationMetrics {

 Duration get callDuration; int? get participantCount; bool? get screenShared; bool? get vitalsShared; String? get connectionQuality;// excellent, good, fair, poor
 int? get reconnectCount;
/// Create a copy of ConsultationMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsultationMetricsCopyWith<ConsultationMetrics> get copyWith => _$ConsultationMetricsCopyWithImpl<ConsultationMetrics>(this as ConsultationMetrics, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsultationMetrics&&(identical(other.callDuration, callDuration) || other.callDuration == callDuration)&&(identical(other.participantCount, participantCount) || other.participantCount == participantCount)&&(identical(other.screenShared, screenShared) || other.screenShared == screenShared)&&(identical(other.vitalsShared, vitalsShared) || other.vitalsShared == vitalsShared)&&(identical(other.connectionQuality, connectionQuality) || other.connectionQuality == connectionQuality)&&(identical(other.reconnectCount, reconnectCount) || other.reconnectCount == reconnectCount));
}


@override
int get hashCode => Object.hash(runtimeType,callDuration,participantCount,screenShared,vitalsShared,connectionQuality,reconnectCount);

@override
String toString() {
  return 'ConsultationMetrics(callDuration: $callDuration, participantCount: $participantCount, screenShared: $screenShared, vitalsShared: $vitalsShared, connectionQuality: $connectionQuality, reconnectCount: $reconnectCount)';
}


}

/// @nodoc
abstract mixin class $ConsultationMetricsCopyWith<$Res>  {
  factory $ConsultationMetricsCopyWith(ConsultationMetrics value, $Res Function(ConsultationMetrics) _then) = _$ConsultationMetricsCopyWithImpl;
@useResult
$Res call({
 Duration callDuration, int? participantCount, bool? screenShared, bool? vitalsShared, String? connectionQuality, int? reconnectCount
});




}
/// @nodoc
class _$ConsultationMetricsCopyWithImpl<$Res>
    implements $ConsultationMetricsCopyWith<$Res> {
  _$ConsultationMetricsCopyWithImpl(this._self, this._then);

  final ConsultationMetrics _self;
  final $Res Function(ConsultationMetrics) _then;

/// Create a copy of ConsultationMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? callDuration = null,Object? participantCount = freezed,Object? screenShared = freezed,Object? vitalsShared = freezed,Object? connectionQuality = freezed,Object? reconnectCount = freezed,}) {
  return _then(_self.copyWith(
callDuration: null == callDuration ? _self.callDuration : callDuration // ignore: cast_nullable_to_non_nullable
as Duration,participantCount: freezed == participantCount ? _self.participantCount : participantCount // ignore: cast_nullable_to_non_nullable
as int?,screenShared: freezed == screenShared ? _self.screenShared : screenShared // ignore: cast_nullable_to_non_nullable
as bool?,vitalsShared: freezed == vitalsShared ? _self.vitalsShared : vitalsShared // ignore: cast_nullable_to_non_nullable
as bool?,connectionQuality: freezed == connectionQuality ? _self.connectionQuality : connectionQuality // ignore: cast_nullable_to_non_nullable
as String?,reconnectCount: freezed == reconnectCount ? _self.reconnectCount : reconnectCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConsultationMetrics].
extension ConsultationMetricsPatterns on ConsultationMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConsultationMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConsultationMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConsultationMetrics value)  $default,){
final _that = this;
switch (_that) {
case _ConsultationMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConsultationMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _ConsultationMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Duration callDuration,  int? participantCount,  bool? screenShared,  bool? vitalsShared,  String? connectionQuality,  int? reconnectCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConsultationMetrics() when $default != null:
return $default(_that.callDuration,_that.participantCount,_that.screenShared,_that.vitalsShared,_that.connectionQuality,_that.reconnectCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Duration callDuration,  int? participantCount,  bool? screenShared,  bool? vitalsShared,  String? connectionQuality,  int? reconnectCount)  $default,) {final _that = this;
switch (_that) {
case _ConsultationMetrics():
return $default(_that.callDuration,_that.participantCount,_that.screenShared,_that.vitalsShared,_that.connectionQuality,_that.reconnectCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Duration callDuration,  int? participantCount,  bool? screenShared,  bool? vitalsShared,  String? connectionQuality,  int? reconnectCount)?  $default,) {final _that = this;
switch (_that) {
case _ConsultationMetrics() when $default != null:
return $default(_that.callDuration,_that.participantCount,_that.screenShared,_that.vitalsShared,_that.connectionQuality,_that.reconnectCount);case _:
  return null;

}
}

}

/// @nodoc


class _ConsultationMetrics implements ConsultationMetrics {
  const _ConsultationMetrics({required this.callDuration, this.participantCount, this.screenShared, this.vitalsShared, this.connectionQuality, this.reconnectCount});
  

@override final  Duration callDuration;
@override final  int? participantCount;
@override final  bool? screenShared;
@override final  bool? vitalsShared;
@override final  String? connectionQuality;
// excellent, good, fair, poor
@override final  int? reconnectCount;

/// Create a copy of ConsultationMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConsultationMetricsCopyWith<_ConsultationMetrics> get copyWith => __$ConsultationMetricsCopyWithImpl<_ConsultationMetrics>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConsultationMetrics&&(identical(other.callDuration, callDuration) || other.callDuration == callDuration)&&(identical(other.participantCount, participantCount) || other.participantCount == participantCount)&&(identical(other.screenShared, screenShared) || other.screenShared == screenShared)&&(identical(other.vitalsShared, vitalsShared) || other.vitalsShared == vitalsShared)&&(identical(other.connectionQuality, connectionQuality) || other.connectionQuality == connectionQuality)&&(identical(other.reconnectCount, reconnectCount) || other.reconnectCount == reconnectCount));
}


@override
int get hashCode => Object.hash(runtimeType,callDuration,participantCount,screenShared,vitalsShared,connectionQuality,reconnectCount);

@override
String toString() {
  return 'ConsultationMetrics(callDuration: $callDuration, participantCount: $participantCount, screenShared: $screenShared, vitalsShared: $vitalsShared, connectionQuality: $connectionQuality, reconnectCount: $reconnectCount)';
}


}

/// @nodoc
abstract mixin class _$ConsultationMetricsCopyWith<$Res> implements $ConsultationMetricsCopyWith<$Res> {
  factory _$ConsultationMetricsCopyWith(_ConsultationMetrics value, $Res Function(_ConsultationMetrics) _then) = __$ConsultationMetricsCopyWithImpl;
@override @useResult
$Res call({
 Duration callDuration, int? participantCount, bool? screenShared, bool? vitalsShared, String? connectionQuality, int? reconnectCount
});




}
/// @nodoc
class __$ConsultationMetricsCopyWithImpl<$Res>
    implements _$ConsultationMetricsCopyWith<$Res> {
  __$ConsultationMetricsCopyWithImpl(this._self, this._then);

  final _ConsultationMetrics _self;
  final $Res Function(_ConsultationMetrics) _then;

/// Create a copy of ConsultationMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? callDuration = null,Object? participantCount = freezed,Object? screenShared = freezed,Object? vitalsShared = freezed,Object? connectionQuality = freezed,Object? reconnectCount = freezed,}) {
  return _then(_ConsultationMetrics(
callDuration: null == callDuration ? _self.callDuration : callDuration // ignore: cast_nullable_to_non_nullable
as Duration,participantCount: freezed == participantCount ? _self.participantCount : participantCount // ignore: cast_nullable_to_non_nullable
as int?,screenShared: freezed == screenShared ? _self.screenShared : screenShared // ignore: cast_nullable_to_non_nullable
as bool?,vitalsShared: freezed == vitalsShared ? _self.vitalsShared : vitalsShared // ignore: cast_nullable_to_non_nullable
as bool?,connectionQuality: freezed == connectionQuality ? _self.connectionQuality : connectionQuality // ignore: cast_nullable_to_non_nullable
as String?,reconnectCount: freezed == reconnectCount ? _self.reconnectCount : reconnectCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$CallParticipant {

 String get id; String get name; ParticipantRole get role; String? get avatarUrl; bool get audioEnabled; bool get videoEnabled; bool get isHost; DateTime? get joinedAt; String? get connectionQuality;
/// Create a copy of CallParticipant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CallParticipantCopyWith<CallParticipant> get copyWith => _$CallParticipantCopyWithImpl<CallParticipant>(this as CallParticipant, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CallParticipant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.audioEnabled, audioEnabled) || other.audioEnabled == audioEnabled)&&(identical(other.videoEnabled, videoEnabled) || other.videoEnabled == videoEnabled)&&(identical(other.isHost, isHost) || other.isHost == isHost)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&(identical(other.connectionQuality, connectionQuality) || other.connectionQuality == connectionQuality));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,role,avatarUrl,audioEnabled,videoEnabled,isHost,joinedAt,connectionQuality);

@override
String toString() {
  return 'CallParticipant(id: $id, name: $name, role: $role, avatarUrl: $avatarUrl, audioEnabled: $audioEnabled, videoEnabled: $videoEnabled, isHost: $isHost, joinedAt: $joinedAt, connectionQuality: $connectionQuality)';
}


}

/// @nodoc
abstract mixin class $CallParticipantCopyWith<$Res>  {
  factory $CallParticipantCopyWith(CallParticipant value, $Res Function(CallParticipant) _then) = _$CallParticipantCopyWithImpl;
@useResult
$Res call({
 String id, String name, ParticipantRole role, String? avatarUrl, bool audioEnabled, bool videoEnabled, bool isHost, DateTime? joinedAt, String? connectionQuality
});




}
/// @nodoc
class _$CallParticipantCopyWithImpl<$Res>
    implements $CallParticipantCopyWith<$Res> {
  _$CallParticipantCopyWithImpl(this._self, this._then);

  final CallParticipant _self;
  final $Res Function(CallParticipant) _then;

/// Create a copy of CallParticipant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? role = null,Object? avatarUrl = freezed,Object? audioEnabled = null,Object? videoEnabled = null,Object? isHost = null,Object? joinedAt = freezed,Object? connectionQuality = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ParticipantRole,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,audioEnabled: null == audioEnabled ? _self.audioEnabled : audioEnabled // ignore: cast_nullable_to_non_nullable
as bool,videoEnabled: null == videoEnabled ? _self.videoEnabled : videoEnabled // ignore: cast_nullable_to_non_nullable
as bool,isHost: null == isHost ? _self.isHost : isHost // ignore: cast_nullable_to_non_nullable
as bool,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,connectionQuality: freezed == connectionQuality ? _self.connectionQuality : connectionQuality // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CallParticipant].
extension CallParticipantPatterns on CallParticipant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CallParticipant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CallParticipant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CallParticipant value)  $default,){
final _that = this;
switch (_that) {
case _CallParticipant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CallParticipant value)?  $default,){
final _that = this;
switch (_that) {
case _CallParticipant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  ParticipantRole role,  String? avatarUrl,  bool audioEnabled,  bool videoEnabled,  bool isHost,  DateTime? joinedAt,  String? connectionQuality)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CallParticipant() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.avatarUrl,_that.audioEnabled,_that.videoEnabled,_that.isHost,_that.joinedAt,_that.connectionQuality);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  ParticipantRole role,  String? avatarUrl,  bool audioEnabled,  bool videoEnabled,  bool isHost,  DateTime? joinedAt,  String? connectionQuality)  $default,) {final _that = this;
switch (_that) {
case _CallParticipant():
return $default(_that.id,_that.name,_that.role,_that.avatarUrl,_that.audioEnabled,_that.videoEnabled,_that.isHost,_that.joinedAt,_that.connectionQuality);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  ParticipantRole role,  String? avatarUrl,  bool audioEnabled,  bool videoEnabled,  bool isHost,  DateTime? joinedAt,  String? connectionQuality)?  $default,) {final _that = this;
switch (_that) {
case _CallParticipant() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.avatarUrl,_that.audioEnabled,_that.videoEnabled,_that.isHost,_that.joinedAt,_that.connectionQuality);case _:
  return null;

}
}

}

/// @nodoc


class _CallParticipant implements CallParticipant {
  const _CallParticipant({required this.id, required this.name, required this.role, this.avatarUrl, required this.audioEnabled, required this.videoEnabled, required this.isHost, this.joinedAt, this.connectionQuality});
  

@override final  String id;
@override final  String name;
@override final  ParticipantRole role;
@override final  String? avatarUrl;
@override final  bool audioEnabled;
@override final  bool videoEnabled;
@override final  bool isHost;
@override final  DateTime? joinedAt;
@override final  String? connectionQuality;

/// Create a copy of CallParticipant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CallParticipantCopyWith<_CallParticipant> get copyWith => __$CallParticipantCopyWithImpl<_CallParticipant>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CallParticipant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.audioEnabled, audioEnabled) || other.audioEnabled == audioEnabled)&&(identical(other.videoEnabled, videoEnabled) || other.videoEnabled == videoEnabled)&&(identical(other.isHost, isHost) || other.isHost == isHost)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&(identical(other.connectionQuality, connectionQuality) || other.connectionQuality == connectionQuality));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,role,avatarUrl,audioEnabled,videoEnabled,isHost,joinedAt,connectionQuality);

@override
String toString() {
  return 'CallParticipant(id: $id, name: $name, role: $role, avatarUrl: $avatarUrl, audioEnabled: $audioEnabled, videoEnabled: $videoEnabled, isHost: $isHost, joinedAt: $joinedAt, connectionQuality: $connectionQuality)';
}


}

/// @nodoc
abstract mixin class _$CallParticipantCopyWith<$Res> implements $CallParticipantCopyWith<$Res> {
  factory _$CallParticipantCopyWith(_CallParticipant value, $Res Function(_CallParticipant) _then) = __$CallParticipantCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, ParticipantRole role, String? avatarUrl, bool audioEnabled, bool videoEnabled, bool isHost, DateTime? joinedAt, String? connectionQuality
});




}
/// @nodoc
class __$CallParticipantCopyWithImpl<$Res>
    implements _$CallParticipantCopyWith<$Res> {
  __$CallParticipantCopyWithImpl(this._self, this._then);

  final _CallParticipant _self;
  final $Res Function(_CallParticipant) _then;

/// Create a copy of CallParticipant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? role = null,Object? avatarUrl = freezed,Object? audioEnabled = null,Object? videoEnabled = null,Object? isHost = null,Object? joinedAt = freezed,Object? connectionQuality = freezed,}) {
  return _then(_CallParticipant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ParticipantRole,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,audioEnabled: null == audioEnabled ? _self.audioEnabled : audioEnabled // ignore: cast_nullable_to_non_nullable
as bool,videoEnabled: null == videoEnabled ? _self.videoEnabled : videoEnabled // ignore: cast_nullable_to_non_nullable
as bool,isHost: null == isHost ? _self.isHost : isHost // ignore: cast_nullable_to_non_nullable
as bool,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,connectionQuality: freezed == connectionQuality ? _self.connectionQuality : connectionQuality // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CallMessage {

 String get id; String get senderId; String get senderName; String get content; MessageType get type; DateTime get timestamp; String? get metadata;
/// Create a copy of CallMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CallMessageCopyWith<CallMessage> get copyWith => _$CallMessageCopyWithImpl<CallMessage>(this as CallMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CallMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,senderId,senderName,content,type,timestamp,metadata);

@override
String toString() {
  return 'CallMessage(id: $id, senderId: $senderId, senderName: $senderName, content: $content, type: $type, timestamp: $timestamp, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CallMessageCopyWith<$Res>  {
  factory $CallMessageCopyWith(CallMessage value, $Res Function(CallMessage) _then) = _$CallMessageCopyWithImpl;
@useResult
$Res call({
 String id, String senderId, String senderName, String content, MessageType type, DateTime timestamp, String? metadata
});




}
/// @nodoc
class _$CallMessageCopyWithImpl<$Res>
    implements $CallMessageCopyWith<$Res> {
  _$CallMessageCopyWithImpl(this._self, this._then);

  final CallMessage _self;
  final $Res Function(CallMessage) _then;

/// Create a copy of CallMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? senderId = null,Object? senderName = null,Object? content = null,Object? type = null,Object? timestamp = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CallMessage].
extension CallMessagePatterns on CallMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CallMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CallMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CallMessage value)  $default,){
final _that = this;
switch (_that) {
case _CallMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CallMessage value)?  $default,){
final _that = this;
switch (_that) {
case _CallMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String senderId,  String senderName,  String content,  MessageType type,  DateTime timestamp,  String? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CallMessage() when $default != null:
return $default(_that.id,_that.senderId,_that.senderName,_that.content,_that.type,_that.timestamp,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String senderId,  String senderName,  String content,  MessageType type,  DateTime timestamp,  String? metadata)  $default,) {final _that = this;
switch (_that) {
case _CallMessage():
return $default(_that.id,_that.senderId,_that.senderName,_that.content,_that.type,_that.timestamp,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String senderId,  String senderName,  String content,  MessageType type,  DateTime timestamp,  String? metadata)?  $default,) {final _that = this;
switch (_that) {
case _CallMessage() when $default != null:
return $default(_that.id,_that.senderId,_that.senderName,_that.content,_that.type,_that.timestamp,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _CallMessage implements CallMessage {
  const _CallMessage({required this.id, required this.senderId, required this.senderName, required this.content, required this.type, required this.timestamp, this.metadata});
  

@override final  String id;
@override final  String senderId;
@override final  String senderName;
@override final  String content;
@override final  MessageType type;
@override final  DateTime timestamp;
@override final  String? metadata;

/// Create a copy of CallMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CallMessageCopyWith<_CallMessage> get copyWith => __$CallMessageCopyWithImpl<_CallMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CallMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,senderId,senderName,content,type,timestamp,metadata);

@override
String toString() {
  return 'CallMessage(id: $id, senderId: $senderId, senderName: $senderName, content: $content, type: $type, timestamp: $timestamp, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CallMessageCopyWith<$Res> implements $CallMessageCopyWith<$Res> {
  factory _$CallMessageCopyWith(_CallMessage value, $Res Function(_CallMessage) _then) = __$CallMessageCopyWithImpl;
@override @useResult
$Res call({
 String id, String senderId, String senderName, String content, MessageType type, DateTime timestamp, String? metadata
});




}
/// @nodoc
class __$CallMessageCopyWithImpl<$Res>
    implements _$CallMessageCopyWith<$Res> {
  __$CallMessageCopyWithImpl(this._self, this._then);

  final _CallMessage _self;
  final $Res Function(_CallMessage) _then;

/// Create a copy of CallMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? senderId = null,Object? senderName = null,Object? content = null,Object? type = null,Object? timestamp = null,Object? metadata = freezed,}) {
  return _then(_CallMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
