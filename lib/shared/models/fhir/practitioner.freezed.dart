// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practitioner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FhirPractitioner {

 String get id; String get resourceType; List<FhirIdentifier> get identifier; bool get active; List<FhirHumanName> get name; List<FhirContactPoint>? get telecom; List<FhirAddress>? get address; String? get gender; String? get birthDate; List<FhirAttachment>? get photo; List<FhirPractitionerQualification> get qualification; List<FhirCodeableConcept> get communication; FhirMeta? get meta;
/// Create a copy of FhirPractitioner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirPractitionerCopyWith<FhirPractitioner> get copyWith => _$FhirPractitionerCopyWithImpl<FhirPractitioner>(this as FhirPractitioner, _$identity);

  /// Serializes this FhirPractitioner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirPractitioner&&(identical(other.id, id) || other.id == id)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&const DeepCollectionEquality().equals(other.identifier, identifier)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.name, name)&&const DeepCollectionEquality().equals(other.telecom, telecom)&&const DeepCollectionEquality().equals(other.address, address)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&const DeepCollectionEquality().equals(other.photo, photo)&&const DeepCollectionEquality().equals(other.qualification, qualification)&&const DeepCollectionEquality().equals(other.communication, communication)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,resourceType,const DeepCollectionEquality().hash(identifier),active,const DeepCollectionEquality().hash(name),const DeepCollectionEquality().hash(telecom),const DeepCollectionEquality().hash(address),gender,birthDate,const DeepCollectionEquality().hash(photo),const DeepCollectionEquality().hash(qualification),const DeepCollectionEquality().hash(communication),meta);

@override
String toString() {
  return 'FhirPractitioner(id: $id, resourceType: $resourceType, identifier: $identifier, active: $active, name: $name, telecom: $telecom, address: $address, gender: $gender, birthDate: $birthDate, photo: $photo, qualification: $qualification, communication: $communication, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $FhirPractitionerCopyWith<$Res>  {
  factory $FhirPractitionerCopyWith(FhirPractitioner value, $Res Function(FhirPractitioner) _then) = _$FhirPractitionerCopyWithImpl;
@useResult
$Res call({
 String id, String resourceType, List<FhirIdentifier> identifier, bool active, List<FhirHumanName> name, List<FhirContactPoint>? telecom, List<FhirAddress>? address, String? gender, String? birthDate, List<FhirAttachment>? photo, List<FhirPractitionerQualification> qualification, List<FhirCodeableConcept> communication, FhirMeta? meta
});


$FhirMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$FhirPractitionerCopyWithImpl<$Res>
    implements $FhirPractitionerCopyWith<$Res> {
  _$FhirPractitionerCopyWithImpl(this._self, this._then);

  final FhirPractitioner _self;
  final $Res Function(FhirPractitioner) _then;

/// Create a copy of FhirPractitioner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? resourceType = null,Object? identifier = null,Object? active = null,Object? name = null,Object? telecom = freezed,Object? address = freezed,Object? gender = freezed,Object? birthDate = freezed,Object? photo = freezed,Object? qualification = null,Object? communication = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as List<FhirHumanName>,telecom: freezed == telecom ? _self.telecom : telecom // ignore: cast_nullable_to_non_nullable
as List<FhirContactPoint>?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as List<FhirAddress>?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as List<FhirAttachment>?,qualification: null == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as List<FhirPractitionerQualification>,communication: null == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FhirMeta?,
  ));
}
/// Create a copy of FhirPractitioner
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


/// Adds pattern-matching-related methods to [FhirPractitioner].
extension FhirPractitionerPatterns on FhirPractitioner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirPractitioner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirPractitioner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirPractitioner value)  $default,){
final _that = this;
switch (_that) {
case _FhirPractitioner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirPractitioner value)?  $default,){
final _that = this;
switch (_that) {
case _FhirPractitioner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  bool active,  List<FhirHumanName> name,  List<FhirContactPoint>? telecom,  List<FhirAddress>? address,  String? gender,  String? birthDate,  List<FhirAttachment>? photo,  List<FhirPractitionerQualification> qualification,  List<FhirCodeableConcept> communication,  FhirMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirPractitioner() when $default != null:
return $default(_that.id,_that.resourceType,_that.identifier,_that.active,_that.name,_that.telecom,_that.address,_that.gender,_that.birthDate,_that.photo,_that.qualification,_that.communication,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  bool active,  List<FhirHumanName> name,  List<FhirContactPoint>? telecom,  List<FhirAddress>? address,  String? gender,  String? birthDate,  List<FhirAttachment>? photo,  List<FhirPractitionerQualification> qualification,  List<FhirCodeableConcept> communication,  FhirMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _FhirPractitioner():
return $default(_that.id,_that.resourceType,_that.identifier,_that.active,_that.name,_that.telecom,_that.address,_that.gender,_that.birthDate,_that.photo,_that.qualification,_that.communication,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  bool active,  List<FhirHumanName> name,  List<FhirContactPoint>? telecom,  List<FhirAddress>? address,  String? gender,  String? birthDate,  List<FhirAttachment>? photo,  List<FhirPractitionerQualification> qualification,  List<FhirCodeableConcept> communication,  FhirMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _FhirPractitioner() when $default != null:
return $default(_that.id,_that.resourceType,_that.identifier,_that.active,_that.name,_that.telecom,_that.address,_that.gender,_that.birthDate,_that.photo,_that.qualification,_that.communication,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirPractitioner implements FhirPractitioner {
  const _FhirPractitioner({required this.id, required this.resourceType, final  List<FhirIdentifier> identifier = const [], required this.active, required final  List<FhirHumanName> name, final  List<FhirContactPoint>? telecom, final  List<FhirAddress>? address, this.gender, this.birthDate, final  List<FhirAttachment>? photo, final  List<FhirPractitionerQualification> qualification = const [], final  List<FhirCodeableConcept> communication = const [], this.meta}): _identifier = identifier,_name = name,_telecom = telecom,_address = address,_photo = photo,_qualification = qualification,_communication = communication;
  factory _FhirPractitioner.fromJson(Map<String, dynamic> json) => _$FhirPractitionerFromJson(json);

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

 final  List<FhirAddress>? _address;
@override List<FhirAddress>? get address {
  final value = _address;
  if (value == null) return null;
  if (_address is EqualUnmodifiableListView) return _address;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? gender;
@override final  String? birthDate;
 final  List<FhirAttachment>? _photo;
@override List<FhirAttachment>? get photo {
  final value = _photo;
  if (value == null) return null;
  if (_photo is EqualUnmodifiableListView) return _photo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FhirPractitionerQualification> _qualification;
@override@JsonKey() List<FhirPractitionerQualification> get qualification {
  if (_qualification is EqualUnmodifiableListView) return _qualification;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_qualification);
}

 final  List<FhirCodeableConcept> _communication;
@override@JsonKey() List<FhirCodeableConcept> get communication {
  if (_communication is EqualUnmodifiableListView) return _communication;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_communication);
}

@override final  FhirMeta? meta;

/// Create a copy of FhirPractitioner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirPractitionerCopyWith<_FhirPractitioner> get copyWith => __$FhirPractitionerCopyWithImpl<_FhirPractitioner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirPractitionerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirPractitioner&&(identical(other.id, id) || other.id == id)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&const DeepCollectionEquality().equals(other._identifier, _identifier)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._name, _name)&&const DeepCollectionEquality().equals(other._telecom, _telecom)&&const DeepCollectionEquality().equals(other._address, _address)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&const DeepCollectionEquality().equals(other._photo, _photo)&&const DeepCollectionEquality().equals(other._qualification, _qualification)&&const DeepCollectionEquality().equals(other._communication, _communication)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,resourceType,const DeepCollectionEquality().hash(_identifier),active,const DeepCollectionEquality().hash(_name),const DeepCollectionEquality().hash(_telecom),const DeepCollectionEquality().hash(_address),gender,birthDate,const DeepCollectionEquality().hash(_photo),const DeepCollectionEquality().hash(_qualification),const DeepCollectionEquality().hash(_communication),meta);

@override
String toString() {
  return 'FhirPractitioner(id: $id, resourceType: $resourceType, identifier: $identifier, active: $active, name: $name, telecom: $telecom, address: $address, gender: $gender, birthDate: $birthDate, photo: $photo, qualification: $qualification, communication: $communication, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$FhirPractitionerCopyWith<$Res> implements $FhirPractitionerCopyWith<$Res> {
  factory _$FhirPractitionerCopyWith(_FhirPractitioner value, $Res Function(_FhirPractitioner) _then) = __$FhirPractitionerCopyWithImpl;
@override @useResult
$Res call({
 String id, String resourceType, List<FhirIdentifier> identifier, bool active, List<FhirHumanName> name, List<FhirContactPoint>? telecom, List<FhirAddress>? address, String? gender, String? birthDate, List<FhirAttachment>? photo, List<FhirPractitionerQualification> qualification, List<FhirCodeableConcept> communication, FhirMeta? meta
});


@override $FhirMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$FhirPractitionerCopyWithImpl<$Res>
    implements _$FhirPractitionerCopyWith<$Res> {
  __$FhirPractitionerCopyWithImpl(this._self, this._then);

  final _FhirPractitioner _self;
  final $Res Function(_FhirPractitioner) _then;

/// Create a copy of FhirPractitioner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? resourceType = null,Object? identifier = null,Object? active = null,Object? name = null,Object? telecom = freezed,Object? address = freezed,Object? gender = freezed,Object? birthDate = freezed,Object? photo = freezed,Object? qualification = null,Object? communication = null,Object? meta = freezed,}) {
  return _then(_FhirPractitioner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self._identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self._name : name // ignore: cast_nullable_to_non_nullable
as List<FhirHumanName>,telecom: freezed == telecom ? _self._telecom : telecom // ignore: cast_nullable_to_non_nullable
as List<FhirContactPoint>?,address: freezed == address ? _self._address : address // ignore: cast_nullable_to_non_nullable
as List<FhirAddress>?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,photo: freezed == photo ? _self._photo : photo // ignore: cast_nullable_to_non_nullable
as List<FhirAttachment>?,qualification: null == qualification ? _self._qualification : qualification // ignore: cast_nullable_to_non_nullable
as List<FhirPractitionerQualification>,communication: null == communication ? _self._communication : communication // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FhirMeta?,
  ));
}

/// Create a copy of FhirPractitioner
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
mixin _$FhirPractitionerQualification {

 List<FhirIdentifier> get identifier; FhirCodeableConcept get code; FhirPeriod? get period; FhirReference? get issuer;
/// Create a copy of FhirPractitionerQualification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirPractitionerQualificationCopyWith<FhirPractitionerQualification> get copyWith => _$FhirPractitionerQualificationCopyWithImpl<FhirPractitionerQualification>(this as FhirPractitionerQualification, _$identity);

  /// Serializes this FhirPractitionerQualification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirPractitionerQualification&&const DeepCollectionEquality().equals(other.identifier, identifier)&&(identical(other.code, code) || other.code == code)&&(identical(other.period, period) || other.period == period)&&(identical(other.issuer, issuer) || other.issuer == issuer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(identifier),code,period,issuer);

@override
String toString() {
  return 'FhirPractitionerQualification(identifier: $identifier, code: $code, period: $period, issuer: $issuer)';
}


}

/// @nodoc
abstract mixin class $FhirPractitionerQualificationCopyWith<$Res>  {
  factory $FhirPractitionerQualificationCopyWith(FhirPractitionerQualification value, $Res Function(FhirPractitionerQualification) _then) = _$FhirPractitionerQualificationCopyWithImpl;
@useResult
$Res call({
 List<FhirIdentifier> identifier, FhirCodeableConcept code, FhirPeriod? period, FhirReference? issuer
});


$FhirCodeableConceptCopyWith<$Res> get code;$FhirPeriodCopyWith<$Res>? get period;$FhirReferenceCopyWith<$Res>? get issuer;

}
/// @nodoc
class _$FhirPractitionerQualificationCopyWithImpl<$Res>
    implements $FhirPractitionerQualificationCopyWith<$Res> {
  _$FhirPractitionerQualificationCopyWithImpl(this._self, this._then);

  final FhirPractitionerQualification _self;
  final $Res Function(FhirPractitionerQualification) _then;

/// Create a copy of FhirPractitionerQualification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? identifier = null,Object? code = null,Object? period = freezed,Object? issuer = freezed,}) {
  return _then(_self.copyWith(
identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,issuer: freezed == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as FhirReference?,
  ));
}
/// Create a copy of FhirPractitionerQualification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res> get code {
  
  return $FhirCodeableConceptCopyWith<$Res>(_self.code, (value) {
    return _then(_self.copyWith(code: value));
  });
}/// Create a copy of FhirPractitionerQualification
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
}/// Create a copy of FhirPractitionerQualification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get issuer {
    if (_self.issuer == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.issuer!, (value) {
    return _then(_self.copyWith(issuer: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirPractitionerQualification].
extension FhirPractitionerQualificationPatterns on FhirPractitionerQualification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirPractitionerQualification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirPractitionerQualification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirPractitionerQualification value)  $default,){
final _that = this;
switch (_that) {
case _FhirPractitionerQualification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirPractitionerQualification value)?  $default,){
final _that = this;
switch (_that) {
case _FhirPractitionerQualification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FhirIdentifier> identifier,  FhirCodeableConcept code,  FhirPeriod? period,  FhirReference? issuer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirPractitionerQualification() when $default != null:
return $default(_that.identifier,_that.code,_that.period,_that.issuer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FhirIdentifier> identifier,  FhirCodeableConcept code,  FhirPeriod? period,  FhirReference? issuer)  $default,) {final _that = this;
switch (_that) {
case _FhirPractitionerQualification():
return $default(_that.identifier,_that.code,_that.period,_that.issuer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FhirIdentifier> identifier,  FhirCodeableConcept code,  FhirPeriod? period,  FhirReference? issuer)?  $default,) {final _that = this;
switch (_that) {
case _FhirPractitionerQualification() when $default != null:
return $default(_that.identifier,_that.code,_that.period,_that.issuer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirPractitionerQualification implements FhirPractitionerQualification {
  const _FhirPractitionerQualification({final  List<FhirIdentifier> identifier = const [], required this.code, this.period, this.issuer}): _identifier = identifier;
  factory _FhirPractitionerQualification.fromJson(Map<String, dynamic> json) => _$FhirPractitionerQualificationFromJson(json);

 final  List<FhirIdentifier> _identifier;
@override@JsonKey() List<FhirIdentifier> get identifier {
  if (_identifier is EqualUnmodifiableListView) return _identifier;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_identifier);
}

@override final  FhirCodeableConcept code;
@override final  FhirPeriod? period;
@override final  FhirReference? issuer;

/// Create a copy of FhirPractitionerQualification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirPractitionerQualificationCopyWith<_FhirPractitionerQualification> get copyWith => __$FhirPractitionerQualificationCopyWithImpl<_FhirPractitionerQualification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirPractitionerQualificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirPractitionerQualification&&const DeepCollectionEquality().equals(other._identifier, _identifier)&&(identical(other.code, code) || other.code == code)&&(identical(other.period, period) || other.period == period)&&(identical(other.issuer, issuer) || other.issuer == issuer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_identifier),code,period,issuer);

@override
String toString() {
  return 'FhirPractitionerQualification(identifier: $identifier, code: $code, period: $period, issuer: $issuer)';
}


}

/// @nodoc
abstract mixin class _$FhirPractitionerQualificationCopyWith<$Res> implements $FhirPractitionerQualificationCopyWith<$Res> {
  factory _$FhirPractitionerQualificationCopyWith(_FhirPractitionerQualification value, $Res Function(_FhirPractitionerQualification) _then) = __$FhirPractitionerQualificationCopyWithImpl;
@override @useResult
$Res call({
 List<FhirIdentifier> identifier, FhirCodeableConcept code, FhirPeriod? period, FhirReference? issuer
});


@override $FhirCodeableConceptCopyWith<$Res> get code;@override $FhirPeriodCopyWith<$Res>? get period;@override $FhirReferenceCopyWith<$Res>? get issuer;

}
/// @nodoc
class __$FhirPractitionerQualificationCopyWithImpl<$Res>
    implements _$FhirPractitionerQualificationCopyWith<$Res> {
  __$FhirPractitionerQualificationCopyWithImpl(this._self, this._then);

  final _FhirPractitionerQualification _self;
  final $Res Function(_FhirPractitionerQualification) _then;

/// Create a copy of FhirPractitionerQualification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? identifier = null,Object? code = null,Object? period = freezed,Object? issuer = freezed,}) {
  return _then(_FhirPractitionerQualification(
identifier: null == identifier ? _self._identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,issuer: freezed == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as FhirReference?,
  ));
}

/// Create a copy of FhirPractitionerQualification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res> get code {
  
  return $FhirCodeableConceptCopyWith<$Res>(_self.code, (value) {
    return _then(_self.copyWith(code: value));
  });
}/// Create a copy of FhirPractitionerQualification
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
}/// Create a copy of FhirPractitionerQualification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get issuer {
    if (_self.issuer == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.issuer!, (value) {
    return _then(_self.copyWith(issuer: value));
  });
}
}


/// @nodoc
mixin _$FhirAttachment {

 String? get contentType; String? get language; String? get data;// Base64 encoded
 String? get url; int? get size; String? get hash; String? get title; String? get creation;
/// Create a copy of FhirAttachment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirAttachmentCopyWith<FhirAttachment> get copyWith => _$FhirAttachmentCopyWithImpl<FhirAttachment>(this as FhirAttachment, _$identity);

  /// Serializes this FhirAttachment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirAttachment&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.language, language) || other.language == language)&&(identical(other.data, data) || other.data == data)&&(identical(other.url, url) || other.url == url)&&(identical(other.size, size) || other.size == size)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.title, title) || other.title == title)&&(identical(other.creation, creation) || other.creation == creation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentType,language,data,url,size,hash,title,creation);

@override
String toString() {
  return 'FhirAttachment(contentType: $contentType, language: $language, data: $data, url: $url, size: $size, hash: $hash, title: $title, creation: $creation)';
}


}

/// @nodoc
abstract mixin class $FhirAttachmentCopyWith<$Res>  {
  factory $FhirAttachmentCopyWith(FhirAttachment value, $Res Function(FhirAttachment) _then) = _$FhirAttachmentCopyWithImpl;
@useResult
$Res call({
 String? contentType, String? language, String? data, String? url, int? size, String? hash, String? title, String? creation
});




}
/// @nodoc
class _$FhirAttachmentCopyWithImpl<$Res>
    implements $FhirAttachmentCopyWith<$Res> {
  _$FhirAttachmentCopyWithImpl(this._self, this._then);

  final FhirAttachment _self;
  final $Res Function(FhirAttachment) _then;

/// Create a copy of FhirAttachment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contentType = freezed,Object? language = freezed,Object? data = freezed,Object? url = freezed,Object? size = freezed,Object? hash = freezed,Object? title = freezed,Object? creation = freezed,}) {
  return _then(_self.copyWith(
contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,hash: freezed == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FhirAttachment].
extension FhirAttachmentPatterns on FhirAttachment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirAttachment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirAttachment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirAttachment value)  $default,){
final _that = this;
switch (_that) {
case _FhirAttachment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirAttachment value)?  $default,){
final _that = this;
switch (_that) {
case _FhirAttachment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? contentType,  String? language,  String? data,  String? url,  int? size,  String? hash,  String? title,  String? creation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirAttachment() when $default != null:
return $default(_that.contentType,_that.language,_that.data,_that.url,_that.size,_that.hash,_that.title,_that.creation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? contentType,  String? language,  String? data,  String? url,  int? size,  String? hash,  String? title,  String? creation)  $default,) {final _that = this;
switch (_that) {
case _FhirAttachment():
return $default(_that.contentType,_that.language,_that.data,_that.url,_that.size,_that.hash,_that.title,_that.creation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? contentType,  String? language,  String? data,  String? url,  int? size,  String? hash,  String? title,  String? creation)?  $default,) {final _that = this;
switch (_that) {
case _FhirAttachment() when $default != null:
return $default(_that.contentType,_that.language,_that.data,_that.url,_that.size,_that.hash,_that.title,_that.creation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirAttachment implements FhirAttachment {
  const _FhirAttachment({this.contentType, this.language, this.data, this.url, this.size, this.hash, this.title, this.creation});
  factory _FhirAttachment.fromJson(Map<String, dynamic> json) => _$FhirAttachmentFromJson(json);

@override final  String? contentType;
@override final  String? language;
@override final  String? data;
// Base64 encoded
@override final  String? url;
@override final  int? size;
@override final  String? hash;
@override final  String? title;
@override final  String? creation;

/// Create a copy of FhirAttachment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirAttachmentCopyWith<_FhirAttachment> get copyWith => __$FhirAttachmentCopyWithImpl<_FhirAttachment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirAttachmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirAttachment&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.language, language) || other.language == language)&&(identical(other.data, data) || other.data == data)&&(identical(other.url, url) || other.url == url)&&(identical(other.size, size) || other.size == size)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.title, title) || other.title == title)&&(identical(other.creation, creation) || other.creation == creation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentType,language,data,url,size,hash,title,creation);

@override
String toString() {
  return 'FhirAttachment(contentType: $contentType, language: $language, data: $data, url: $url, size: $size, hash: $hash, title: $title, creation: $creation)';
}


}

/// @nodoc
abstract mixin class _$FhirAttachmentCopyWith<$Res> implements $FhirAttachmentCopyWith<$Res> {
  factory _$FhirAttachmentCopyWith(_FhirAttachment value, $Res Function(_FhirAttachment) _then) = __$FhirAttachmentCopyWithImpl;
@override @useResult
$Res call({
 String? contentType, String? language, String? data, String? url, int? size, String? hash, String? title, String? creation
});




}
/// @nodoc
class __$FhirAttachmentCopyWithImpl<$Res>
    implements _$FhirAttachmentCopyWith<$Res> {
  __$FhirAttachmentCopyWithImpl(this._self, this._then);

  final _FhirAttachment _self;
  final $Res Function(_FhirAttachment) _then;

/// Create a copy of FhirAttachment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contentType = freezed,Object? language = freezed,Object? data = freezed,Object? url = freezed,Object? size = freezed,Object? hash = freezed,Object? title = freezed,Object? creation = freezed,}) {
  return _then(_FhirAttachment(
contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,hash: freezed == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
