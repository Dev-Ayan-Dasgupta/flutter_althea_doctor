// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'care_team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CareTeam {

 String get id; String get patientId; String get patientName; List<TeamMember> get members; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of CareTeam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CareTeamCopyWith<CareTeam> get copyWith => _$CareTeamCopyWithImpl<CareTeam>(this as CareTeam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CareTeam&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&const DeepCollectionEquality().equals(other.members, members)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,const DeepCollectionEquality().hash(members),createdAt,updatedAt);

@override
String toString() {
  return 'CareTeam(id: $id, patientId: $patientId, patientName: $patientName, members: $members, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CareTeamCopyWith<$Res>  {
  factory $CareTeamCopyWith(CareTeam value, $Res Function(CareTeam) _then) = _$CareTeamCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, List<TeamMember> members, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$CareTeamCopyWithImpl<$Res>
    implements $CareTeamCopyWith<$Res> {
  _$CareTeamCopyWithImpl(this._self, this._then);

  final CareTeam _self;
  final $Res Function(CareTeam) _then;

/// Create a copy of CareTeam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? members = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<TeamMember>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CareTeam].
extension CareTeamPatterns on CareTeam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CareTeam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CareTeam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CareTeam value)  $default,){
final _that = this;
switch (_that) {
case _CareTeam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CareTeam value)?  $default,){
final _that = this;
switch (_that) {
case _CareTeam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  List<TeamMember> members,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CareTeam() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.members,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  List<TeamMember> members,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CareTeam():
return $default(_that.id,_that.patientId,_that.patientName,_that.members,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  List<TeamMember> members,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CareTeam() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.members,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _CareTeam extends CareTeam {
  const _CareTeam({required this.id, required this.patientId, required this.patientName, required final  List<TeamMember> members, this.createdAt, this.updatedAt}): _members = members,super._();
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
 final  List<TeamMember> _members;
@override List<TeamMember> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of CareTeam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CareTeamCopyWith<_CareTeam> get copyWith => __$CareTeamCopyWithImpl<_CareTeam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CareTeam&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&const DeepCollectionEquality().equals(other._members, _members)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,const DeepCollectionEquality().hash(_members),createdAt,updatedAt);

@override
String toString() {
  return 'CareTeam(id: $id, patientId: $patientId, patientName: $patientName, members: $members, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CareTeamCopyWith<$Res> implements $CareTeamCopyWith<$Res> {
  factory _$CareTeamCopyWith(_CareTeam value, $Res Function(_CareTeam) _then) = __$CareTeamCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, List<TeamMember> members, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$CareTeamCopyWithImpl<$Res>
    implements _$CareTeamCopyWith<$Res> {
  __$CareTeamCopyWithImpl(this._self, this._then);

  final _CareTeam _self;
  final $Res Function(_CareTeam) _then;

/// Create a copy of CareTeam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? members = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CareTeam(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<TeamMember>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$TeamMember {

 String get id; String get name; TeamRole get role; String? get specialization; String? get avatarUrl; String? get email; String? get phone; bool get isActive; DateTime? get joinedAt;
/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamMemberCopyWith<TeamMember> get copyWith => _$TeamMemberCopyWithImpl<TeamMember>(this as TeamMember, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,role,specialization,avatarUrl,email,phone,isActive,joinedAt);

@override
String toString() {
  return 'TeamMember(id: $id, name: $name, role: $role, specialization: $specialization, avatarUrl: $avatarUrl, email: $email, phone: $phone, isActive: $isActive, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class $TeamMemberCopyWith<$Res>  {
  factory $TeamMemberCopyWith(TeamMember value, $Res Function(TeamMember) _then) = _$TeamMemberCopyWithImpl;
@useResult
$Res call({
 String id, String name, TeamRole role, String? specialization, String? avatarUrl, String? email, String? phone, bool isActive, DateTime? joinedAt
});




}
/// @nodoc
class _$TeamMemberCopyWithImpl<$Res>
    implements $TeamMemberCopyWith<$Res> {
  _$TeamMemberCopyWithImpl(this._self, this._then);

  final TeamMember _self;
  final $Res Function(TeamMember) _then;

/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? role = null,Object? specialization = freezed,Object? avatarUrl = freezed,Object? email = freezed,Object? phone = freezed,Object? isActive = null,Object? joinedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as TeamRole,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamMember].
extension TeamMemberPatterns on TeamMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamMember value)  $default,){
final _that = this;
switch (_that) {
case _TeamMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamMember value)?  $default,){
final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  TeamRole role,  String? specialization,  String? avatarUrl,  String? email,  String? phone,  bool isActive,  DateTime? joinedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.specialization,_that.avatarUrl,_that.email,_that.phone,_that.isActive,_that.joinedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  TeamRole role,  String? specialization,  String? avatarUrl,  String? email,  String? phone,  bool isActive,  DateTime? joinedAt)  $default,) {final _that = this;
switch (_that) {
case _TeamMember():
return $default(_that.id,_that.name,_that.role,_that.specialization,_that.avatarUrl,_that.email,_that.phone,_that.isActive,_that.joinedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  TeamRole role,  String? specialization,  String? avatarUrl,  String? email,  String? phone,  bool isActive,  DateTime? joinedAt)?  $default,) {final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.specialization,_that.avatarUrl,_that.email,_that.phone,_that.isActive,_that.joinedAt);case _:
  return null;

}
}

}

/// @nodoc


class _TeamMember extends TeamMember {
  const _TeamMember({required this.id, required this.name, required this.role, this.specialization, this.avatarUrl, this.email, this.phone, required this.isActive, this.joinedAt}): super._();
  

@override final  String id;
@override final  String name;
@override final  TeamRole role;
@override final  String? specialization;
@override final  String? avatarUrl;
@override final  String? email;
@override final  String? phone;
@override final  bool isActive;
@override final  DateTime? joinedAt;

/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamMemberCopyWith<_TeamMember> get copyWith => __$TeamMemberCopyWithImpl<_TeamMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,role,specialization,avatarUrl,email,phone,isActive,joinedAt);

@override
String toString() {
  return 'TeamMember(id: $id, name: $name, role: $role, specialization: $specialization, avatarUrl: $avatarUrl, email: $email, phone: $phone, isActive: $isActive, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class _$TeamMemberCopyWith<$Res> implements $TeamMemberCopyWith<$Res> {
  factory _$TeamMemberCopyWith(_TeamMember value, $Res Function(_TeamMember) _then) = __$TeamMemberCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, TeamRole role, String? specialization, String? avatarUrl, String? email, String? phone, bool isActive, DateTime? joinedAt
});




}
/// @nodoc
class __$TeamMemberCopyWithImpl<$Res>
    implements _$TeamMemberCopyWith<$Res> {
  __$TeamMemberCopyWithImpl(this._self, this._then);

  final _TeamMember _self;
  final $Res Function(_TeamMember) _then;

/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? role = null,Object? specialization = freezed,Object? avatarUrl = freezed,Object? email = freezed,Object? phone = freezed,Object? isActive = null,Object? joinedAt = freezed,}) {
  return _then(_TeamMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as TeamRole,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$Referral {

 String get id; String get patientId; String get patientName; String get fromDoctorId; String get fromDoctorName; String get toDoctorId; String get toDoctorName; String get toSpecialty; ReferralStatus get status; String get reason; String? get clinicalSummary; String? get urgency;// routine, urgent, emergency
 DateTime? get createdAt; DateTime? get responseAt; String? get response; List<String>? get attachments;
/// Create a copy of Referral
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralCopyWith<Referral> get copyWith => _$ReferralCopyWithImpl<Referral>(this as Referral, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Referral&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.fromDoctorId, fromDoctorId) || other.fromDoctorId == fromDoctorId)&&(identical(other.fromDoctorName, fromDoctorName) || other.fromDoctorName == fromDoctorName)&&(identical(other.toDoctorId, toDoctorId) || other.toDoctorId == toDoctorId)&&(identical(other.toDoctorName, toDoctorName) || other.toDoctorName == toDoctorName)&&(identical(other.toSpecialty, toSpecialty) || other.toSpecialty == toSpecialty)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.clinicalSummary, clinicalSummary) || other.clinicalSummary == clinicalSummary)&&(identical(other.urgency, urgency) || other.urgency == urgency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.responseAt, responseAt) || other.responseAt == responseAt)&&(identical(other.response, response) || other.response == response)&&const DeepCollectionEquality().equals(other.attachments, attachments));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,fromDoctorId,fromDoctorName,toDoctorId,toDoctorName,toSpecialty,status,reason,clinicalSummary,urgency,createdAt,responseAt,response,const DeepCollectionEquality().hash(attachments));

@override
String toString() {
  return 'Referral(id: $id, patientId: $patientId, patientName: $patientName, fromDoctorId: $fromDoctorId, fromDoctorName: $fromDoctorName, toDoctorId: $toDoctorId, toDoctorName: $toDoctorName, toSpecialty: $toSpecialty, status: $status, reason: $reason, clinicalSummary: $clinicalSummary, urgency: $urgency, createdAt: $createdAt, responseAt: $responseAt, response: $response, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $ReferralCopyWith<$Res>  {
  factory $ReferralCopyWith(Referral value, $Res Function(Referral) _then) = _$ReferralCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, String fromDoctorId, String fromDoctorName, String toDoctorId, String toDoctorName, String toSpecialty, ReferralStatus status, String reason, String? clinicalSummary, String? urgency, DateTime? createdAt, DateTime? responseAt, String? response, List<String>? attachments
});




}
/// @nodoc
class _$ReferralCopyWithImpl<$Res>
    implements $ReferralCopyWith<$Res> {
  _$ReferralCopyWithImpl(this._self, this._then);

  final Referral _self;
  final $Res Function(Referral) _then;

/// Create a copy of Referral
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? fromDoctorId = null,Object? fromDoctorName = null,Object? toDoctorId = null,Object? toDoctorName = null,Object? toSpecialty = null,Object? status = null,Object? reason = null,Object? clinicalSummary = freezed,Object? urgency = freezed,Object? createdAt = freezed,Object? responseAt = freezed,Object? response = freezed,Object? attachments = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,fromDoctorId: null == fromDoctorId ? _self.fromDoctorId : fromDoctorId // ignore: cast_nullable_to_non_nullable
as String,fromDoctorName: null == fromDoctorName ? _self.fromDoctorName : fromDoctorName // ignore: cast_nullable_to_non_nullable
as String,toDoctorId: null == toDoctorId ? _self.toDoctorId : toDoctorId // ignore: cast_nullable_to_non_nullable
as String,toDoctorName: null == toDoctorName ? _self.toDoctorName : toDoctorName // ignore: cast_nullable_to_non_nullable
as String,toSpecialty: null == toSpecialty ? _self.toSpecialty : toSpecialty // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReferralStatus,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,clinicalSummary: freezed == clinicalSummary ? _self.clinicalSummary : clinicalSummary // ignore: cast_nullable_to_non_nullable
as String?,urgency: freezed == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,responseAt: freezed == responseAt ? _self.responseAt : responseAt // ignore: cast_nullable_to_non_nullable
as DateTime?,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Referral].
extension ReferralPatterns on Referral {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Referral value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Referral() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Referral value)  $default,){
final _that = this;
switch (_that) {
case _Referral():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Referral value)?  $default,){
final _that = this;
switch (_that) {
case _Referral() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String fromDoctorId,  String fromDoctorName,  String toDoctorId,  String toDoctorName,  String toSpecialty,  ReferralStatus status,  String reason,  String? clinicalSummary,  String? urgency,  DateTime? createdAt,  DateTime? responseAt,  String? response,  List<String>? attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Referral() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.fromDoctorId,_that.fromDoctorName,_that.toDoctorId,_that.toDoctorName,_that.toSpecialty,_that.status,_that.reason,_that.clinicalSummary,_that.urgency,_that.createdAt,_that.responseAt,_that.response,_that.attachments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String fromDoctorId,  String fromDoctorName,  String toDoctorId,  String toDoctorName,  String toSpecialty,  ReferralStatus status,  String reason,  String? clinicalSummary,  String? urgency,  DateTime? createdAt,  DateTime? responseAt,  String? response,  List<String>? attachments)  $default,) {final _that = this;
switch (_that) {
case _Referral():
return $default(_that.id,_that.patientId,_that.patientName,_that.fromDoctorId,_that.fromDoctorName,_that.toDoctorId,_that.toDoctorName,_that.toSpecialty,_that.status,_that.reason,_that.clinicalSummary,_that.urgency,_that.createdAt,_that.responseAt,_that.response,_that.attachments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  String fromDoctorId,  String fromDoctorName,  String toDoctorId,  String toDoctorName,  String toSpecialty,  ReferralStatus status,  String reason,  String? clinicalSummary,  String? urgency,  DateTime? createdAt,  DateTime? responseAt,  String? response,  List<String>? attachments)?  $default,) {final _that = this;
switch (_that) {
case _Referral() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.fromDoctorId,_that.fromDoctorName,_that.toDoctorId,_that.toDoctorName,_that.toSpecialty,_that.status,_that.reason,_that.clinicalSummary,_that.urgency,_that.createdAt,_that.responseAt,_that.response,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc


class _Referral extends Referral {
  const _Referral({required this.id, required this.patientId, required this.patientName, required this.fromDoctorId, required this.fromDoctorName, required this.toDoctorId, required this.toDoctorName, required this.toSpecialty, required this.status, required this.reason, this.clinicalSummary, this.urgency, this.createdAt, this.responseAt, this.response, final  List<String>? attachments}): _attachments = attachments,super._();
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  String fromDoctorId;
@override final  String fromDoctorName;
@override final  String toDoctorId;
@override final  String toDoctorName;
@override final  String toSpecialty;
@override final  ReferralStatus status;
@override final  String reason;
@override final  String? clinicalSummary;
@override final  String? urgency;
// routine, urgent, emergency
@override final  DateTime? createdAt;
@override final  DateTime? responseAt;
@override final  String? response;
 final  List<String>? _attachments;
@override List<String>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Referral
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralCopyWith<_Referral> get copyWith => __$ReferralCopyWithImpl<_Referral>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Referral&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.fromDoctorId, fromDoctorId) || other.fromDoctorId == fromDoctorId)&&(identical(other.fromDoctorName, fromDoctorName) || other.fromDoctorName == fromDoctorName)&&(identical(other.toDoctorId, toDoctorId) || other.toDoctorId == toDoctorId)&&(identical(other.toDoctorName, toDoctorName) || other.toDoctorName == toDoctorName)&&(identical(other.toSpecialty, toSpecialty) || other.toSpecialty == toSpecialty)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.clinicalSummary, clinicalSummary) || other.clinicalSummary == clinicalSummary)&&(identical(other.urgency, urgency) || other.urgency == urgency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.responseAt, responseAt) || other.responseAt == responseAt)&&(identical(other.response, response) || other.response == response)&&const DeepCollectionEquality().equals(other._attachments, _attachments));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,fromDoctorId,fromDoctorName,toDoctorId,toDoctorName,toSpecialty,status,reason,clinicalSummary,urgency,createdAt,responseAt,response,const DeepCollectionEquality().hash(_attachments));

@override
String toString() {
  return 'Referral(id: $id, patientId: $patientId, patientName: $patientName, fromDoctorId: $fromDoctorId, fromDoctorName: $fromDoctorName, toDoctorId: $toDoctorId, toDoctorName: $toDoctorName, toSpecialty: $toSpecialty, status: $status, reason: $reason, clinicalSummary: $clinicalSummary, urgency: $urgency, createdAt: $createdAt, responseAt: $responseAt, response: $response, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$ReferralCopyWith<$Res> implements $ReferralCopyWith<$Res> {
  factory _$ReferralCopyWith(_Referral value, $Res Function(_Referral) _then) = __$ReferralCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, String fromDoctorId, String fromDoctorName, String toDoctorId, String toDoctorName, String toSpecialty, ReferralStatus status, String reason, String? clinicalSummary, String? urgency, DateTime? createdAt, DateTime? responseAt, String? response, List<String>? attachments
});




}
/// @nodoc
class __$ReferralCopyWithImpl<$Res>
    implements _$ReferralCopyWith<$Res> {
  __$ReferralCopyWithImpl(this._self, this._then);

  final _Referral _self;
  final $Res Function(_Referral) _then;

/// Create a copy of Referral
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? fromDoctorId = null,Object? fromDoctorName = null,Object? toDoctorId = null,Object? toDoctorName = null,Object? toSpecialty = null,Object? status = null,Object? reason = null,Object? clinicalSummary = freezed,Object? urgency = freezed,Object? createdAt = freezed,Object? responseAt = freezed,Object? response = freezed,Object? attachments = freezed,}) {
  return _then(_Referral(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,fromDoctorId: null == fromDoctorId ? _self.fromDoctorId : fromDoctorId // ignore: cast_nullable_to_non_nullable
as String,fromDoctorName: null == fromDoctorName ? _self.fromDoctorName : fromDoctorName // ignore: cast_nullable_to_non_nullable
as String,toDoctorId: null == toDoctorId ? _self.toDoctorId : toDoctorId // ignore: cast_nullable_to_non_nullable
as String,toDoctorName: null == toDoctorName ? _self.toDoctorName : toDoctorName // ignore: cast_nullable_to_non_nullable
as String,toSpecialty: null == toSpecialty ? _self.toSpecialty : toSpecialty // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReferralStatus,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,clinicalSummary: freezed == clinicalSummary ? _self.clinicalSummary : clinicalSummary // ignore: cast_nullable_to_non_nullable
as String?,urgency: freezed == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,responseAt: freezed == responseAt ? _self.responseAt : responseAt // ignore: cast_nullable_to_non_nullable
as DateTime?,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc
mixin _$SecureMessage {

 String get id; String get senderId; String get senderName; String get recipientId; String get recipientName; String get subject; String get content; DateTime get sentAt; bool? get isRead; DateTime? get readAt; String? get patientId; String? get patientName; List<String>? get attachments;
/// Create a copy of SecureMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecureMessageCopyWith<SecureMessage> get copyWith => _$SecureMessageCopyWithImpl<SecureMessage>(this as SecureMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecureMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.recipientId, recipientId) || other.recipientId == recipientId)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.content, content) || other.content == content)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&const DeepCollectionEquality().equals(other.attachments, attachments));
}


@override
int get hashCode => Object.hash(runtimeType,id,senderId,senderName,recipientId,recipientName,subject,content,sentAt,isRead,readAt,patientId,patientName,const DeepCollectionEquality().hash(attachments));

@override
String toString() {
  return 'SecureMessage(id: $id, senderId: $senderId, senderName: $senderName, recipientId: $recipientId, recipientName: $recipientName, subject: $subject, content: $content, sentAt: $sentAt, isRead: $isRead, readAt: $readAt, patientId: $patientId, patientName: $patientName, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $SecureMessageCopyWith<$Res>  {
  factory $SecureMessageCopyWith(SecureMessage value, $Res Function(SecureMessage) _then) = _$SecureMessageCopyWithImpl;
@useResult
$Res call({
 String id, String senderId, String senderName, String recipientId, String recipientName, String subject, String content, DateTime sentAt, bool? isRead, DateTime? readAt, String? patientId, String? patientName, List<String>? attachments
});




}
/// @nodoc
class _$SecureMessageCopyWithImpl<$Res>
    implements $SecureMessageCopyWith<$Res> {
  _$SecureMessageCopyWithImpl(this._self, this._then);

  final SecureMessage _self;
  final $Res Function(SecureMessage) _then;

/// Create a copy of SecureMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? senderId = null,Object? senderName = null,Object? recipientId = null,Object? recipientName = null,Object? subject = null,Object? content = null,Object? sentAt = null,Object? isRead = freezed,Object? readAt = freezed,Object? patientId = freezed,Object? patientName = freezed,Object? attachments = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,recipientId: null == recipientId ? _self.recipientId : recipientId // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: freezed == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SecureMessage].
extension SecureMessagePatterns on SecureMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecureMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecureMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecureMessage value)  $default,){
final _that = this;
switch (_that) {
case _SecureMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecureMessage value)?  $default,){
final _that = this;
switch (_that) {
case _SecureMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String senderId,  String senderName,  String recipientId,  String recipientName,  String subject,  String content,  DateTime sentAt,  bool? isRead,  DateTime? readAt,  String? patientId,  String? patientName,  List<String>? attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecureMessage() when $default != null:
return $default(_that.id,_that.senderId,_that.senderName,_that.recipientId,_that.recipientName,_that.subject,_that.content,_that.sentAt,_that.isRead,_that.readAt,_that.patientId,_that.patientName,_that.attachments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String senderId,  String senderName,  String recipientId,  String recipientName,  String subject,  String content,  DateTime sentAt,  bool? isRead,  DateTime? readAt,  String? patientId,  String? patientName,  List<String>? attachments)  $default,) {final _that = this;
switch (_that) {
case _SecureMessage():
return $default(_that.id,_that.senderId,_that.senderName,_that.recipientId,_that.recipientName,_that.subject,_that.content,_that.sentAt,_that.isRead,_that.readAt,_that.patientId,_that.patientName,_that.attachments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String senderId,  String senderName,  String recipientId,  String recipientName,  String subject,  String content,  DateTime sentAt,  bool? isRead,  DateTime? readAt,  String? patientId,  String? patientName,  List<String>? attachments)?  $default,) {final _that = this;
switch (_that) {
case _SecureMessage() when $default != null:
return $default(_that.id,_that.senderId,_that.senderName,_that.recipientId,_that.recipientName,_that.subject,_that.content,_that.sentAt,_that.isRead,_that.readAt,_that.patientId,_that.patientName,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc


class _SecureMessage implements SecureMessage {
  const _SecureMessage({required this.id, required this.senderId, required this.senderName, required this.recipientId, required this.recipientName, required this.subject, required this.content, required this.sentAt, this.isRead, this.readAt, this.patientId, this.patientName, final  List<String>? attachments}): _attachments = attachments;
  

@override final  String id;
@override final  String senderId;
@override final  String senderName;
@override final  String recipientId;
@override final  String recipientName;
@override final  String subject;
@override final  String content;
@override final  DateTime sentAt;
@override final  bool? isRead;
@override final  DateTime? readAt;
@override final  String? patientId;
@override final  String? patientName;
 final  List<String>? _attachments;
@override List<String>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SecureMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecureMessageCopyWith<_SecureMessage> get copyWith => __$SecureMessageCopyWithImpl<_SecureMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecureMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.recipientId, recipientId) || other.recipientId == recipientId)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.content, content) || other.content == content)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&const DeepCollectionEquality().equals(other._attachments, _attachments));
}


@override
int get hashCode => Object.hash(runtimeType,id,senderId,senderName,recipientId,recipientName,subject,content,sentAt,isRead,readAt,patientId,patientName,const DeepCollectionEquality().hash(_attachments));

@override
String toString() {
  return 'SecureMessage(id: $id, senderId: $senderId, senderName: $senderName, recipientId: $recipientId, recipientName: $recipientName, subject: $subject, content: $content, sentAt: $sentAt, isRead: $isRead, readAt: $readAt, patientId: $patientId, patientName: $patientName, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$SecureMessageCopyWith<$Res> implements $SecureMessageCopyWith<$Res> {
  factory _$SecureMessageCopyWith(_SecureMessage value, $Res Function(_SecureMessage) _then) = __$SecureMessageCopyWithImpl;
@override @useResult
$Res call({
 String id, String senderId, String senderName, String recipientId, String recipientName, String subject, String content, DateTime sentAt, bool? isRead, DateTime? readAt, String? patientId, String? patientName, List<String>? attachments
});




}
/// @nodoc
class __$SecureMessageCopyWithImpl<$Res>
    implements _$SecureMessageCopyWith<$Res> {
  __$SecureMessageCopyWithImpl(this._self, this._then);

  final _SecureMessage _self;
  final $Res Function(_SecureMessage) _then;

/// Create a copy of SecureMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? senderId = null,Object? senderName = null,Object? recipientId = null,Object? recipientName = null,Object? subject = null,Object? content = null,Object? sentAt = null,Object? isRead = freezed,Object? readAt = freezed,Object? patientId = freezed,Object? patientName = freezed,Object? attachments = freezed,}) {
  return _then(_SecureMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,recipientId: null == recipientId ? _self.recipientId : recipientId // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: freezed == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc
mixin _$CaseDiscussion {

 String get id; String get patientId; String get patientName; String get title; String get description; String get createdBy; String get createdByName; DateTime get createdAt; List<DiscussionComment> get comments; List<String>? get participants; bool? get isResolved;
/// Create a copy of CaseDiscussion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaseDiscussionCopyWith<CaseDiscussion> get copyWith => _$CaseDiscussionCopyWithImpl<CaseDiscussion>(this as CaseDiscussion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaseDiscussion&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByName, createdByName) || other.createdByName == createdByName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.comments, comments)&&const DeepCollectionEquality().equals(other.participants, participants)&&(identical(other.isResolved, isResolved) || other.isResolved == isResolved));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,title,description,createdBy,createdByName,createdAt,const DeepCollectionEquality().hash(comments),const DeepCollectionEquality().hash(participants),isResolved);

@override
String toString() {
  return 'CaseDiscussion(id: $id, patientId: $patientId, patientName: $patientName, title: $title, description: $description, createdBy: $createdBy, createdByName: $createdByName, createdAt: $createdAt, comments: $comments, participants: $participants, isResolved: $isResolved)';
}


}

/// @nodoc
abstract mixin class $CaseDiscussionCopyWith<$Res>  {
  factory $CaseDiscussionCopyWith(CaseDiscussion value, $Res Function(CaseDiscussion) _then) = _$CaseDiscussionCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, String title, String description, String createdBy, String createdByName, DateTime createdAt, List<DiscussionComment> comments, List<String>? participants, bool? isResolved
});




}
/// @nodoc
class _$CaseDiscussionCopyWithImpl<$Res>
    implements $CaseDiscussionCopyWith<$Res> {
  _$CaseDiscussionCopyWithImpl(this._self, this._then);

  final CaseDiscussion _self;
  final $Res Function(CaseDiscussion) _then;

/// Create a copy of CaseDiscussion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? title = null,Object? description = null,Object? createdBy = null,Object? createdByName = null,Object? createdAt = null,Object? comments = null,Object? participants = freezed,Object? isResolved = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,createdByName: null == createdByName ? _self.createdByName : createdByName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<DiscussionComment>,participants: freezed == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<String>?,isResolved: freezed == isResolved ? _self.isResolved : isResolved // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CaseDiscussion].
extension CaseDiscussionPatterns on CaseDiscussion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaseDiscussion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaseDiscussion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaseDiscussion value)  $default,){
final _that = this;
switch (_that) {
case _CaseDiscussion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaseDiscussion value)?  $default,){
final _that = this;
switch (_that) {
case _CaseDiscussion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String title,  String description,  String createdBy,  String createdByName,  DateTime createdAt,  List<DiscussionComment> comments,  List<String>? participants,  bool? isResolved)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaseDiscussion() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.title,_that.description,_that.createdBy,_that.createdByName,_that.createdAt,_that.comments,_that.participants,_that.isResolved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String title,  String description,  String createdBy,  String createdByName,  DateTime createdAt,  List<DiscussionComment> comments,  List<String>? participants,  bool? isResolved)  $default,) {final _that = this;
switch (_that) {
case _CaseDiscussion():
return $default(_that.id,_that.patientId,_that.patientName,_that.title,_that.description,_that.createdBy,_that.createdByName,_that.createdAt,_that.comments,_that.participants,_that.isResolved);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  String title,  String description,  String createdBy,  String createdByName,  DateTime createdAt,  List<DiscussionComment> comments,  List<String>? participants,  bool? isResolved)?  $default,) {final _that = this;
switch (_that) {
case _CaseDiscussion() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.title,_that.description,_that.createdBy,_that.createdByName,_that.createdAt,_that.comments,_that.participants,_that.isResolved);case _:
  return null;

}
}

}

/// @nodoc


class _CaseDiscussion extends CaseDiscussion {
  const _CaseDiscussion({required this.id, required this.patientId, required this.patientName, required this.title, required this.description, required this.createdBy, required this.createdByName, required this.createdAt, required final  List<DiscussionComment> comments, final  List<String>? participants, this.isResolved}): _comments = comments,_participants = participants,super._();
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  String title;
@override final  String description;
@override final  String createdBy;
@override final  String createdByName;
@override final  DateTime createdAt;
 final  List<DiscussionComment> _comments;
@override List<DiscussionComment> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

 final  List<String>? _participants;
@override List<String>? get participants {
  final value = _participants;
  if (value == null) return null;
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? isResolved;

/// Create a copy of CaseDiscussion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaseDiscussionCopyWith<_CaseDiscussion> get copyWith => __$CaseDiscussionCopyWithImpl<_CaseDiscussion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaseDiscussion&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByName, createdByName) || other.createdByName == createdByName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._comments, _comments)&&const DeepCollectionEquality().equals(other._participants, _participants)&&(identical(other.isResolved, isResolved) || other.isResolved == isResolved));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,title,description,createdBy,createdByName,createdAt,const DeepCollectionEquality().hash(_comments),const DeepCollectionEquality().hash(_participants),isResolved);

@override
String toString() {
  return 'CaseDiscussion(id: $id, patientId: $patientId, patientName: $patientName, title: $title, description: $description, createdBy: $createdBy, createdByName: $createdByName, createdAt: $createdAt, comments: $comments, participants: $participants, isResolved: $isResolved)';
}


}

/// @nodoc
abstract mixin class _$CaseDiscussionCopyWith<$Res> implements $CaseDiscussionCopyWith<$Res> {
  factory _$CaseDiscussionCopyWith(_CaseDiscussion value, $Res Function(_CaseDiscussion) _then) = __$CaseDiscussionCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, String title, String description, String createdBy, String createdByName, DateTime createdAt, List<DiscussionComment> comments, List<String>? participants, bool? isResolved
});




}
/// @nodoc
class __$CaseDiscussionCopyWithImpl<$Res>
    implements _$CaseDiscussionCopyWith<$Res> {
  __$CaseDiscussionCopyWithImpl(this._self, this._then);

  final _CaseDiscussion _self;
  final $Res Function(_CaseDiscussion) _then;

/// Create a copy of CaseDiscussion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? title = null,Object? description = null,Object? createdBy = null,Object? createdByName = null,Object? createdAt = null,Object? comments = null,Object? participants = freezed,Object? isResolved = freezed,}) {
  return _then(_CaseDiscussion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,createdByName: null == createdByName ? _self.createdByName : createdByName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<DiscussionComment>,participants: freezed == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<String>?,isResolved: freezed == isResolved ? _self.isResolved : isResolved // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$DiscussionComment {

 String get id; String get authorId; String get authorName; String get content; DateTime get postedAt;
/// Create a copy of DiscussionComment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscussionCommentCopyWith<DiscussionComment> get copyWith => _$DiscussionCommentCopyWithImpl<DiscussionComment>(this as DiscussionComment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscussionComment&&(identical(other.id, id) || other.id == id)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.content, content) || other.content == content)&&(identical(other.postedAt, postedAt) || other.postedAt == postedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,authorId,authorName,content,postedAt);

@override
String toString() {
  return 'DiscussionComment(id: $id, authorId: $authorId, authorName: $authorName, content: $content, postedAt: $postedAt)';
}


}

/// @nodoc
abstract mixin class $DiscussionCommentCopyWith<$Res>  {
  factory $DiscussionCommentCopyWith(DiscussionComment value, $Res Function(DiscussionComment) _then) = _$DiscussionCommentCopyWithImpl;
@useResult
$Res call({
 String id, String authorId, String authorName, String content, DateTime postedAt
});




}
/// @nodoc
class _$DiscussionCommentCopyWithImpl<$Res>
    implements $DiscussionCommentCopyWith<$Res> {
  _$DiscussionCommentCopyWithImpl(this._self, this._then);

  final DiscussionComment _self;
  final $Res Function(DiscussionComment) _then;

/// Create a copy of DiscussionComment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? authorId = null,Object? authorName = null,Object? content = null,Object? postedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,postedAt: null == postedAt ? _self.postedAt : postedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DiscussionComment].
extension DiscussionCommentPatterns on DiscussionComment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiscussionComment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiscussionComment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiscussionComment value)  $default,){
final _that = this;
switch (_that) {
case _DiscussionComment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiscussionComment value)?  $default,){
final _that = this;
switch (_that) {
case _DiscussionComment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String authorId,  String authorName,  String content,  DateTime postedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiscussionComment() when $default != null:
return $default(_that.id,_that.authorId,_that.authorName,_that.content,_that.postedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String authorId,  String authorName,  String content,  DateTime postedAt)  $default,) {final _that = this;
switch (_that) {
case _DiscussionComment():
return $default(_that.id,_that.authorId,_that.authorName,_that.content,_that.postedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String authorId,  String authorName,  String content,  DateTime postedAt)?  $default,) {final _that = this;
switch (_that) {
case _DiscussionComment() when $default != null:
return $default(_that.id,_that.authorId,_that.authorName,_that.content,_that.postedAt);case _:
  return null;

}
}

}

/// @nodoc


class _DiscussionComment implements DiscussionComment {
  const _DiscussionComment({required this.id, required this.authorId, required this.authorName, required this.content, required this.postedAt});
  

@override final  String id;
@override final  String authorId;
@override final  String authorName;
@override final  String content;
@override final  DateTime postedAt;

/// Create a copy of DiscussionComment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscussionCommentCopyWith<_DiscussionComment> get copyWith => __$DiscussionCommentCopyWithImpl<_DiscussionComment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiscussionComment&&(identical(other.id, id) || other.id == id)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.content, content) || other.content == content)&&(identical(other.postedAt, postedAt) || other.postedAt == postedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,authorId,authorName,content,postedAt);

@override
String toString() {
  return 'DiscussionComment(id: $id, authorId: $authorId, authorName: $authorName, content: $content, postedAt: $postedAt)';
}


}

/// @nodoc
abstract mixin class _$DiscussionCommentCopyWith<$Res> implements $DiscussionCommentCopyWith<$Res> {
  factory _$DiscussionCommentCopyWith(_DiscussionComment value, $Res Function(_DiscussionComment) _then) = __$DiscussionCommentCopyWithImpl;
@override @useResult
$Res call({
 String id, String authorId, String authorName, String content, DateTime postedAt
});




}
/// @nodoc
class __$DiscussionCommentCopyWithImpl<$Res>
    implements _$DiscussionCommentCopyWith<$Res> {
  __$DiscussionCommentCopyWithImpl(this._self, this._then);

  final _DiscussionComment _self;
  final $Res Function(_DiscussionComment) _then;

/// Create a copy of DiscussionComment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? authorId = null,Object? authorName = null,Object? content = null,Object? postedAt = null,}) {
  return _then(_DiscussionComment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,postedAt: null == postedAt ? _self.postedAt : postedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
