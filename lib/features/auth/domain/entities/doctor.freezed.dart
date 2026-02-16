// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Doctor {

 String get id; String get fhirPractitionerId; String get name; String get email; String? get phone; String? get avatarUrl; List<String> get specializations; String get registrationNumber;// Medical Council registration
 String? get organization; List<String> get facilities;// Old age homes assigned
 bool get isActive; bool get isVerified; double get qualityScore; DateTime? get lastLoginAt; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of Doctor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorCopyWith<Doctor> get copyWith => _$DoctorCopyWithImpl<Doctor>(this as Doctor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Doctor&&(identical(other.id, id) || other.id == id)&&(identical(other.fhirPractitionerId, fhirPractitionerId) || other.fhirPractitionerId == fhirPractitionerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other.specializations, specializations)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.organization, organization) || other.organization == organization)&&const DeepCollectionEquality().equals(other.facilities, facilities)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,fhirPractitionerId,name,email,phone,avatarUrl,const DeepCollectionEquality().hash(specializations),registrationNumber,organization,const DeepCollectionEquality().hash(facilities),isActive,isVerified,qualityScore,lastLoginAt,createdAt,updatedAt);

@override
String toString() {
  return 'Doctor(id: $id, fhirPractitionerId: $fhirPractitionerId, name: $name, email: $email, phone: $phone, avatarUrl: $avatarUrl, specializations: $specializations, registrationNumber: $registrationNumber, organization: $organization, facilities: $facilities, isActive: $isActive, isVerified: $isVerified, qualityScore: $qualityScore, lastLoginAt: $lastLoginAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DoctorCopyWith<$Res>  {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) _then) = _$DoctorCopyWithImpl;
@useResult
$Res call({
 String id, String fhirPractitionerId, String name, String email, String? phone, String? avatarUrl, List<String> specializations, String registrationNumber, String? organization, List<String> facilities, bool isActive, bool isVerified, double qualityScore, DateTime? lastLoginAt, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$DoctorCopyWithImpl<$Res>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._self, this._then);

  final Doctor _self;
  final $Res Function(Doctor) _then;

/// Create a copy of Doctor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fhirPractitionerId = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? avatarUrl = freezed,Object? specializations = null,Object? registrationNumber = null,Object? organization = freezed,Object? facilities = null,Object? isActive = null,Object? isVerified = null,Object? qualityScore = null,Object? lastLoginAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fhirPractitionerId: null == fhirPractitionerId ? _self.fhirPractitionerId : fhirPractitionerId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,specializations: null == specializations ? _self.specializations : specializations // ignore: cast_nullable_to_non_nullable
as List<String>,registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,facilities: null == facilities ? _self.facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<String>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,qualityScore: null == qualityScore ? _self.qualityScore : qualityScore // ignore: cast_nullable_to_non_nullable
as double,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Doctor].
extension DoctorPatterns on Doctor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Doctor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Doctor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Doctor value)  $default,){
final _that = this;
switch (_that) {
case _Doctor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Doctor value)?  $default,){
final _that = this;
switch (_that) {
case _Doctor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fhirPractitionerId,  String name,  String email,  String? phone,  String? avatarUrl,  List<String> specializations,  String registrationNumber,  String? organization,  List<String> facilities,  bool isActive,  bool isVerified,  double qualityScore,  DateTime? lastLoginAt,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Doctor() when $default != null:
return $default(_that.id,_that.fhirPractitionerId,_that.name,_that.email,_that.phone,_that.avatarUrl,_that.specializations,_that.registrationNumber,_that.organization,_that.facilities,_that.isActive,_that.isVerified,_that.qualityScore,_that.lastLoginAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fhirPractitionerId,  String name,  String email,  String? phone,  String? avatarUrl,  List<String> specializations,  String registrationNumber,  String? organization,  List<String> facilities,  bool isActive,  bool isVerified,  double qualityScore,  DateTime? lastLoginAt,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Doctor():
return $default(_that.id,_that.fhirPractitionerId,_that.name,_that.email,_that.phone,_that.avatarUrl,_that.specializations,_that.registrationNumber,_that.organization,_that.facilities,_that.isActive,_that.isVerified,_that.qualityScore,_that.lastLoginAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fhirPractitionerId,  String name,  String email,  String? phone,  String? avatarUrl,  List<String> specializations,  String registrationNumber,  String? organization,  List<String> facilities,  bool isActive,  bool isVerified,  double qualityScore,  DateTime? lastLoginAt,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Doctor() when $default != null:
return $default(_that.id,_that.fhirPractitionerId,_that.name,_that.email,_that.phone,_that.avatarUrl,_that.specializations,_that.registrationNumber,_that.organization,_that.facilities,_that.isActive,_that.isVerified,_that.qualityScore,_that.lastLoginAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Doctor extends Doctor {
  const _Doctor({required this.id, required this.fhirPractitionerId, required this.name, required this.email, this.phone, this.avatarUrl, required final  List<String> specializations, required this.registrationNumber, this.organization, final  List<String> facilities = const [], this.isActive = true, this.isVerified = false, this.qualityScore = 0, this.lastLoginAt, this.createdAt, this.updatedAt}): _specializations = specializations,_facilities = facilities,super._();
  

@override final  String id;
@override final  String fhirPractitionerId;
@override final  String name;
@override final  String email;
@override final  String? phone;
@override final  String? avatarUrl;
 final  List<String> _specializations;
@override List<String> get specializations {
  if (_specializations is EqualUnmodifiableListView) return _specializations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specializations);
}

@override final  String registrationNumber;
// Medical Council registration
@override final  String? organization;
 final  List<String> _facilities;
@override@JsonKey() List<String> get facilities {
  if (_facilities is EqualUnmodifiableListView) return _facilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_facilities);
}

// Old age homes assigned
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  bool isVerified;
@override@JsonKey() final  double qualityScore;
@override final  DateTime? lastLoginAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of Doctor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorCopyWith<_Doctor> get copyWith => __$DoctorCopyWithImpl<_Doctor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Doctor&&(identical(other.id, id) || other.id == id)&&(identical(other.fhirPractitionerId, fhirPractitionerId) || other.fhirPractitionerId == fhirPractitionerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&const DeepCollectionEquality().equals(other._specializations, _specializations)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.organization, organization) || other.organization == organization)&&const DeepCollectionEquality().equals(other._facilities, _facilities)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,fhirPractitionerId,name,email,phone,avatarUrl,const DeepCollectionEquality().hash(_specializations),registrationNumber,organization,const DeepCollectionEquality().hash(_facilities),isActive,isVerified,qualityScore,lastLoginAt,createdAt,updatedAt);

@override
String toString() {
  return 'Doctor(id: $id, fhirPractitionerId: $fhirPractitionerId, name: $name, email: $email, phone: $phone, avatarUrl: $avatarUrl, specializations: $specializations, registrationNumber: $registrationNumber, organization: $organization, facilities: $facilities, isActive: $isActive, isVerified: $isVerified, qualityScore: $qualityScore, lastLoginAt: $lastLoginAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DoctorCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$DoctorCopyWith(_Doctor value, $Res Function(_Doctor) _then) = __$DoctorCopyWithImpl;
@override @useResult
$Res call({
 String id, String fhirPractitionerId, String name, String email, String? phone, String? avatarUrl, List<String> specializations, String registrationNumber, String? organization, List<String> facilities, bool isActive, bool isVerified, double qualityScore, DateTime? lastLoginAt, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$DoctorCopyWithImpl<$Res>
    implements _$DoctorCopyWith<$Res> {
  __$DoctorCopyWithImpl(this._self, this._then);

  final _Doctor _self;
  final $Res Function(_Doctor) _then;

/// Create a copy of Doctor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fhirPractitionerId = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? avatarUrl = freezed,Object? specializations = null,Object? registrationNumber = null,Object? organization = freezed,Object? facilities = null,Object? isActive = null,Object? isVerified = null,Object? qualityScore = null,Object? lastLoginAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Doctor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fhirPractitionerId: null == fhirPractitionerId ? _self.fhirPractitionerId : fhirPractitionerId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,specializations: null == specializations ? _self._specializations : specializations // ignore: cast_nullable_to_non_nullable
as List<String>,registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,facilities: null == facilities ? _self._facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<String>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,qualityScore: null == qualityScore ? _self.qualityScore : qualityScore // ignore: cast_nullable_to_non_nullable
as double,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
