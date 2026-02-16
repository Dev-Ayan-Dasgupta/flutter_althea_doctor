// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FhirPatient {

 String get id; String get resourceType; List<FhirIdentifier> get identifier; bool get active; List<FhirHumanName> get name; List<FhirContactPoint>? get telecom; String? get gender;// male | female | other | unknown
 String? get birthDate;// YYYY-MM-DD
 bool? get deceasedBoolean; String? get deceasedDateTime; List<FhirAddress>? get address; FhirCodeableConcept? get maritalStatus; List<FhirPatientContact>? get contact; FhirReference? get generalPractitioner; FhirReference? get managingOrganization; Map<String, dynamic> get extension_; FhirMeta? get meta;
/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirPatientCopyWith<FhirPatient> get copyWith => _$FhirPatientCopyWithImpl<FhirPatient>(this as FhirPatient, _$identity);

  /// Serializes this FhirPatient to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirPatient&&(identical(other.id, id) || other.id == id)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&const DeepCollectionEquality().equals(other.identifier, identifier)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.name, name)&&const DeepCollectionEquality().equals(other.telecom, telecom)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.deceasedBoolean, deceasedBoolean) || other.deceasedBoolean == deceasedBoolean)&&(identical(other.deceasedDateTime, deceasedDateTime) || other.deceasedDateTime == deceasedDateTime)&&const DeepCollectionEquality().equals(other.address, address)&&(identical(other.maritalStatus, maritalStatus) || other.maritalStatus == maritalStatus)&&const DeepCollectionEquality().equals(other.contact, contact)&&(identical(other.generalPractitioner, generalPractitioner) || other.generalPractitioner == generalPractitioner)&&(identical(other.managingOrganization, managingOrganization) || other.managingOrganization == managingOrganization)&&const DeepCollectionEquality().equals(other.extension_, extension_)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,resourceType,const DeepCollectionEquality().hash(identifier),active,const DeepCollectionEquality().hash(name),const DeepCollectionEquality().hash(telecom),gender,birthDate,deceasedBoolean,deceasedDateTime,const DeepCollectionEquality().hash(address),maritalStatus,const DeepCollectionEquality().hash(contact),generalPractitioner,managingOrganization,const DeepCollectionEquality().hash(extension_),meta);

@override
String toString() {
  return 'FhirPatient(id: $id, resourceType: $resourceType, identifier: $identifier, active: $active, name: $name, telecom: $telecom, gender: $gender, birthDate: $birthDate, deceasedBoolean: $deceasedBoolean, deceasedDateTime: $deceasedDateTime, address: $address, maritalStatus: $maritalStatus, contact: $contact, generalPractitioner: $generalPractitioner, managingOrganization: $managingOrganization, extension_: $extension_, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $FhirPatientCopyWith<$Res>  {
  factory $FhirPatientCopyWith(FhirPatient value, $Res Function(FhirPatient) _then) = _$FhirPatientCopyWithImpl;
@useResult
$Res call({
 String id, String resourceType, List<FhirIdentifier> identifier, bool active, List<FhirHumanName> name, List<FhirContactPoint>? telecom, String? gender, String? birthDate, bool? deceasedBoolean, String? deceasedDateTime, List<FhirAddress>? address, FhirCodeableConcept? maritalStatus, List<FhirPatientContact>? contact, FhirReference? generalPractitioner, FhirReference? managingOrganization, Map<String, dynamic> extension_, FhirMeta? meta
});


$FhirCodeableConceptCopyWith<$Res>? get maritalStatus;$FhirReferenceCopyWith<$Res>? get generalPractitioner;$FhirReferenceCopyWith<$Res>? get managingOrganization;$FhirMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$FhirPatientCopyWithImpl<$Res>
    implements $FhirPatientCopyWith<$Res> {
  _$FhirPatientCopyWithImpl(this._self, this._then);

  final FhirPatient _self;
  final $Res Function(FhirPatient) _then;

/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? resourceType = null,Object? identifier = null,Object? active = null,Object? name = null,Object? telecom = freezed,Object? gender = freezed,Object? birthDate = freezed,Object? deceasedBoolean = freezed,Object? deceasedDateTime = freezed,Object? address = freezed,Object? maritalStatus = freezed,Object? contact = freezed,Object? generalPractitioner = freezed,Object? managingOrganization = freezed,Object? extension_ = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as List<FhirHumanName>,telecom: freezed == telecom ? _self.telecom : telecom // ignore: cast_nullable_to_non_nullable
as List<FhirContactPoint>?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,deceasedBoolean: freezed == deceasedBoolean ? _self.deceasedBoolean : deceasedBoolean // ignore: cast_nullable_to_non_nullable
as bool?,deceasedDateTime: freezed == deceasedDateTime ? _self.deceasedDateTime : deceasedDateTime // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as List<FhirAddress>?,maritalStatus: freezed == maritalStatus ? _self.maritalStatus : maritalStatus // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as List<FhirPatientContact>?,generalPractitioner: freezed == generalPractitioner ? _self.generalPractitioner : generalPractitioner // ignore: cast_nullable_to_non_nullable
as FhirReference?,managingOrganization: freezed == managingOrganization ? _self.managingOrganization : managingOrganization // ignore: cast_nullable_to_non_nullable
as FhirReference?,extension_: null == extension_ ? _self.extension_ : extension_ // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FhirMeta?,
  ));
}
/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get maritalStatus {
    if (_self.maritalStatus == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.maritalStatus!, (value) {
    return _then(_self.copyWith(maritalStatus: value));
  });
}/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get generalPractitioner {
    if (_self.generalPractitioner == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.generalPractitioner!, (value) {
    return _then(_self.copyWith(generalPractitioner: value));
  });
}/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get managingOrganization {
    if (_self.managingOrganization == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.managingOrganization!, (value) {
    return _then(_self.copyWith(managingOrganization: value));
  });
}/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $FhirMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirPatient].
extension FhirPatientPatterns on FhirPatient {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirPatient value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirPatient() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirPatient value)  $default,){
final _that = this;
switch (_that) {
case _FhirPatient():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirPatient value)?  $default,){
final _that = this;
switch (_that) {
case _FhirPatient() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  bool active,  List<FhirHumanName> name,  List<FhirContactPoint>? telecom,  String? gender,  String? birthDate,  bool? deceasedBoolean,  String? deceasedDateTime,  List<FhirAddress>? address,  FhirCodeableConcept? maritalStatus,  List<FhirPatientContact>? contact,  FhirReference? generalPractitioner,  FhirReference? managingOrganization,  Map<String, dynamic> extension_,  FhirMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirPatient() when $default != null:
return $default(_that.id,_that.resourceType,_that.identifier,_that.active,_that.name,_that.telecom,_that.gender,_that.birthDate,_that.deceasedBoolean,_that.deceasedDateTime,_that.address,_that.maritalStatus,_that.contact,_that.generalPractitioner,_that.managingOrganization,_that.extension_,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  bool active,  List<FhirHumanName> name,  List<FhirContactPoint>? telecom,  String? gender,  String? birthDate,  bool? deceasedBoolean,  String? deceasedDateTime,  List<FhirAddress>? address,  FhirCodeableConcept? maritalStatus,  List<FhirPatientContact>? contact,  FhirReference? generalPractitioner,  FhirReference? managingOrganization,  Map<String, dynamic> extension_,  FhirMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _FhirPatient():
return $default(_that.id,_that.resourceType,_that.identifier,_that.active,_that.name,_that.telecom,_that.gender,_that.birthDate,_that.deceasedBoolean,_that.deceasedDateTime,_that.address,_that.maritalStatus,_that.contact,_that.generalPractitioner,_that.managingOrganization,_that.extension_,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  bool active,  List<FhirHumanName> name,  List<FhirContactPoint>? telecom,  String? gender,  String? birthDate,  bool? deceasedBoolean,  String? deceasedDateTime,  List<FhirAddress>? address,  FhirCodeableConcept? maritalStatus,  List<FhirPatientContact>? contact,  FhirReference? generalPractitioner,  FhirReference? managingOrganization,  Map<String, dynamic> extension_,  FhirMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _FhirPatient() when $default != null:
return $default(_that.id,_that.resourceType,_that.identifier,_that.active,_that.name,_that.telecom,_that.gender,_that.birthDate,_that.deceasedBoolean,_that.deceasedDateTime,_that.address,_that.maritalStatus,_that.contact,_that.generalPractitioner,_that.managingOrganization,_that.extension_,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirPatient implements FhirPatient {
  const _FhirPatient({required this.id, required this.resourceType, final  List<FhirIdentifier> identifier = const [], required this.active, required final  List<FhirHumanName> name, final  List<FhirContactPoint>? telecom, this.gender, this.birthDate, this.deceasedBoolean, this.deceasedDateTime, final  List<FhirAddress>? address, this.maritalStatus, final  List<FhirPatientContact>? contact, this.generalPractitioner, this.managingOrganization, final  Map<String, dynamic> extension_ = const {}, this.meta}): _identifier = identifier,_name = name,_telecom = telecom,_address = address,_contact = contact,_extension_ = extension_;
  factory _FhirPatient.fromJson(Map<String, dynamic> json) => _$FhirPatientFromJson(json);

@override final  String id;
@override final  String resourceType;
 final  List<FhirIdentifier> _identifier;
@override@JsonKey() List<FhirIdentifier> get identifier {
  if (_identifier is EqualUnmodifiableListView) return _identifier;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_identifier);
}

@override final  bool active;
 final  List<FhirHumanName> _name;
@override List<FhirHumanName> get name {
  if (_name is EqualUnmodifiableListView) return _name;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_name);
}

 final  List<FhirContactPoint>? _telecom;
@override List<FhirContactPoint>? get telecom {
  final value = _telecom;
  if (value == null) return null;
  if (_telecom is EqualUnmodifiableListView) return _telecom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? gender;
// male | female | other | unknown
@override final  String? birthDate;
// YYYY-MM-DD
@override final  bool? deceasedBoolean;
@override final  String? deceasedDateTime;
 final  List<FhirAddress>? _address;
@override List<FhirAddress>? get address {
  final value = _address;
  if (value == null) return null;
  if (_address is EqualUnmodifiableListView) return _address;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  FhirCodeableConcept? maritalStatus;
 final  List<FhirPatientContact>? _contact;
@override List<FhirPatientContact>? get contact {
  final value = _contact;
  if (value == null) return null;
  if (_contact is EqualUnmodifiableListView) return _contact;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  FhirReference? generalPractitioner;
@override final  FhirReference? managingOrganization;
 final  Map<String, dynamic> _extension_;
@override@JsonKey() Map<String, dynamic> get extension_ {
  if (_extension_ is EqualUnmodifiableMapView) return _extension_;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extension_);
}

@override final  FhirMeta? meta;

/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirPatientCopyWith<_FhirPatient> get copyWith => __$FhirPatientCopyWithImpl<_FhirPatient>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirPatientToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirPatient&&(identical(other.id, id) || other.id == id)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&const DeepCollectionEquality().equals(other._identifier, _identifier)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._name, _name)&&const DeepCollectionEquality().equals(other._telecom, _telecom)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.deceasedBoolean, deceasedBoolean) || other.deceasedBoolean == deceasedBoolean)&&(identical(other.deceasedDateTime, deceasedDateTime) || other.deceasedDateTime == deceasedDateTime)&&const DeepCollectionEquality().equals(other._address, _address)&&(identical(other.maritalStatus, maritalStatus) || other.maritalStatus == maritalStatus)&&const DeepCollectionEquality().equals(other._contact, _contact)&&(identical(other.generalPractitioner, generalPractitioner) || other.generalPractitioner == generalPractitioner)&&(identical(other.managingOrganization, managingOrganization) || other.managingOrganization == managingOrganization)&&const DeepCollectionEquality().equals(other._extension_, _extension_)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,resourceType,const DeepCollectionEquality().hash(_identifier),active,const DeepCollectionEquality().hash(_name),const DeepCollectionEquality().hash(_telecom),gender,birthDate,deceasedBoolean,deceasedDateTime,const DeepCollectionEquality().hash(_address),maritalStatus,const DeepCollectionEquality().hash(_contact),generalPractitioner,managingOrganization,const DeepCollectionEquality().hash(_extension_),meta);

@override
String toString() {
  return 'FhirPatient(id: $id, resourceType: $resourceType, identifier: $identifier, active: $active, name: $name, telecom: $telecom, gender: $gender, birthDate: $birthDate, deceasedBoolean: $deceasedBoolean, deceasedDateTime: $deceasedDateTime, address: $address, maritalStatus: $maritalStatus, contact: $contact, generalPractitioner: $generalPractitioner, managingOrganization: $managingOrganization, extension_: $extension_, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$FhirPatientCopyWith<$Res> implements $FhirPatientCopyWith<$Res> {
  factory _$FhirPatientCopyWith(_FhirPatient value, $Res Function(_FhirPatient) _then) = __$FhirPatientCopyWithImpl;
@override @useResult
$Res call({
 String id, String resourceType, List<FhirIdentifier> identifier, bool active, List<FhirHumanName> name, List<FhirContactPoint>? telecom, String? gender, String? birthDate, bool? deceasedBoolean, String? deceasedDateTime, List<FhirAddress>? address, FhirCodeableConcept? maritalStatus, List<FhirPatientContact>? contact, FhirReference? generalPractitioner, FhirReference? managingOrganization, Map<String, dynamic> extension_, FhirMeta? meta
});


@override $FhirCodeableConceptCopyWith<$Res>? get maritalStatus;@override $FhirReferenceCopyWith<$Res>? get generalPractitioner;@override $FhirReferenceCopyWith<$Res>? get managingOrganization;@override $FhirMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$FhirPatientCopyWithImpl<$Res>
    implements _$FhirPatientCopyWith<$Res> {
  __$FhirPatientCopyWithImpl(this._self, this._then);

  final _FhirPatient _self;
  final $Res Function(_FhirPatient) _then;

/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? resourceType = null,Object? identifier = null,Object? active = null,Object? name = null,Object? telecom = freezed,Object? gender = freezed,Object? birthDate = freezed,Object? deceasedBoolean = freezed,Object? deceasedDateTime = freezed,Object? address = freezed,Object? maritalStatus = freezed,Object? contact = freezed,Object? generalPractitioner = freezed,Object? managingOrganization = freezed,Object? extension_ = null,Object? meta = freezed,}) {
  return _then(_FhirPatient(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self._identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self._name : name // ignore: cast_nullable_to_non_nullable
as List<FhirHumanName>,telecom: freezed == telecom ? _self._telecom : telecom // ignore: cast_nullable_to_non_nullable
as List<FhirContactPoint>?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,deceasedBoolean: freezed == deceasedBoolean ? _self.deceasedBoolean : deceasedBoolean // ignore: cast_nullable_to_non_nullable
as bool?,deceasedDateTime: freezed == deceasedDateTime ? _self.deceasedDateTime : deceasedDateTime // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self._address : address // ignore: cast_nullable_to_non_nullable
as List<FhirAddress>?,maritalStatus: freezed == maritalStatus ? _self.maritalStatus : maritalStatus // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,contact: freezed == contact ? _self._contact : contact // ignore: cast_nullable_to_non_nullable
as List<FhirPatientContact>?,generalPractitioner: freezed == generalPractitioner ? _self.generalPractitioner : generalPractitioner // ignore: cast_nullable_to_non_nullable
as FhirReference?,managingOrganization: freezed == managingOrganization ? _self.managingOrganization : managingOrganization // ignore: cast_nullable_to_non_nullable
as FhirReference?,extension_: null == extension_ ? _self._extension_ : extension_ // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FhirMeta?,
  ));
}

/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get maritalStatus {
    if (_self.maritalStatus == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.maritalStatus!, (value) {
    return _then(_self.copyWith(maritalStatus: value));
  });
}/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get generalPractitioner {
    if (_self.generalPractitioner == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.generalPractitioner!, (value) {
    return _then(_self.copyWith(generalPractitioner: value));
  });
}/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get managingOrganization {
    if (_self.managingOrganization == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.managingOrganization!, (value) {
    return _then(_self.copyWith(managingOrganization: value));
  });
}/// Create a copy of FhirPatient
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $FhirMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$FhirIdentifier {

 String? get use;// usual | official | temp | secondary
 FhirCodeableConcept? get type; String? get system;// ABDM, ABHA, etc.
 String get value; FhirPeriod? get period; FhirReference? get assigner;
/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirIdentifierCopyWith<FhirIdentifier> get copyWith => _$FhirIdentifierCopyWithImpl<FhirIdentifier>(this as FhirIdentifier, _$identity);

  /// Serializes this FhirIdentifier to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirIdentifier&&(identical(other.use, use) || other.use == use)&&(identical(other.type, type) || other.type == type)&&(identical(other.system, system) || other.system == system)&&(identical(other.value, value) || other.value == value)&&(identical(other.period, period) || other.period == period)&&(identical(other.assigner, assigner) || other.assigner == assigner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,use,type,system,value,period,assigner);

@override
String toString() {
  return 'FhirIdentifier(use: $use, type: $type, system: $system, value: $value, period: $period, assigner: $assigner)';
}


}

/// @nodoc
abstract mixin class $FhirIdentifierCopyWith<$Res>  {
  factory $FhirIdentifierCopyWith(FhirIdentifier value, $Res Function(FhirIdentifier) _then) = _$FhirIdentifierCopyWithImpl;
@useResult
$Res call({
 String? use, FhirCodeableConcept? type, String? system, String value, FhirPeriod? period, FhirReference? assigner
});


$FhirCodeableConceptCopyWith<$Res>? get type;$FhirPeriodCopyWith<$Res>? get period;$FhirReferenceCopyWith<$Res>? get assigner;

}
/// @nodoc
class _$FhirIdentifierCopyWithImpl<$Res>
    implements $FhirIdentifierCopyWith<$Res> {
  _$FhirIdentifierCopyWithImpl(this._self, this._then);

  final FhirIdentifier _self;
  final $Res Function(FhirIdentifier) _then;

/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? use = freezed,Object? type = freezed,Object? system = freezed,Object? value = null,Object? period = freezed,Object? assigner = freezed,}) {
  return _then(_self.copyWith(
use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,assigner: freezed == assigner ? _self.assigner : assigner // ignore: cast_nullable_to_non_nullable
as FhirReference?,
  ));
}
/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get assigner {
    if (_self.assigner == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.assigner!, (value) {
    return _then(_self.copyWith(assigner: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirIdentifier].
extension FhirIdentifierPatterns on FhirIdentifier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirIdentifier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirIdentifier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirIdentifier value)  $default,){
final _that = this;
switch (_that) {
case _FhirIdentifier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirIdentifier value)?  $default,){
final _that = this;
switch (_that) {
case _FhirIdentifier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? use,  FhirCodeableConcept? type,  String? system,  String value,  FhirPeriod? period,  FhirReference? assigner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirIdentifier() when $default != null:
return $default(_that.use,_that.type,_that.system,_that.value,_that.period,_that.assigner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? use,  FhirCodeableConcept? type,  String? system,  String value,  FhirPeriod? period,  FhirReference? assigner)  $default,) {final _that = this;
switch (_that) {
case _FhirIdentifier():
return $default(_that.use,_that.type,_that.system,_that.value,_that.period,_that.assigner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? use,  FhirCodeableConcept? type,  String? system,  String value,  FhirPeriod? period,  FhirReference? assigner)?  $default,) {final _that = this;
switch (_that) {
case _FhirIdentifier() when $default != null:
return $default(_that.use,_that.type,_that.system,_that.value,_that.period,_that.assigner);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirIdentifier implements FhirIdentifier {
  const _FhirIdentifier({this.use, this.type, this.system, required this.value, this.period, this.assigner});
  factory _FhirIdentifier.fromJson(Map<String, dynamic> json) => _$FhirIdentifierFromJson(json);

@override final  String? use;
// usual | official | temp | secondary
@override final  FhirCodeableConcept? type;
@override final  String? system;
// ABDM, ABHA, etc.
@override final  String value;
@override final  FhirPeriod? period;
@override final  FhirReference? assigner;

/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirIdentifierCopyWith<_FhirIdentifier> get copyWith => __$FhirIdentifierCopyWithImpl<_FhirIdentifier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirIdentifierToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirIdentifier&&(identical(other.use, use) || other.use == use)&&(identical(other.type, type) || other.type == type)&&(identical(other.system, system) || other.system == system)&&(identical(other.value, value) || other.value == value)&&(identical(other.period, period) || other.period == period)&&(identical(other.assigner, assigner) || other.assigner == assigner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,use,type,system,value,period,assigner);

@override
String toString() {
  return 'FhirIdentifier(use: $use, type: $type, system: $system, value: $value, period: $period, assigner: $assigner)';
}


}

/// @nodoc
abstract mixin class _$FhirIdentifierCopyWith<$Res> implements $FhirIdentifierCopyWith<$Res> {
  factory _$FhirIdentifierCopyWith(_FhirIdentifier value, $Res Function(_FhirIdentifier) _then) = __$FhirIdentifierCopyWithImpl;
@override @useResult
$Res call({
 String? use, FhirCodeableConcept? type, String? system, String value, FhirPeriod? period, FhirReference? assigner
});


@override $FhirCodeableConceptCopyWith<$Res>? get type;@override $FhirPeriodCopyWith<$Res>? get period;@override $FhirReferenceCopyWith<$Res>? get assigner;

}
/// @nodoc
class __$FhirIdentifierCopyWithImpl<$Res>
    implements _$FhirIdentifierCopyWith<$Res> {
  __$FhirIdentifierCopyWithImpl(this._self, this._then);

  final _FhirIdentifier _self;
  final $Res Function(_FhirIdentifier) _then;

/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? use = freezed,Object? type = freezed,Object? system = freezed,Object? value = null,Object? period = freezed,Object? assigner = freezed,}) {
  return _then(_FhirIdentifier(
use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,assigner: freezed == assigner ? _self.assigner : assigner // ignore: cast_nullable_to_non_nullable
as FhirReference?,
  ));
}

/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of FhirIdentifier
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get assigner {
    if (_self.assigner == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.assigner!, (value) {
    return _then(_self.copyWith(assigner: value));
  });
}
}


/// @nodoc
mixin _$FhirHumanName {

 String? get use;// usual | official | temp | nickname | anonymous | old | maiden
 String? get text; String? get family; List<String> get given; List<String> get prefix; List<String> get suffix; FhirPeriod? get period;
/// Create a copy of FhirHumanName
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirHumanNameCopyWith<FhirHumanName> get copyWith => _$FhirHumanNameCopyWithImpl<FhirHumanName>(this as FhirHumanName, _$identity);

  /// Serializes this FhirHumanName to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirHumanName&&(identical(other.use, use) || other.use == use)&&(identical(other.text, text) || other.text == text)&&(identical(other.family, family) || other.family == family)&&const DeepCollectionEquality().equals(other.given, given)&&const DeepCollectionEquality().equals(other.prefix, prefix)&&const DeepCollectionEquality().equals(other.suffix, suffix)&&(identical(other.period, period) || other.period == period));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,use,text,family,const DeepCollectionEquality().hash(given),const DeepCollectionEquality().hash(prefix),const DeepCollectionEquality().hash(suffix),period);

@override
String toString() {
  return 'FhirHumanName(use: $use, text: $text, family: $family, given: $given, prefix: $prefix, suffix: $suffix, period: $period)';
}


}

/// @nodoc
abstract mixin class $FhirHumanNameCopyWith<$Res>  {
  factory $FhirHumanNameCopyWith(FhirHumanName value, $Res Function(FhirHumanName) _then) = _$FhirHumanNameCopyWithImpl;
@useResult
$Res call({
 String? use, String? text, String? family, List<String> given, List<String> prefix, List<String> suffix, FhirPeriod? period
});


$FhirPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class _$FhirHumanNameCopyWithImpl<$Res>
    implements $FhirHumanNameCopyWith<$Res> {
  _$FhirHumanNameCopyWithImpl(this._self, this._then);

  final FhirHumanName _self;
  final $Res Function(FhirHumanName) _then;

/// Create a copy of FhirHumanName
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? use = freezed,Object? text = freezed,Object? family = freezed,Object? given = null,Object? prefix = null,Object? suffix = null,Object? period = freezed,}) {
  return _then(_self.copyWith(
use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,family: freezed == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String?,given: null == given ? _self.given : given // ignore: cast_nullable_to_non_nullable
as List<String>,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as List<String>,suffix: null == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as List<String>,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,
  ));
}
/// Create a copy of FhirHumanName
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirHumanName].
extension FhirHumanNamePatterns on FhirHumanName {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirHumanName value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirHumanName() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirHumanName value)  $default,){
final _that = this;
switch (_that) {
case _FhirHumanName():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirHumanName value)?  $default,){
final _that = this;
switch (_that) {
case _FhirHumanName() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? use,  String? text,  String? family,  List<String> given,  List<String> prefix,  List<String> suffix,  FhirPeriod? period)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirHumanName() when $default != null:
return $default(_that.use,_that.text,_that.family,_that.given,_that.prefix,_that.suffix,_that.period);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? use,  String? text,  String? family,  List<String> given,  List<String> prefix,  List<String> suffix,  FhirPeriod? period)  $default,) {final _that = this;
switch (_that) {
case _FhirHumanName():
return $default(_that.use,_that.text,_that.family,_that.given,_that.prefix,_that.suffix,_that.period);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? use,  String? text,  String? family,  List<String> given,  List<String> prefix,  List<String> suffix,  FhirPeriod? period)?  $default,) {final _that = this;
switch (_that) {
case _FhirHumanName() when $default != null:
return $default(_that.use,_that.text,_that.family,_that.given,_that.prefix,_that.suffix,_that.period);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirHumanName implements FhirHumanName {
  const _FhirHumanName({this.use, this.text, this.family, final  List<String> given = const [], final  List<String> prefix = const [], final  List<String> suffix = const [], this.period}): _given = given,_prefix = prefix,_suffix = suffix;
  factory _FhirHumanName.fromJson(Map<String, dynamic> json) => _$FhirHumanNameFromJson(json);

@override final  String? use;
// usual | official | temp | nickname | anonymous | old | maiden
@override final  String? text;
@override final  String? family;
 final  List<String> _given;
@override@JsonKey() List<String> get given {
  if (_given is EqualUnmodifiableListView) return _given;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_given);
}

 final  List<String> _prefix;
@override@JsonKey() List<String> get prefix {
  if (_prefix is EqualUnmodifiableListView) return _prefix;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prefix);
}

 final  List<String> _suffix;
@override@JsonKey() List<String> get suffix {
  if (_suffix is EqualUnmodifiableListView) return _suffix;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suffix);
}

@override final  FhirPeriod? period;

/// Create a copy of FhirHumanName
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirHumanNameCopyWith<_FhirHumanName> get copyWith => __$FhirHumanNameCopyWithImpl<_FhirHumanName>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirHumanNameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirHumanName&&(identical(other.use, use) || other.use == use)&&(identical(other.text, text) || other.text == text)&&(identical(other.family, family) || other.family == family)&&const DeepCollectionEquality().equals(other._given, _given)&&const DeepCollectionEquality().equals(other._prefix, _prefix)&&const DeepCollectionEquality().equals(other._suffix, _suffix)&&(identical(other.period, period) || other.period == period));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,use,text,family,const DeepCollectionEquality().hash(_given),const DeepCollectionEquality().hash(_prefix),const DeepCollectionEquality().hash(_suffix),period);

@override
String toString() {
  return 'FhirHumanName(use: $use, text: $text, family: $family, given: $given, prefix: $prefix, suffix: $suffix, period: $period)';
}


}

/// @nodoc
abstract mixin class _$FhirHumanNameCopyWith<$Res> implements $FhirHumanNameCopyWith<$Res> {
  factory _$FhirHumanNameCopyWith(_FhirHumanName value, $Res Function(_FhirHumanName) _then) = __$FhirHumanNameCopyWithImpl;
@override @useResult
$Res call({
 String? use, String? text, String? family, List<String> given, List<String> prefix, List<String> suffix, FhirPeriod? period
});


@override $FhirPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class __$FhirHumanNameCopyWithImpl<$Res>
    implements _$FhirHumanNameCopyWith<$Res> {
  __$FhirHumanNameCopyWithImpl(this._self, this._then);

  final _FhirHumanName _self;
  final $Res Function(_FhirHumanName) _then;

/// Create a copy of FhirHumanName
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? use = freezed,Object? text = freezed,Object? family = freezed,Object? given = null,Object? prefix = null,Object? suffix = null,Object? period = freezed,}) {
  return _then(_FhirHumanName(
use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,family: freezed == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String?,given: null == given ? _self._given : given // ignore: cast_nullable_to_non_nullable
as List<String>,prefix: null == prefix ? _self._prefix : prefix // ignore: cast_nullable_to_non_nullable
as List<String>,suffix: null == suffix ? _self._suffix : suffix // ignore: cast_nullable_to_non_nullable
as List<String>,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,
  ));
}

/// Create a copy of FhirHumanName
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// @nodoc
mixin _$FhirContactPoint {

 String? get system;// phone | fax | email | pager | url | sms | other
 String? get value; String? get use;// home | work | temp | old | mobile
 int? get rank; FhirPeriod? get period;
/// Create a copy of FhirContactPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirContactPointCopyWith<FhirContactPoint> get copyWith => _$FhirContactPointCopyWithImpl<FhirContactPoint>(this as FhirContactPoint, _$identity);

  /// Serializes this FhirContactPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirContactPoint&&(identical(other.system, system) || other.system == system)&&(identical(other.value, value) || other.value == value)&&(identical(other.use, use) || other.use == use)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.period, period) || other.period == period));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,system,value,use,rank,period);

@override
String toString() {
  return 'FhirContactPoint(system: $system, value: $value, use: $use, rank: $rank, period: $period)';
}


}

/// @nodoc
abstract mixin class $FhirContactPointCopyWith<$Res>  {
  factory $FhirContactPointCopyWith(FhirContactPoint value, $Res Function(FhirContactPoint) _then) = _$FhirContactPointCopyWithImpl;
@useResult
$Res call({
 String? system, String? value, String? use, int? rank, FhirPeriod? period
});


$FhirPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class _$FhirContactPointCopyWithImpl<$Res>
    implements $FhirContactPointCopyWith<$Res> {
  _$FhirContactPointCopyWithImpl(this._self, this._then);

  final FhirContactPoint _self;
  final $Res Function(FhirContactPoint) _then;

/// Create a copy of FhirContactPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? system = freezed,Object? value = freezed,Object? use = freezed,Object? rank = freezed,Object? period = freezed,}) {
  return _then(_self.copyWith(
system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,
  ));
}
/// Create a copy of FhirContactPoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirContactPoint].
extension FhirContactPointPatterns on FhirContactPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirContactPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirContactPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirContactPoint value)  $default,){
final _that = this;
switch (_that) {
case _FhirContactPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirContactPoint value)?  $default,){
final _that = this;
switch (_that) {
case _FhirContactPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? system,  String? value,  String? use,  int? rank,  FhirPeriod? period)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirContactPoint() when $default != null:
return $default(_that.system,_that.value,_that.use,_that.rank,_that.period);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? system,  String? value,  String? use,  int? rank,  FhirPeriod? period)  $default,) {final _that = this;
switch (_that) {
case _FhirContactPoint():
return $default(_that.system,_that.value,_that.use,_that.rank,_that.period);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? system,  String? value,  String? use,  int? rank,  FhirPeriod? period)?  $default,) {final _that = this;
switch (_that) {
case _FhirContactPoint() when $default != null:
return $default(_that.system,_that.value,_that.use,_that.rank,_that.period);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirContactPoint implements FhirContactPoint {
  const _FhirContactPoint({this.system, this.value, this.use, this.rank, this.period});
  factory _FhirContactPoint.fromJson(Map<String, dynamic> json) => _$FhirContactPointFromJson(json);

@override final  String? system;
// phone | fax | email | pager | url | sms | other
@override final  String? value;
@override final  String? use;
// home | work | temp | old | mobile
@override final  int? rank;
@override final  FhirPeriod? period;

/// Create a copy of FhirContactPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirContactPointCopyWith<_FhirContactPoint> get copyWith => __$FhirContactPointCopyWithImpl<_FhirContactPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirContactPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirContactPoint&&(identical(other.system, system) || other.system == system)&&(identical(other.value, value) || other.value == value)&&(identical(other.use, use) || other.use == use)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.period, period) || other.period == period));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,system,value,use,rank,period);

@override
String toString() {
  return 'FhirContactPoint(system: $system, value: $value, use: $use, rank: $rank, period: $period)';
}


}

/// @nodoc
abstract mixin class _$FhirContactPointCopyWith<$Res> implements $FhirContactPointCopyWith<$Res> {
  factory _$FhirContactPointCopyWith(_FhirContactPoint value, $Res Function(_FhirContactPoint) _then) = __$FhirContactPointCopyWithImpl;
@override @useResult
$Res call({
 String? system, String? value, String? use, int? rank, FhirPeriod? period
});


@override $FhirPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class __$FhirContactPointCopyWithImpl<$Res>
    implements _$FhirContactPointCopyWith<$Res> {
  __$FhirContactPointCopyWithImpl(this._self, this._then);

  final _FhirContactPoint _self;
  final $Res Function(_FhirContactPoint) _then;

/// Create a copy of FhirContactPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? system = freezed,Object? value = freezed,Object? use = freezed,Object? rank = freezed,Object? period = freezed,}) {
  return _then(_FhirContactPoint(
system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,
  ));
}

/// Create a copy of FhirContactPoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// @nodoc
mixin _$FhirAddress {

 String? get use;// home | work | temp | old | billing
 String? get type;// postal | physical | both
 String? get text; List<String> get line; String? get city; String? get district; String? get state; String? get postalCode; String? get country; FhirPeriod? get period;
/// Create a copy of FhirAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirAddressCopyWith<FhirAddress> get copyWith => _$FhirAddressCopyWithImpl<FhirAddress>(this as FhirAddress, _$identity);

  /// Serializes this FhirAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirAddress&&(identical(other.use, use) || other.use == use)&&(identical(other.type, type) || other.type == type)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.line, line)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.state, state) || other.state == state)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.period, period) || other.period == period));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,use,type,text,const DeepCollectionEquality().hash(line),city,district,state,postalCode,country,period);

@override
String toString() {
  return 'FhirAddress(use: $use, type: $type, text: $text, line: $line, city: $city, district: $district, state: $state, postalCode: $postalCode, country: $country, period: $period)';
}


}

/// @nodoc
abstract mixin class $FhirAddressCopyWith<$Res>  {
  factory $FhirAddressCopyWith(FhirAddress value, $Res Function(FhirAddress) _then) = _$FhirAddressCopyWithImpl;
@useResult
$Res call({
 String? use, String? type, String? text, List<String> line, String? city, String? district, String? state, String? postalCode, String? country, FhirPeriod? period
});


$FhirPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class _$FhirAddressCopyWithImpl<$Res>
    implements $FhirAddressCopyWith<$Res> {
  _$FhirAddressCopyWithImpl(this._self, this._then);

  final FhirAddress _self;
  final $Res Function(FhirAddress) _then;

/// Create a copy of FhirAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? use = freezed,Object? type = freezed,Object? text = freezed,Object? line = null,Object? city = freezed,Object? district = freezed,Object? state = freezed,Object? postalCode = freezed,Object? country = freezed,Object? period = freezed,}) {
  return _then(_self.copyWith(
use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,line: null == line ? _self.line : line // ignore: cast_nullable_to_non_nullable
as List<String>,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,
  ));
}
/// Create a copy of FhirAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirAddress].
extension FhirAddressPatterns on FhirAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirAddress value)  $default,){
final _that = this;
switch (_that) {
case _FhirAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirAddress value)?  $default,){
final _that = this;
switch (_that) {
case _FhirAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? use,  String? type,  String? text,  List<String> line,  String? city,  String? district,  String? state,  String? postalCode,  String? country,  FhirPeriod? period)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirAddress() when $default != null:
return $default(_that.use,_that.type,_that.text,_that.line,_that.city,_that.district,_that.state,_that.postalCode,_that.country,_that.period);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? use,  String? type,  String? text,  List<String> line,  String? city,  String? district,  String? state,  String? postalCode,  String? country,  FhirPeriod? period)  $default,) {final _that = this;
switch (_that) {
case _FhirAddress():
return $default(_that.use,_that.type,_that.text,_that.line,_that.city,_that.district,_that.state,_that.postalCode,_that.country,_that.period);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? use,  String? type,  String? text,  List<String> line,  String? city,  String? district,  String? state,  String? postalCode,  String? country,  FhirPeriod? period)?  $default,) {final _that = this;
switch (_that) {
case _FhirAddress() when $default != null:
return $default(_that.use,_that.type,_that.text,_that.line,_that.city,_that.district,_that.state,_that.postalCode,_that.country,_that.period);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirAddress implements FhirAddress {
  const _FhirAddress({this.use, this.type, this.text, final  List<String> line = const [], this.city, this.district, this.state, this.postalCode, this.country, this.period}): _line = line;
  factory _FhirAddress.fromJson(Map<String, dynamic> json) => _$FhirAddressFromJson(json);

@override final  String? use;
// home | work | temp | old | billing
@override final  String? type;
// postal | physical | both
@override final  String? text;
 final  List<String> _line;
@override@JsonKey() List<String> get line {
  if (_line is EqualUnmodifiableListView) return _line;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_line);
}

@override final  String? city;
@override final  String? district;
@override final  String? state;
@override final  String? postalCode;
@override final  String? country;
@override final  FhirPeriod? period;

/// Create a copy of FhirAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirAddressCopyWith<_FhirAddress> get copyWith => __$FhirAddressCopyWithImpl<_FhirAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirAddress&&(identical(other.use, use) || other.use == use)&&(identical(other.type, type) || other.type == type)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._line, _line)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.state, state) || other.state == state)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.period, period) || other.period == period));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,use,type,text,const DeepCollectionEquality().hash(_line),city,district,state,postalCode,country,period);

@override
String toString() {
  return 'FhirAddress(use: $use, type: $type, text: $text, line: $line, city: $city, district: $district, state: $state, postalCode: $postalCode, country: $country, period: $period)';
}


}

/// @nodoc
abstract mixin class _$FhirAddressCopyWith<$Res> implements $FhirAddressCopyWith<$Res> {
  factory _$FhirAddressCopyWith(_FhirAddress value, $Res Function(_FhirAddress) _then) = __$FhirAddressCopyWithImpl;
@override @useResult
$Res call({
 String? use, String? type, String? text, List<String> line, String? city, String? district, String? state, String? postalCode, String? country, FhirPeriod? period
});


@override $FhirPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class __$FhirAddressCopyWithImpl<$Res>
    implements _$FhirAddressCopyWith<$Res> {
  __$FhirAddressCopyWithImpl(this._self, this._then);

  final _FhirAddress _self;
  final $Res Function(_FhirAddress) _then;

/// Create a copy of FhirAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? use = freezed,Object? type = freezed,Object? text = freezed,Object? line = null,Object? city = freezed,Object? district = freezed,Object? state = freezed,Object? postalCode = freezed,Object? country = freezed,Object? period = freezed,}) {
  return _then(_FhirAddress(
use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,line: null == line ? _self._line : line // ignore: cast_nullable_to_non_nullable
as List<String>,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,
  ));
}

/// Create a copy of FhirAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// @nodoc
mixin _$FhirPeriod {

 String? get start;// DateTime
 String? get end;
/// Create a copy of FhirPeriod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<FhirPeriod> get copyWith => _$FhirPeriodCopyWithImpl<FhirPeriod>(this as FhirPeriod, _$identity);

  /// Serializes this FhirPeriod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirPeriod&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'FhirPeriod(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $FhirPeriodCopyWith<$Res>  {
  factory $FhirPeriodCopyWith(FhirPeriod value, $Res Function(FhirPeriod) _then) = _$FhirPeriodCopyWithImpl;
@useResult
$Res call({
 String? start, String? end
});




}
/// @nodoc
class _$FhirPeriodCopyWithImpl<$Res>
    implements $FhirPeriodCopyWith<$Res> {
  _$FhirPeriodCopyWithImpl(this._self, this._then);

  final FhirPeriod _self;
  final $Res Function(FhirPeriod) _then;

/// Create a copy of FhirPeriod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? end = freezed,}) {
  return _then(_self.copyWith(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FhirPeriod].
extension FhirPeriodPatterns on FhirPeriod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirPeriod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirPeriod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirPeriod value)  $default,){
final _that = this;
switch (_that) {
case _FhirPeriod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirPeriod value)?  $default,){
final _that = this;
switch (_that) {
case _FhirPeriod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? start,  String? end)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirPeriod() when $default != null:
return $default(_that.start,_that.end);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? start,  String? end)  $default,) {final _that = this;
switch (_that) {
case _FhirPeriod():
return $default(_that.start,_that.end);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? start,  String? end)?  $default,) {final _that = this;
switch (_that) {
case _FhirPeriod() when $default != null:
return $default(_that.start,_that.end);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirPeriod implements FhirPeriod {
  const _FhirPeriod({this.start, this.end});
  factory _FhirPeriod.fromJson(Map<String, dynamic> json) => _$FhirPeriodFromJson(json);

@override final  String? start;
// DateTime
@override final  String? end;

/// Create a copy of FhirPeriod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirPeriodCopyWith<_FhirPeriod> get copyWith => __$FhirPeriodCopyWithImpl<_FhirPeriod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirPeriodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirPeriod&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'FhirPeriod(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class _$FhirPeriodCopyWith<$Res> implements $FhirPeriodCopyWith<$Res> {
  factory _$FhirPeriodCopyWith(_FhirPeriod value, $Res Function(_FhirPeriod) _then) = __$FhirPeriodCopyWithImpl;
@override @useResult
$Res call({
 String? start, String? end
});




}
/// @nodoc
class __$FhirPeriodCopyWithImpl<$Res>
    implements _$FhirPeriodCopyWith<$Res> {
  __$FhirPeriodCopyWithImpl(this._self, this._then);

  final _FhirPeriod _self;
  final $Res Function(_FhirPeriod) _then;

/// Create a copy of FhirPeriod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = freezed,Object? end = freezed,}) {
  return _then(_FhirPeriod(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FhirCodeableConcept {

 List<FhirCoding> get coding; String? get text;
/// Create a copy of FhirCodeableConcept
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<FhirCodeableConcept> get copyWith => _$FhirCodeableConceptCopyWithImpl<FhirCodeableConcept>(this as FhirCodeableConcept, _$identity);

  /// Serializes this FhirCodeableConcept to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirCodeableConcept&&const DeepCollectionEquality().equals(other.coding, coding)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(coding),text);

@override
String toString() {
  return 'FhirCodeableConcept(coding: $coding, text: $text)';
}


}

/// @nodoc
abstract mixin class $FhirCodeableConceptCopyWith<$Res>  {
  factory $FhirCodeableConceptCopyWith(FhirCodeableConcept value, $Res Function(FhirCodeableConcept) _then) = _$FhirCodeableConceptCopyWithImpl;
@useResult
$Res call({
 List<FhirCoding> coding, String? text
});




}
/// @nodoc
class _$FhirCodeableConceptCopyWithImpl<$Res>
    implements $FhirCodeableConceptCopyWith<$Res> {
  _$FhirCodeableConceptCopyWithImpl(this._self, this._then);

  final FhirCodeableConcept _self;
  final $Res Function(FhirCodeableConcept) _then;

/// Create a copy of FhirCodeableConcept
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coding = null,Object? text = freezed,}) {
  return _then(_self.copyWith(
coding: null == coding ? _self.coding : coding // ignore: cast_nullable_to_non_nullable
as List<FhirCoding>,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FhirCodeableConcept].
extension FhirCodeableConceptPatterns on FhirCodeableConcept {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirCodeableConcept value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirCodeableConcept() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirCodeableConcept value)  $default,){
final _that = this;
switch (_that) {
case _FhirCodeableConcept():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirCodeableConcept value)?  $default,){
final _that = this;
switch (_that) {
case _FhirCodeableConcept() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FhirCoding> coding,  String? text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirCodeableConcept() when $default != null:
return $default(_that.coding,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FhirCoding> coding,  String? text)  $default,) {final _that = this;
switch (_that) {
case _FhirCodeableConcept():
return $default(_that.coding,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FhirCoding> coding,  String? text)?  $default,) {final _that = this;
switch (_that) {
case _FhirCodeableConcept() when $default != null:
return $default(_that.coding,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirCodeableConcept implements FhirCodeableConcept {
  const _FhirCodeableConcept({final  List<FhirCoding> coding = const [], this.text}): _coding = coding;
  factory _FhirCodeableConcept.fromJson(Map<String, dynamic> json) => _$FhirCodeableConceptFromJson(json);

 final  List<FhirCoding> _coding;
@override@JsonKey() List<FhirCoding> get coding {
  if (_coding is EqualUnmodifiableListView) return _coding;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coding);
}

@override final  String? text;

/// Create a copy of FhirCodeableConcept
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirCodeableConceptCopyWith<_FhirCodeableConcept> get copyWith => __$FhirCodeableConceptCopyWithImpl<_FhirCodeableConcept>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirCodeableConceptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirCodeableConcept&&const DeepCollectionEquality().equals(other._coding, _coding)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_coding),text);

@override
String toString() {
  return 'FhirCodeableConcept(coding: $coding, text: $text)';
}


}

/// @nodoc
abstract mixin class _$FhirCodeableConceptCopyWith<$Res> implements $FhirCodeableConceptCopyWith<$Res> {
  factory _$FhirCodeableConceptCopyWith(_FhirCodeableConcept value, $Res Function(_FhirCodeableConcept) _then) = __$FhirCodeableConceptCopyWithImpl;
@override @useResult
$Res call({
 List<FhirCoding> coding, String? text
});




}
/// @nodoc
class __$FhirCodeableConceptCopyWithImpl<$Res>
    implements _$FhirCodeableConceptCopyWith<$Res> {
  __$FhirCodeableConceptCopyWithImpl(this._self, this._then);

  final _FhirCodeableConcept _self;
  final $Res Function(_FhirCodeableConcept) _then;

/// Create a copy of FhirCodeableConcept
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coding = null,Object? text = freezed,}) {
  return _then(_FhirCodeableConcept(
coding: null == coding ? _self._coding : coding // ignore: cast_nullable_to_non_nullable
as List<FhirCoding>,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FhirCoding {

 String? get system;// Code system (SNOMED, LOINC, ICD-11, etc.)
 String? get version; String? get code; String? get display; bool? get userSelected;
/// Create a copy of FhirCoding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirCodingCopyWith<FhirCoding> get copyWith => _$FhirCodingCopyWithImpl<FhirCoding>(this as FhirCoding, _$identity);

  /// Serializes this FhirCoding to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirCoding&&(identical(other.system, system) || other.system == system)&&(identical(other.version, version) || other.version == version)&&(identical(other.code, code) || other.code == code)&&(identical(other.display, display) || other.display == display)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,system,version,code,display,userSelected);

@override
String toString() {
  return 'FhirCoding(system: $system, version: $version, code: $code, display: $display, userSelected: $userSelected)';
}


}

/// @nodoc
abstract mixin class $FhirCodingCopyWith<$Res>  {
  factory $FhirCodingCopyWith(FhirCoding value, $Res Function(FhirCoding) _then) = _$FhirCodingCopyWithImpl;
@useResult
$Res call({
 String? system, String? version, String? code, String? display, bool? userSelected
});




}
/// @nodoc
class _$FhirCodingCopyWithImpl<$Res>
    implements $FhirCodingCopyWith<$Res> {
  _$FhirCodingCopyWithImpl(this._self, this._then);

  final FhirCoding _self;
  final $Res Function(FhirCoding) _then;

/// Create a copy of FhirCoding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? system = freezed,Object? version = freezed,Object? code = freezed,Object? display = freezed,Object? userSelected = freezed,}) {
  return _then(_self.copyWith(
system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,display: freezed == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String?,userSelected: freezed == userSelected ? _self.userSelected : userSelected // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [FhirCoding].
extension FhirCodingPatterns on FhirCoding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirCoding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirCoding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirCoding value)  $default,){
final _that = this;
switch (_that) {
case _FhirCoding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirCoding value)?  $default,){
final _that = this;
switch (_that) {
case _FhirCoding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? system,  String? version,  String? code,  String? display,  bool? userSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirCoding() when $default != null:
return $default(_that.system,_that.version,_that.code,_that.display,_that.userSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? system,  String? version,  String? code,  String? display,  bool? userSelected)  $default,) {final _that = this;
switch (_that) {
case _FhirCoding():
return $default(_that.system,_that.version,_that.code,_that.display,_that.userSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? system,  String? version,  String? code,  String? display,  bool? userSelected)?  $default,) {final _that = this;
switch (_that) {
case _FhirCoding() when $default != null:
return $default(_that.system,_that.version,_that.code,_that.display,_that.userSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirCoding implements FhirCoding {
  const _FhirCoding({this.system, this.version, this.code, this.display, this.userSelected});
  factory _FhirCoding.fromJson(Map<String, dynamic> json) => _$FhirCodingFromJson(json);

@override final  String? system;
// Code system (SNOMED, LOINC, ICD-11, etc.)
@override final  String? version;
@override final  String? code;
@override final  String? display;
@override final  bool? userSelected;

/// Create a copy of FhirCoding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirCodingCopyWith<_FhirCoding> get copyWith => __$FhirCodingCopyWithImpl<_FhirCoding>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirCodingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirCoding&&(identical(other.system, system) || other.system == system)&&(identical(other.version, version) || other.version == version)&&(identical(other.code, code) || other.code == code)&&(identical(other.display, display) || other.display == display)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,system,version,code,display,userSelected);

@override
String toString() {
  return 'FhirCoding(system: $system, version: $version, code: $code, display: $display, userSelected: $userSelected)';
}


}

/// @nodoc
abstract mixin class _$FhirCodingCopyWith<$Res> implements $FhirCodingCopyWith<$Res> {
  factory _$FhirCodingCopyWith(_FhirCoding value, $Res Function(_FhirCoding) _then) = __$FhirCodingCopyWithImpl;
@override @useResult
$Res call({
 String? system, String? version, String? code, String? display, bool? userSelected
});




}
/// @nodoc
class __$FhirCodingCopyWithImpl<$Res>
    implements _$FhirCodingCopyWith<$Res> {
  __$FhirCodingCopyWithImpl(this._self, this._then);

  final _FhirCoding _self;
  final $Res Function(_FhirCoding) _then;

/// Create a copy of FhirCoding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? system = freezed,Object? version = freezed,Object? code = freezed,Object? display = freezed,Object? userSelected = freezed,}) {
  return _then(_FhirCoding(
system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,display: freezed == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String?,userSelected: freezed == userSelected ? _self.userSelected : userSelected // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$FhirReference {

 String? get reference;// e.g., "Practitioner/123"
 String? get type; FhirIdentifier? get identifier; String? get display;
/// Create a copy of FhirReference
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<FhirReference> get copyWith => _$FhirReferenceCopyWithImpl<FhirReference>(this as FhirReference, _$identity);

  /// Serializes this FhirReference to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirReference&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.type, type) || other.type == type)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.display, display) || other.display == display));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference,type,identifier,display);

@override
String toString() {
  return 'FhirReference(reference: $reference, type: $type, identifier: $identifier, display: $display)';
}


}

/// @nodoc
abstract mixin class $FhirReferenceCopyWith<$Res>  {
  factory $FhirReferenceCopyWith(FhirReference value, $Res Function(FhirReference) _then) = _$FhirReferenceCopyWithImpl;
@useResult
$Res call({
 String? reference, String? type, FhirIdentifier? identifier, String? display
});


$FhirIdentifierCopyWith<$Res>? get identifier;

}
/// @nodoc
class _$FhirReferenceCopyWithImpl<$Res>
    implements $FhirReferenceCopyWith<$Res> {
  _$FhirReferenceCopyWithImpl(this._self, this._then);

  final FhirReference _self;
  final $Res Function(FhirReference) _then;

/// Create a copy of FhirReference
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reference = freezed,Object? type = freezed,Object? identifier = freezed,Object? display = freezed,}) {
  return _then(_self.copyWith(
reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as FhirIdentifier?,display: freezed == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FhirReference
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirIdentifierCopyWith<$Res>? get identifier {
    if (_self.identifier == null) {
    return null;
  }

  return $FhirIdentifierCopyWith<$Res>(_self.identifier!, (value) {
    return _then(_self.copyWith(identifier: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirReference].
extension FhirReferencePatterns on FhirReference {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirReference value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirReference() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirReference value)  $default,){
final _that = this;
switch (_that) {
case _FhirReference():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirReference value)?  $default,){
final _that = this;
switch (_that) {
case _FhirReference() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? reference,  String? type,  FhirIdentifier? identifier,  String? display)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirReference() when $default != null:
return $default(_that.reference,_that.type,_that.identifier,_that.display);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? reference,  String? type,  FhirIdentifier? identifier,  String? display)  $default,) {final _that = this;
switch (_that) {
case _FhirReference():
return $default(_that.reference,_that.type,_that.identifier,_that.display);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? reference,  String? type,  FhirIdentifier? identifier,  String? display)?  $default,) {final _that = this;
switch (_that) {
case _FhirReference() when $default != null:
return $default(_that.reference,_that.type,_that.identifier,_that.display);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirReference implements FhirReference {
  const _FhirReference({this.reference, this.type, this.identifier, this.display});
  factory _FhirReference.fromJson(Map<String, dynamic> json) => _$FhirReferenceFromJson(json);

@override final  String? reference;
// e.g., "Practitioner/123"
@override final  String? type;
@override final  FhirIdentifier? identifier;
@override final  String? display;

/// Create a copy of FhirReference
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirReferenceCopyWith<_FhirReference> get copyWith => __$FhirReferenceCopyWithImpl<_FhirReference>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirReferenceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirReference&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.type, type) || other.type == type)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.display, display) || other.display == display));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference,type,identifier,display);

@override
String toString() {
  return 'FhirReference(reference: $reference, type: $type, identifier: $identifier, display: $display)';
}


}

/// @nodoc
abstract mixin class _$FhirReferenceCopyWith<$Res> implements $FhirReferenceCopyWith<$Res> {
  factory _$FhirReferenceCopyWith(_FhirReference value, $Res Function(_FhirReference) _then) = __$FhirReferenceCopyWithImpl;
@override @useResult
$Res call({
 String? reference, String? type, FhirIdentifier? identifier, String? display
});


@override $FhirIdentifierCopyWith<$Res>? get identifier;

}
/// @nodoc
class __$FhirReferenceCopyWithImpl<$Res>
    implements _$FhirReferenceCopyWith<$Res> {
  __$FhirReferenceCopyWithImpl(this._self, this._then);

  final _FhirReference _self;
  final $Res Function(_FhirReference) _then;

/// Create a copy of FhirReference
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reference = freezed,Object? type = freezed,Object? identifier = freezed,Object? display = freezed,}) {
  return _then(_FhirReference(
reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as FhirIdentifier?,display: freezed == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FhirReference
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirIdentifierCopyWith<$Res>? get identifier {
    if (_self.identifier == null) {
    return null;
  }

  return $FhirIdentifierCopyWith<$Res>(_self.identifier!, (value) {
    return _then(_self.copyWith(identifier: value));
  });
}
}


/// @nodoc
mixin _$FhirPatientContact {

 List<FhirCodeableConcept> get relationship; FhirHumanName? get name; List<FhirContactPoint> get telecom; FhirAddress? get address; String? get gender; FhirReference? get organization; FhirPeriod? get period;
/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirPatientContactCopyWith<FhirPatientContact> get copyWith => _$FhirPatientContactCopyWithImpl<FhirPatientContact>(this as FhirPatientContact, _$identity);

  /// Serializes this FhirPatientContact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirPatientContact&&const DeepCollectionEquality().equals(other.relationship, relationship)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.telecom, telecom)&&(identical(other.address, address) || other.address == address)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.period, period) || other.period == period));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(relationship),name,const DeepCollectionEquality().hash(telecom),address,gender,organization,period);

@override
String toString() {
  return 'FhirPatientContact(relationship: $relationship, name: $name, telecom: $telecom, address: $address, gender: $gender, organization: $organization, period: $period)';
}


}

/// @nodoc
abstract mixin class $FhirPatientContactCopyWith<$Res>  {
  factory $FhirPatientContactCopyWith(FhirPatientContact value, $Res Function(FhirPatientContact) _then) = _$FhirPatientContactCopyWithImpl;
@useResult
$Res call({
 List<FhirCodeableConcept> relationship, FhirHumanName? name, List<FhirContactPoint> telecom, FhirAddress? address, String? gender, FhirReference? organization, FhirPeriod? period
});


$FhirHumanNameCopyWith<$Res>? get name;$FhirAddressCopyWith<$Res>? get address;$FhirReferenceCopyWith<$Res>? get organization;$FhirPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class _$FhirPatientContactCopyWithImpl<$Res>
    implements $FhirPatientContactCopyWith<$Res> {
  _$FhirPatientContactCopyWithImpl(this._self, this._then);

  final FhirPatientContact _self;
  final $Res Function(FhirPatientContact) _then;

/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? relationship = null,Object? name = freezed,Object? telecom = null,Object? address = freezed,Object? gender = freezed,Object? organization = freezed,Object? period = freezed,}) {
  return _then(_self.copyWith(
relationship: null == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FhirHumanName?,telecom: null == telecom ? _self.telecom : telecom // ignore: cast_nullable_to_non_nullable
as List<FhirContactPoint>,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as FhirAddress?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as FhirReference?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,
  ));
}
/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirHumanNameCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $FhirHumanNameCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $FhirAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get organization {
    if (_self.organization == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.organization!, (value) {
    return _then(_self.copyWith(organization: value));
  });
}/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirPatientContact].
extension FhirPatientContactPatterns on FhirPatientContact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirPatientContact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirPatientContact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirPatientContact value)  $default,){
final _that = this;
switch (_that) {
case _FhirPatientContact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirPatientContact value)?  $default,){
final _that = this;
switch (_that) {
case _FhirPatientContact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FhirCodeableConcept> relationship,  FhirHumanName? name,  List<FhirContactPoint> telecom,  FhirAddress? address,  String? gender,  FhirReference? organization,  FhirPeriod? period)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirPatientContact() when $default != null:
return $default(_that.relationship,_that.name,_that.telecom,_that.address,_that.gender,_that.organization,_that.period);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FhirCodeableConcept> relationship,  FhirHumanName? name,  List<FhirContactPoint> telecom,  FhirAddress? address,  String? gender,  FhirReference? organization,  FhirPeriod? period)  $default,) {final _that = this;
switch (_that) {
case _FhirPatientContact():
return $default(_that.relationship,_that.name,_that.telecom,_that.address,_that.gender,_that.organization,_that.period);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FhirCodeableConcept> relationship,  FhirHumanName? name,  List<FhirContactPoint> telecom,  FhirAddress? address,  String? gender,  FhirReference? organization,  FhirPeriod? period)?  $default,) {final _that = this;
switch (_that) {
case _FhirPatientContact() when $default != null:
return $default(_that.relationship,_that.name,_that.telecom,_that.address,_that.gender,_that.organization,_that.period);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirPatientContact implements FhirPatientContact {
  const _FhirPatientContact({final  List<FhirCodeableConcept> relationship = const [], this.name, final  List<FhirContactPoint> telecom = const [], this.address, this.gender, this.organization, this.period}): _relationship = relationship,_telecom = telecom;
  factory _FhirPatientContact.fromJson(Map<String, dynamic> json) => _$FhirPatientContactFromJson(json);

 final  List<FhirCodeableConcept> _relationship;
@override@JsonKey() List<FhirCodeableConcept> get relationship {
  if (_relationship is EqualUnmodifiableListView) return _relationship;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relationship);
}

@override final  FhirHumanName? name;
 final  List<FhirContactPoint> _telecom;
@override@JsonKey() List<FhirContactPoint> get telecom {
  if (_telecom is EqualUnmodifiableListView) return _telecom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_telecom);
}

@override final  FhirAddress? address;
@override final  String? gender;
@override final  FhirReference? organization;
@override final  FhirPeriod? period;

/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirPatientContactCopyWith<_FhirPatientContact> get copyWith => __$FhirPatientContactCopyWithImpl<_FhirPatientContact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirPatientContactToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirPatientContact&&const DeepCollectionEquality().equals(other._relationship, _relationship)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._telecom, _telecom)&&(identical(other.address, address) || other.address == address)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.period, period) || other.period == period));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_relationship),name,const DeepCollectionEquality().hash(_telecom),address,gender,organization,period);

@override
String toString() {
  return 'FhirPatientContact(relationship: $relationship, name: $name, telecom: $telecom, address: $address, gender: $gender, organization: $organization, period: $period)';
}


}

/// @nodoc
abstract mixin class _$FhirPatientContactCopyWith<$Res> implements $FhirPatientContactCopyWith<$Res> {
  factory _$FhirPatientContactCopyWith(_FhirPatientContact value, $Res Function(_FhirPatientContact) _then) = __$FhirPatientContactCopyWithImpl;
@override @useResult
$Res call({
 List<FhirCodeableConcept> relationship, FhirHumanName? name, List<FhirContactPoint> telecom, FhirAddress? address, String? gender, FhirReference? organization, FhirPeriod? period
});


@override $FhirHumanNameCopyWith<$Res>? get name;@override $FhirAddressCopyWith<$Res>? get address;@override $FhirReferenceCopyWith<$Res>? get organization;@override $FhirPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class __$FhirPatientContactCopyWithImpl<$Res>
    implements _$FhirPatientContactCopyWith<$Res> {
  __$FhirPatientContactCopyWithImpl(this._self, this._then);

  final _FhirPatientContact _self;
  final $Res Function(_FhirPatientContact) _then;

/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? relationship = null,Object? name = freezed,Object? telecom = null,Object? address = freezed,Object? gender = freezed,Object? organization = freezed,Object? period = freezed,}) {
  return _then(_FhirPatientContact(
relationship: null == relationship ? _self._relationship : relationship // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FhirHumanName?,telecom: null == telecom ? _self._telecom : telecom // ignore: cast_nullable_to_non_nullable
as List<FhirContactPoint>,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as FhirAddress?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as FhirReference?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,
  ));
}

/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirHumanNameCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $FhirHumanNameCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $FhirAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get organization {
    if (_self.organization == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.organization!, (value) {
    return _then(_self.copyWith(organization: value));
  });
}/// Create a copy of FhirPatientContact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// @nodoc
mixin _$FhirMeta {

 String? get versionId; String? get lastUpdated;// DateTime
 String? get source; List<String> get profile; List<FhirCoding> get security; List<FhirCoding> get tag;
/// Create a copy of FhirMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirMetaCopyWith<FhirMeta> get copyWith => _$FhirMetaCopyWithImpl<FhirMeta>(this as FhirMeta, _$identity);

  /// Serializes this FhirMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirMeta&&(identical(other.versionId, versionId) || other.versionId == versionId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other.profile, profile)&&const DeepCollectionEquality().equals(other.security, security)&&const DeepCollectionEquality().equals(other.tag, tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,versionId,lastUpdated,source,const DeepCollectionEquality().hash(profile),const DeepCollectionEquality().hash(security),const DeepCollectionEquality().hash(tag));

@override
String toString() {
  return 'FhirMeta(versionId: $versionId, lastUpdated: $lastUpdated, source: $source, profile: $profile, security: $security, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $FhirMetaCopyWith<$Res>  {
  factory $FhirMetaCopyWith(FhirMeta value, $Res Function(FhirMeta) _then) = _$FhirMetaCopyWithImpl;
@useResult
$Res call({
 String? versionId, String? lastUpdated, String? source, List<String> profile, List<FhirCoding> security, List<FhirCoding> tag
});




}
/// @nodoc
class _$FhirMetaCopyWithImpl<$Res>
    implements $FhirMetaCopyWith<$Res> {
  _$FhirMetaCopyWithImpl(this._self, this._then);

  final FhirMeta _self;
  final $Res Function(FhirMeta) _then;

/// Create a copy of FhirMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? versionId = freezed,Object? lastUpdated = freezed,Object? source = freezed,Object? profile = null,Object? security = null,Object? tag = null,}) {
  return _then(_self.copyWith(
versionId: freezed == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as List<String>,security: null == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as List<FhirCoding>,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as List<FhirCoding>,
  ));
}

}


/// Adds pattern-matching-related methods to [FhirMeta].
extension FhirMetaPatterns on FhirMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirMeta value)  $default,){
final _that = this;
switch (_that) {
case _FhirMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirMeta value)?  $default,){
final _that = this;
switch (_that) {
case _FhirMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? versionId,  String? lastUpdated,  String? source,  List<String> profile,  List<FhirCoding> security,  List<FhirCoding> tag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirMeta() when $default != null:
return $default(_that.versionId,_that.lastUpdated,_that.source,_that.profile,_that.security,_that.tag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? versionId,  String? lastUpdated,  String? source,  List<String> profile,  List<FhirCoding> security,  List<FhirCoding> tag)  $default,) {final _that = this;
switch (_that) {
case _FhirMeta():
return $default(_that.versionId,_that.lastUpdated,_that.source,_that.profile,_that.security,_that.tag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? versionId,  String? lastUpdated,  String? source,  List<String> profile,  List<FhirCoding> security,  List<FhirCoding> tag)?  $default,) {final _that = this;
switch (_that) {
case _FhirMeta() when $default != null:
return $default(_that.versionId,_that.lastUpdated,_that.source,_that.profile,_that.security,_that.tag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirMeta implements FhirMeta {
  const _FhirMeta({this.versionId, this.lastUpdated, this.source, final  List<String> profile = const [], final  List<FhirCoding> security = const [], final  List<FhirCoding> tag = const []}): _profile = profile,_security = security,_tag = tag;
  factory _FhirMeta.fromJson(Map<String, dynamic> json) => _$FhirMetaFromJson(json);

@override final  String? versionId;
@override final  String? lastUpdated;
// DateTime
@override final  String? source;
 final  List<String> _profile;
@override@JsonKey() List<String> get profile {
  if (_profile is EqualUnmodifiableListView) return _profile;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profile);
}

 final  List<FhirCoding> _security;
@override@JsonKey() List<FhirCoding> get security {
  if (_security is EqualUnmodifiableListView) return _security;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_security);
}

 final  List<FhirCoding> _tag;
@override@JsonKey() List<FhirCoding> get tag {
  if (_tag is EqualUnmodifiableListView) return _tag;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tag);
}


/// Create a copy of FhirMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirMetaCopyWith<_FhirMeta> get copyWith => __$FhirMetaCopyWithImpl<_FhirMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirMeta&&(identical(other.versionId, versionId) || other.versionId == versionId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other._profile, _profile)&&const DeepCollectionEquality().equals(other._security, _security)&&const DeepCollectionEquality().equals(other._tag, _tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,versionId,lastUpdated,source,const DeepCollectionEquality().hash(_profile),const DeepCollectionEquality().hash(_security),const DeepCollectionEquality().hash(_tag));

@override
String toString() {
  return 'FhirMeta(versionId: $versionId, lastUpdated: $lastUpdated, source: $source, profile: $profile, security: $security, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$FhirMetaCopyWith<$Res> implements $FhirMetaCopyWith<$Res> {
  factory _$FhirMetaCopyWith(_FhirMeta value, $Res Function(_FhirMeta) _then) = __$FhirMetaCopyWithImpl;
@override @useResult
$Res call({
 String? versionId, String? lastUpdated, String? source, List<String> profile, List<FhirCoding> security, List<FhirCoding> tag
});




}
/// @nodoc
class __$FhirMetaCopyWithImpl<$Res>
    implements _$FhirMetaCopyWith<$Res> {
  __$FhirMetaCopyWithImpl(this._self, this._then);

  final _FhirMeta _self;
  final $Res Function(_FhirMeta) _then;

/// Create a copy of FhirMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? versionId = freezed,Object? lastUpdated = freezed,Object? source = freezed,Object? profile = null,Object? security = null,Object? tag = null,}) {
  return _then(_FhirMeta(
versionId: freezed == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,profile: null == profile ? _self._profile : profile // ignore: cast_nullable_to_non_nullable
as List<String>,security: null == security ? _self._security : security // ignore: cast_nullable_to_non_nullable
as List<FhirCoding>,tag: null == tag ? _self._tag : tag // ignore: cast_nullable_to_non_nullable
as List<FhirCoding>,
  ));
}


}

// dart format on
