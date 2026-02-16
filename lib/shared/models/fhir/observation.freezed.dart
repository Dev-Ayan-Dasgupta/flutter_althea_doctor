// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FhirObservation {

 String get id; String get resourceType; List<FhirIdentifier> get identifier; List<FhirReference> get basedOn; List<FhirReference> get partOf; String get status;// registered | preliminary | final | amended | corrected | cancelled | entered-in-error | unknown
 List<FhirCodeableConcept> get category; FhirCodeableConcept get code;// LOINC code for observation type
 FhirReference? get subject;// Reference to Patient
 FhirReference? get encounter; String? get effectiveDateTime; FhirPeriod? get effectivePeriod; String? get issued; List<FhirReference> get performer; FhirQuantity? get valueQuantity; FhirCodeableConcept? get valueCodeableConcept; String? get valueString; bool? get valueBoolean; int? get valueInteger; FhirRange? get valueRange; FhirCodeableConcept? get dataAbsentReason; List<FhirCodeableConcept> get interpretation; List<FhirAnnotation> get note; FhirCodeableConcept? get bodySite; FhirCodeableConcept? get method; FhirReference? get device; List<FhirReferenceRange> get referenceRange; List<FhirReference> get hasMember; List<FhirReference> get derivedFrom; List<FhirObservationComponent> get component; FhirMeta? get meta;
/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirObservationCopyWith<FhirObservation> get copyWith => _$FhirObservationCopyWithImpl<FhirObservation>(this as FhirObservation, _$identity);

  /// Serializes this FhirObservation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirObservation&&(identical(other.id, id) || other.id == id)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&const DeepCollectionEquality().equals(other.identifier, identifier)&&const DeepCollectionEquality().equals(other.basedOn, basedOn)&&const DeepCollectionEquality().equals(other.partOf, partOf)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.category, category)&&(identical(other.code, code) || other.code == code)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.encounter, encounter) || other.encounter == encounter)&&(identical(other.effectiveDateTime, effectiveDateTime) || other.effectiveDateTime == effectiveDateTime)&&(identical(other.effectivePeriod, effectivePeriod) || other.effectivePeriod == effectivePeriod)&&(identical(other.issued, issued) || other.issued == issued)&&const DeepCollectionEquality().equals(other.performer, performer)&&(identical(other.valueQuantity, valueQuantity) || other.valueQuantity == valueQuantity)&&(identical(other.valueCodeableConcept, valueCodeableConcept) || other.valueCodeableConcept == valueCodeableConcept)&&(identical(other.valueString, valueString) || other.valueString == valueString)&&(identical(other.valueBoolean, valueBoolean) || other.valueBoolean == valueBoolean)&&(identical(other.valueInteger, valueInteger) || other.valueInteger == valueInteger)&&(identical(other.valueRange, valueRange) || other.valueRange == valueRange)&&(identical(other.dataAbsentReason, dataAbsentReason) || other.dataAbsentReason == dataAbsentReason)&&const DeepCollectionEquality().equals(other.interpretation, interpretation)&&const DeepCollectionEquality().equals(other.note, note)&&(identical(other.bodySite, bodySite) || other.bodySite == bodySite)&&(identical(other.method, method) || other.method == method)&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other.referenceRange, referenceRange)&&const DeepCollectionEquality().equals(other.hasMember, hasMember)&&const DeepCollectionEquality().equals(other.derivedFrom, derivedFrom)&&const DeepCollectionEquality().equals(other.component, component)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,resourceType,const DeepCollectionEquality().hash(identifier),const DeepCollectionEquality().hash(basedOn),const DeepCollectionEquality().hash(partOf),status,const DeepCollectionEquality().hash(category),code,subject,encounter,effectiveDateTime,effectivePeriod,issued,const DeepCollectionEquality().hash(performer),valueQuantity,valueCodeableConcept,valueString,valueBoolean,valueInteger,valueRange,dataAbsentReason,const DeepCollectionEquality().hash(interpretation),const DeepCollectionEquality().hash(note),bodySite,method,device,const DeepCollectionEquality().hash(referenceRange),const DeepCollectionEquality().hash(hasMember),const DeepCollectionEquality().hash(derivedFrom),const DeepCollectionEquality().hash(component),meta]);

@override
String toString() {
  return 'FhirObservation(id: $id, resourceType: $resourceType, identifier: $identifier, basedOn: $basedOn, partOf: $partOf, status: $status, category: $category, code: $code, subject: $subject, encounter: $encounter, effectiveDateTime: $effectiveDateTime, effectivePeriod: $effectivePeriod, issued: $issued, performer: $performer, valueQuantity: $valueQuantity, valueCodeableConcept: $valueCodeableConcept, valueString: $valueString, valueBoolean: $valueBoolean, valueInteger: $valueInteger, valueRange: $valueRange, dataAbsentReason: $dataAbsentReason, interpretation: $interpretation, note: $note, bodySite: $bodySite, method: $method, device: $device, referenceRange: $referenceRange, hasMember: $hasMember, derivedFrom: $derivedFrom, component: $component, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $FhirObservationCopyWith<$Res>  {
  factory $FhirObservationCopyWith(FhirObservation value, $Res Function(FhirObservation) _then) = _$FhirObservationCopyWithImpl;
@useResult
$Res call({
 String id, String resourceType, List<FhirIdentifier> identifier, List<FhirReference> basedOn, List<FhirReference> partOf, String status, List<FhirCodeableConcept> category, FhirCodeableConcept code, FhirReference? subject, FhirReference? encounter, String? effectiveDateTime, FhirPeriod? effectivePeriod, String? issued, List<FhirReference> performer, FhirQuantity? valueQuantity, FhirCodeableConcept? valueCodeableConcept, String? valueString, bool? valueBoolean, int? valueInteger, FhirRange? valueRange, FhirCodeableConcept? dataAbsentReason, List<FhirCodeableConcept> interpretation, List<FhirAnnotation> note, FhirCodeableConcept? bodySite, FhirCodeableConcept? method, FhirReference? device, List<FhirReferenceRange> referenceRange, List<FhirReference> hasMember, List<FhirReference> derivedFrom, List<FhirObservationComponent> component, FhirMeta? meta
});


$FhirCodeableConceptCopyWith<$Res> get code;$FhirReferenceCopyWith<$Res>? get subject;$FhirReferenceCopyWith<$Res>? get encounter;$FhirPeriodCopyWith<$Res>? get effectivePeriod;$FhirQuantityCopyWith<$Res>? get valueQuantity;$FhirCodeableConceptCopyWith<$Res>? get valueCodeableConcept;$FhirRangeCopyWith<$Res>? get valueRange;$FhirCodeableConceptCopyWith<$Res>? get dataAbsentReason;$FhirCodeableConceptCopyWith<$Res>? get bodySite;$FhirCodeableConceptCopyWith<$Res>? get method;$FhirReferenceCopyWith<$Res>? get device;$FhirMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$FhirObservationCopyWithImpl<$Res>
    implements $FhirObservationCopyWith<$Res> {
  _$FhirObservationCopyWithImpl(this._self, this._then);

  final FhirObservation _self;
  final $Res Function(FhirObservation) _then;

/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? resourceType = null,Object? identifier = null,Object? basedOn = null,Object? partOf = null,Object? status = null,Object? category = null,Object? code = null,Object? subject = freezed,Object? encounter = freezed,Object? effectiveDateTime = freezed,Object? effectivePeriod = freezed,Object? issued = freezed,Object? performer = null,Object? valueQuantity = freezed,Object? valueCodeableConcept = freezed,Object? valueString = freezed,Object? valueBoolean = freezed,Object? valueInteger = freezed,Object? valueRange = freezed,Object? dataAbsentReason = freezed,Object? interpretation = null,Object? note = null,Object? bodySite = freezed,Object? method = freezed,Object? device = freezed,Object? referenceRange = null,Object? hasMember = null,Object? derivedFrom = null,Object? component = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,basedOn: null == basedOn ? _self.basedOn : basedOn // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,partOf: null == partOf ? _self.partOf : partOf // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as FhirReference?,encounter: freezed == encounter ? _self.encounter : encounter // ignore: cast_nullable_to_non_nullable
as FhirReference?,effectiveDateTime: freezed == effectiveDateTime ? _self.effectiveDateTime : effectiveDateTime // ignore: cast_nullable_to_non_nullable
as String?,effectivePeriod: freezed == effectivePeriod ? _self.effectivePeriod : effectivePeriod // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,issued: freezed == issued ? _self.issued : issued // ignore: cast_nullable_to_non_nullable
as String?,performer: null == performer ? _self.performer : performer // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,valueQuantity: freezed == valueQuantity ? _self.valueQuantity : valueQuantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,valueCodeableConcept: freezed == valueCodeableConcept ? _self.valueCodeableConcept : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,valueString: freezed == valueString ? _self.valueString : valueString // ignore: cast_nullable_to_non_nullable
as String?,valueBoolean: freezed == valueBoolean ? _self.valueBoolean : valueBoolean // ignore: cast_nullable_to_non_nullable
as bool?,valueInteger: freezed == valueInteger ? _self.valueInteger : valueInteger // ignore: cast_nullable_to_non_nullable
as int?,valueRange: freezed == valueRange ? _self.valueRange : valueRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,dataAbsentReason: freezed == dataAbsentReason ? _self.dataAbsentReason : dataAbsentReason // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,interpretation: null == interpretation ? _self.interpretation : interpretation // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as List<FhirAnnotation>,bodySite: freezed == bodySite ? _self.bodySite : bodySite // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as FhirReference?,referenceRange: null == referenceRange ? _self.referenceRange : referenceRange // ignore: cast_nullable_to_non_nullable
as List<FhirReferenceRange>,hasMember: null == hasMember ? _self.hasMember : hasMember // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,derivedFrom: null == derivedFrom ? _self.derivedFrom : derivedFrom // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,component: null == component ? _self.component : component // ignore: cast_nullable_to_non_nullable
as List<FhirObservationComponent>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FhirMeta?,
  ));
}
/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res> get code {
  
  return $FhirCodeableConceptCopyWith<$Res>(_self.code, (value) {
    return _then(_self.copyWith(code: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get encounter {
    if (_self.encounter == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.encounter!, (value) {
    return _then(_self.copyWith(encounter: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get effectivePeriod {
    if (_self.effectivePeriod == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.effectivePeriod!, (value) {
    return _then(_self.copyWith(effectivePeriod: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get valueQuantity {
    if (_self.valueQuantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.valueQuantity!, (value) {
    return _then(_self.copyWith(valueQuantity: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get valueCodeableConcept {
    if (_self.valueCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.valueCodeableConcept!, (value) {
    return _then(_self.copyWith(valueCodeableConcept: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get valueRange {
    if (_self.valueRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.valueRange!, (value) {
    return _then(_self.copyWith(valueRange: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get dataAbsentReason {
    if (_self.dataAbsentReason == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.dataAbsentReason!, (value) {
    return _then(_self.copyWith(dataAbsentReason: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get bodySite {
    if (_self.bodySite == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.bodySite!, (value) {
    return _then(_self.copyWith(bodySite: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get method {
    if (_self.method == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.method!, (value) {
    return _then(_self.copyWith(method: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}/// Create a copy of FhirObservation
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


/// Adds pattern-matching-related methods to [FhirObservation].
extension FhirObservationPatterns on FhirObservation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirObservation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirObservation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirObservation value)  $default,){
final _that = this;
switch (_that) {
case _FhirObservation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirObservation value)?  $default,){
final _that = this;
switch (_that) {
case _FhirObservation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  List<FhirReference> basedOn,  List<FhirReference> partOf,  String status,  List<FhirCodeableConcept> category,  FhirCodeableConcept code,  FhirReference? subject,  FhirReference? encounter,  String? effectiveDateTime,  FhirPeriod? effectivePeriod,  String? issued,  List<FhirReference> performer,  FhirQuantity? valueQuantity,  FhirCodeableConcept? valueCodeableConcept,  String? valueString,  bool? valueBoolean,  int? valueInteger,  FhirRange? valueRange,  FhirCodeableConcept? dataAbsentReason,  List<FhirCodeableConcept> interpretation,  List<FhirAnnotation> note,  FhirCodeableConcept? bodySite,  FhirCodeableConcept? method,  FhirReference? device,  List<FhirReferenceRange> referenceRange,  List<FhirReference> hasMember,  List<FhirReference> derivedFrom,  List<FhirObservationComponent> component,  FhirMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirObservation() when $default != null:
return $default(_that.id,_that.resourceType,_that.identifier,_that.basedOn,_that.partOf,_that.status,_that.category,_that.code,_that.subject,_that.encounter,_that.effectiveDateTime,_that.effectivePeriod,_that.issued,_that.performer,_that.valueQuantity,_that.valueCodeableConcept,_that.valueString,_that.valueBoolean,_that.valueInteger,_that.valueRange,_that.dataAbsentReason,_that.interpretation,_that.note,_that.bodySite,_that.method,_that.device,_that.referenceRange,_that.hasMember,_that.derivedFrom,_that.component,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  List<FhirReference> basedOn,  List<FhirReference> partOf,  String status,  List<FhirCodeableConcept> category,  FhirCodeableConcept code,  FhirReference? subject,  FhirReference? encounter,  String? effectiveDateTime,  FhirPeriod? effectivePeriod,  String? issued,  List<FhirReference> performer,  FhirQuantity? valueQuantity,  FhirCodeableConcept? valueCodeableConcept,  String? valueString,  bool? valueBoolean,  int? valueInteger,  FhirRange? valueRange,  FhirCodeableConcept? dataAbsentReason,  List<FhirCodeableConcept> interpretation,  List<FhirAnnotation> note,  FhirCodeableConcept? bodySite,  FhirCodeableConcept? method,  FhirReference? device,  List<FhirReferenceRange> referenceRange,  List<FhirReference> hasMember,  List<FhirReference> derivedFrom,  List<FhirObservationComponent> component,  FhirMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _FhirObservation():
return $default(_that.id,_that.resourceType,_that.identifier,_that.basedOn,_that.partOf,_that.status,_that.category,_that.code,_that.subject,_that.encounter,_that.effectiveDateTime,_that.effectivePeriod,_that.issued,_that.performer,_that.valueQuantity,_that.valueCodeableConcept,_that.valueString,_that.valueBoolean,_that.valueInteger,_that.valueRange,_that.dataAbsentReason,_that.interpretation,_that.note,_that.bodySite,_that.method,_that.device,_that.referenceRange,_that.hasMember,_that.derivedFrom,_that.component,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  List<FhirReference> basedOn,  List<FhirReference> partOf,  String status,  List<FhirCodeableConcept> category,  FhirCodeableConcept code,  FhirReference? subject,  FhirReference? encounter,  String? effectiveDateTime,  FhirPeriod? effectivePeriod,  String? issued,  List<FhirReference> performer,  FhirQuantity? valueQuantity,  FhirCodeableConcept? valueCodeableConcept,  String? valueString,  bool? valueBoolean,  int? valueInteger,  FhirRange? valueRange,  FhirCodeableConcept? dataAbsentReason,  List<FhirCodeableConcept> interpretation,  List<FhirAnnotation> note,  FhirCodeableConcept? bodySite,  FhirCodeableConcept? method,  FhirReference? device,  List<FhirReferenceRange> referenceRange,  List<FhirReference> hasMember,  List<FhirReference> derivedFrom,  List<FhirObservationComponent> component,  FhirMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _FhirObservation() when $default != null:
return $default(_that.id,_that.resourceType,_that.identifier,_that.basedOn,_that.partOf,_that.status,_that.category,_that.code,_that.subject,_that.encounter,_that.effectiveDateTime,_that.effectivePeriod,_that.issued,_that.performer,_that.valueQuantity,_that.valueCodeableConcept,_that.valueString,_that.valueBoolean,_that.valueInteger,_that.valueRange,_that.dataAbsentReason,_that.interpretation,_that.note,_that.bodySite,_that.method,_that.device,_that.referenceRange,_that.hasMember,_that.derivedFrom,_that.component,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirObservation implements FhirObservation {
  const _FhirObservation({required this.id, required this.resourceType, final  List<FhirIdentifier> identifier = const [], final  List<FhirReference> basedOn = const [], final  List<FhirReference> partOf = const [], required this.status, final  List<FhirCodeableConcept> category = const [], required this.code, this.subject, this.encounter, this.effectiveDateTime, this.effectivePeriod, this.issued, final  List<FhirReference> performer = const [], this.valueQuantity, this.valueCodeableConcept, this.valueString, this.valueBoolean, this.valueInteger, this.valueRange, this.dataAbsentReason, final  List<FhirCodeableConcept> interpretation = const [], final  List<FhirAnnotation> note = const [], this.bodySite, this.method, this.device, final  List<FhirReferenceRange> referenceRange = const [], final  List<FhirReference> hasMember = const [], final  List<FhirReference> derivedFrom = const [], final  List<FhirObservationComponent> component = const [], this.meta}): _identifier = identifier,_basedOn = basedOn,_partOf = partOf,_category = category,_performer = performer,_interpretation = interpretation,_note = note,_referenceRange = referenceRange,_hasMember = hasMember,_derivedFrom = derivedFrom,_component = component;
  factory _FhirObservation.fromJson(Map<String, dynamic> json) => _$FhirObservationFromJson(json);

@override final  String id;
@override final  String resourceType;
 final  List<FhirIdentifier> _identifier;
@override@JsonKey() List<FhirIdentifier> get identifier {
  if (_identifier is EqualUnmodifiableListView) return _identifier;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_identifier);
}

 final  List<FhirReference> _basedOn;
@override@JsonKey() List<FhirReference> get basedOn {
  if (_basedOn is EqualUnmodifiableListView) return _basedOn;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_basedOn);
}

 final  List<FhirReference> _partOf;
@override@JsonKey() List<FhirReference> get partOf {
  if (_partOf is EqualUnmodifiableListView) return _partOf;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_partOf);
}

@override final  String status;
// registered | preliminary | final | amended | corrected | cancelled | entered-in-error | unknown
 final  List<FhirCodeableConcept> _category;
// registered | preliminary | final | amended | corrected | cancelled | entered-in-error | unknown
@override@JsonKey() List<FhirCodeableConcept> get category {
  if (_category is EqualUnmodifiableListView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_category);
}

@override final  FhirCodeableConcept code;
// LOINC code for observation type
@override final  FhirReference? subject;
// Reference to Patient
@override final  FhirReference? encounter;
@override final  String? effectiveDateTime;
@override final  FhirPeriod? effectivePeriod;
@override final  String? issued;
 final  List<FhirReference> _performer;
@override@JsonKey() List<FhirReference> get performer {
  if (_performer is EqualUnmodifiableListView) return _performer;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_performer);
}

@override final  FhirQuantity? valueQuantity;
@override final  FhirCodeableConcept? valueCodeableConcept;
@override final  String? valueString;
@override final  bool? valueBoolean;
@override final  int? valueInteger;
@override final  FhirRange? valueRange;
@override final  FhirCodeableConcept? dataAbsentReason;
 final  List<FhirCodeableConcept> _interpretation;
@override@JsonKey() List<FhirCodeableConcept> get interpretation {
  if (_interpretation is EqualUnmodifiableListView) return _interpretation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interpretation);
}

 final  List<FhirAnnotation> _note;
@override@JsonKey() List<FhirAnnotation> get note {
  if (_note is EqualUnmodifiableListView) return _note;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_note);
}

@override final  FhirCodeableConcept? bodySite;
@override final  FhirCodeableConcept? method;
@override final  FhirReference? device;
 final  List<FhirReferenceRange> _referenceRange;
@override@JsonKey() List<FhirReferenceRange> get referenceRange {
  if (_referenceRange is EqualUnmodifiableListView) return _referenceRange;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_referenceRange);
}

 final  List<FhirReference> _hasMember;
@override@JsonKey() List<FhirReference> get hasMember {
  if (_hasMember is EqualUnmodifiableListView) return _hasMember;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hasMember);
}

 final  List<FhirReference> _derivedFrom;
@override@JsonKey() List<FhirReference> get derivedFrom {
  if (_derivedFrom is EqualUnmodifiableListView) return _derivedFrom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_derivedFrom);
}

 final  List<FhirObservationComponent> _component;
@override@JsonKey() List<FhirObservationComponent> get component {
  if (_component is EqualUnmodifiableListView) return _component;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_component);
}

@override final  FhirMeta? meta;

/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirObservationCopyWith<_FhirObservation> get copyWith => __$FhirObservationCopyWithImpl<_FhirObservation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirObservationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirObservation&&(identical(other.id, id) || other.id == id)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&const DeepCollectionEquality().equals(other._identifier, _identifier)&&const DeepCollectionEquality().equals(other._basedOn, _basedOn)&&const DeepCollectionEquality().equals(other._partOf, _partOf)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._category, _category)&&(identical(other.code, code) || other.code == code)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.encounter, encounter) || other.encounter == encounter)&&(identical(other.effectiveDateTime, effectiveDateTime) || other.effectiveDateTime == effectiveDateTime)&&(identical(other.effectivePeriod, effectivePeriod) || other.effectivePeriod == effectivePeriod)&&(identical(other.issued, issued) || other.issued == issued)&&const DeepCollectionEquality().equals(other._performer, _performer)&&(identical(other.valueQuantity, valueQuantity) || other.valueQuantity == valueQuantity)&&(identical(other.valueCodeableConcept, valueCodeableConcept) || other.valueCodeableConcept == valueCodeableConcept)&&(identical(other.valueString, valueString) || other.valueString == valueString)&&(identical(other.valueBoolean, valueBoolean) || other.valueBoolean == valueBoolean)&&(identical(other.valueInteger, valueInteger) || other.valueInteger == valueInteger)&&(identical(other.valueRange, valueRange) || other.valueRange == valueRange)&&(identical(other.dataAbsentReason, dataAbsentReason) || other.dataAbsentReason == dataAbsentReason)&&const DeepCollectionEquality().equals(other._interpretation, _interpretation)&&const DeepCollectionEquality().equals(other._note, _note)&&(identical(other.bodySite, bodySite) || other.bodySite == bodySite)&&(identical(other.method, method) || other.method == method)&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other._referenceRange, _referenceRange)&&const DeepCollectionEquality().equals(other._hasMember, _hasMember)&&const DeepCollectionEquality().equals(other._derivedFrom, _derivedFrom)&&const DeepCollectionEquality().equals(other._component, _component)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,resourceType,const DeepCollectionEquality().hash(_identifier),const DeepCollectionEquality().hash(_basedOn),const DeepCollectionEquality().hash(_partOf),status,const DeepCollectionEquality().hash(_category),code,subject,encounter,effectiveDateTime,effectivePeriod,issued,const DeepCollectionEquality().hash(_performer),valueQuantity,valueCodeableConcept,valueString,valueBoolean,valueInteger,valueRange,dataAbsentReason,const DeepCollectionEquality().hash(_interpretation),const DeepCollectionEquality().hash(_note),bodySite,method,device,const DeepCollectionEquality().hash(_referenceRange),const DeepCollectionEquality().hash(_hasMember),const DeepCollectionEquality().hash(_derivedFrom),const DeepCollectionEquality().hash(_component),meta]);

@override
String toString() {
  return 'FhirObservation(id: $id, resourceType: $resourceType, identifier: $identifier, basedOn: $basedOn, partOf: $partOf, status: $status, category: $category, code: $code, subject: $subject, encounter: $encounter, effectiveDateTime: $effectiveDateTime, effectivePeriod: $effectivePeriod, issued: $issued, performer: $performer, valueQuantity: $valueQuantity, valueCodeableConcept: $valueCodeableConcept, valueString: $valueString, valueBoolean: $valueBoolean, valueInteger: $valueInteger, valueRange: $valueRange, dataAbsentReason: $dataAbsentReason, interpretation: $interpretation, note: $note, bodySite: $bodySite, method: $method, device: $device, referenceRange: $referenceRange, hasMember: $hasMember, derivedFrom: $derivedFrom, component: $component, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$FhirObservationCopyWith<$Res> implements $FhirObservationCopyWith<$Res> {
  factory _$FhirObservationCopyWith(_FhirObservation value, $Res Function(_FhirObservation) _then) = __$FhirObservationCopyWithImpl;
@override @useResult
$Res call({
 String id, String resourceType, List<FhirIdentifier> identifier, List<FhirReference> basedOn, List<FhirReference> partOf, String status, List<FhirCodeableConcept> category, FhirCodeableConcept code, FhirReference? subject, FhirReference? encounter, String? effectiveDateTime, FhirPeriod? effectivePeriod, String? issued, List<FhirReference> performer, FhirQuantity? valueQuantity, FhirCodeableConcept? valueCodeableConcept, String? valueString, bool? valueBoolean, int? valueInteger, FhirRange? valueRange, FhirCodeableConcept? dataAbsentReason, List<FhirCodeableConcept> interpretation, List<FhirAnnotation> note, FhirCodeableConcept? bodySite, FhirCodeableConcept? method, FhirReference? device, List<FhirReferenceRange> referenceRange, List<FhirReference> hasMember, List<FhirReference> derivedFrom, List<FhirObservationComponent> component, FhirMeta? meta
});


@override $FhirCodeableConceptCopyWith<$Res> get code;@override $FhirReferenceCopyWith<$Res>? get subject;@override $FhirReferenceCopyWith<$Res>? get encounter;@override $FhirPeriodCopyWith<$Res>? get effectivePeriod;@override $FhirQuantityCopyWith<$Res>? get valueQuantity;@override $FhirCodeableConceptCopyWith<$Res>? get valueCodeableConcept;@override $FhirRangeCopyWith<$Res>? get valueRange;@override $FhirCodeableConceptCopyWith<$Res>? get dataAbsentReason;@override $FhirCodeableConceptCopyWith<$Res>? get bodySite;@override $FhirCodeableConceptCopyWith<$Res>? get method;@override $FhirReferenceCopyWith<$Res>? get device;@override $FhirMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$FhirObservationCopyWithImpl<$Res>
    implements _$FhirObservationCopyWith<$Res> {
  __$FhirObservationCopyWithImpl(this._self, this._then);

  final _FhirObservation _self;
  final $Res Function(_FhirObservation) _then;

/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? resourceType = null,Object? identifier = null,Object? basedOn = null,Object? partOf = null,Object? status = null,Object? category = null,Object? code = null,Object? subject = freezed,Object? encounter = freezed,Object? effectiveDateTime = freezed,Object? effectivePeriod = freezed,Object? issued = freezed,Object? performer = null,Object? valueQuantity = freezed,Object? valueCodeableConcept = freezed,Object? valueString = freezed,Object? valueBoolean = freezed,Object? valueInteger = freezed,Object? valueRange = freezed,Object? dataAbsentReason = freezed,Object? interpretation = null,Object? note = null,Object? bodySite = freezed,Object? method = freezed,Object? device = freezed,Object? referenceRange = null,Object? hasMember = null,Object? derivedFrom = null,Object? component = null,Object? meta = freezed,}) {
  return _then(_FhirObservation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self._identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,basedOn: null == basedOn ? _self._basedOn : basedOn // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,partOf: null == partOf ? _self._partOf : partOf // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as FhirReference?,encounter: freezed == encounter ? _self.encounter : encounter // ignore: cast_nullable_to_non_nullable
as FhirReference?,effectiveDateTime: freezed == effectiveDateTime ? _self.effectiveDateTime : effectiveDateTime // ignore: cast_nullable_to_non_nullable
as String?,effectivePeriod: freezed == effectivePeriod ? _self.effectivePeriod : effectivePeriod // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,issued: freezed == issued ? _self.issued : issued // ignore: cast_nullable_to_non_nullable
as String?,performer: null == performer ? _self._performer : performer // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,valueQuantity: freezed == valueQuantity ? _self.valueQuantity : valueQuantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,valueCodeableConcept: freezed == valueCodeableConcept ? _self.valueCodeableConcept : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,valueString: freezed == valueString ? _self.valueString : valueString // ignore: cast_nullable_to_non_nullable
as String?,valueBoolean: freezed == valueBoolean ? _self.valueBoolean : valueBoolean // ignore: cast_nullable_to_non_nullable
as bool?,valueInteger: freezed == valueInteger ? _self.valueInteger : valueInteger // ignore: cast_nullable_to_non_nullable
as int?,valueRange: freezed == valueRange ? _self.valueRange : valueRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,dataAbsentReason: freezed == dataAbsentReason ? _self.dataAbsentReason : dataAbsentReason // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,interpretation: null == interpretation ? _self._interpretation : interpretation // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,note: null == note ? _self._note : note // ignore: cast_nullable_to_non_nullable
as List<FhirAnnotation>,bodySite: freezed == bodySite ? _self.bodySite : bodySite // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as FhirReference?,referenceRange: null == referenceRange ? _self._referenceRange : referenceRange // ignore: cast_nullable_to_non_nullable
as List<FhirReferenceRange>,hasMember: null == hasMember ? _self._hasMember : hasMember // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,derivedFrom: null == derivedFrom ? _self._derivedFrom : derivedFrom // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,component: null == component ? _self._component : component // ignore: cast_nullable_to_non_nullable
as List<FhirObservationComponent>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FhirMeta?,
  ));
}

/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res> get code {
  
  return $FhirCodeableConceptCopyWith<$Res>(_self.code, (value) {
    return _then(_self.copyWith(code: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get encounter {
    if (_self.encounter == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.encounter!, (value) {
    return _then(_self.copyWith(encounter: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get effectivePeriod {
    if (_self.effectivePeriod == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.effectivePeriod!, (value) {
    return _then(_self.copyWith(effectivePeriod: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get valueQuantity {
    if (_self.valueQuantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.valueQuantity!, (value) {
    return _then(_self.copyWith(valueQuantity: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get valueCodeableConcept {
    if (_self.valueCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.valueCodeableConcept!, (value) {
    return _then(_self.copyWith(valueCodeableConcept: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get valueRange {
    if (_self.valueRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.valueRange!, (value) {
    return _then(_self.copyWith(valueRange: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get dataAbsentReason {
    if (_self.dataAbsentReason == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.dataAbsentReason!, (value) {
    return _then(_self.copyWith(dataAbsentReason: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get bodySite {
    if (_self.bodySite == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.bodySite!, (value) {
    return _then(_self.copyWith(bodySite: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get method {
    if (_self.method == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.method!, (value) {
    return _then(_self.copyWith(method: value));
  });
}/// Create a copy of FhirObservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}/// Create a copy of FhirObservation
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
mixin _$FhirQuantity {

 double? get value; String? get comparator;// < | <= | >= | >
 String? get unit; String? get system;// UCUM (http://unitsofmeasure.org)
 String? get code;
/// Create a copy of FhirQuantity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<FhirQuantity> get copyWith => _$FhirQuantityCopyWithImpl<FhirQuantity>(this as FhirQuantity, _$identity);

  /// Serializes this FhirQuantity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirQuantity&&(identical(other.value, value) || other.value == value)&&(identical(other.comparator, comparator) || other.comparator == comparator)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.system, system) || other.system == system)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,comparator,unit,system,code);

@override
String toString() {
  return 'FhirQuantity(value: $value, comparator: $comparator, unit: $unit, system: $system, code: $code)';
}


}

/// @nodoc
abstract mixin class $FhirQuantityCopyWith<$Res>  {
  factory $FhirQuantityCopyWith(FhirQuantity value, $Res Function(FhirQuantity) _then) = _$FhirQuantityCopyWithImpl;
@useResult
$Res call({
 double? value, String? comparator, String? unit, String? system, String? code
});




}
/// @nodoc
class _$FhirQuantityCopyWithImpl<$Res>
    implements $FhirQuantityCopyWith<$Res> {
  _$FhirQuantityCopyWithImpl(this._self, this._then);

  final FhirQuantity _self;
  final $Res Function(FhirQuantity) _then;

/// Create a copy of FhirQuantity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? comparator = freezed,Object? unit = freezed,Object? system = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,comparator: freezed == comparator ? _self.comparator : comparator // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FhirQuantity].
extension FhirQuantityPatterns on FhirQuantity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirQuantity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirQuantity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirQuantity value)  $default,){
final _that = this;
switch (_that) {
case _FhirQuantity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirQuantity value)?  $default,){
final _that = this;
switch (_that) {
case _FhirQuantity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? value,  String? comparator,  String? unit,  String? system,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirQuantity() when $default != null:
return $default(_that.value,_that.comparator,_that.unit,_that.system,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? value,  String? comparator,  String? unit,  String? system,  String? code)  $default,) {final _that = this;
switch (_that) {
case _FhirQuantity():
return $default(_that.value,_that.comparator,_that.unit,_that.system,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? value,  String? comparator,  String? unit,  String? system,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _FhirQuantity() when $default != null:
return $default(_that.value,_that.comparator,_that.unit,_that.system,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirQuantity implements FhirQuantity {
  const _FhirQuantity({this.value, this.comparator, this.unit, this.system, this.code});
  factory _FhirQuantity.fromJson(Map<String, dynamic> json) => _$FhirQuantityFromJson(json);

@override final  double? value;
@override final  String? comparator;
// < | <= | >= | >
@override final  String? unit;
@override final  String? system;
// UCUM (http://unitsofmeasure.org)
@override final  String? code;

/// Create a copy of FhirQuantity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirQuantityCopyWith<_FhirQuantity> get copyWith => __$FhirQuantityCopyWithImpl<_FhirQuantity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirQuantityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirQuantity&&(identical(other.value, value) || other.value == value)&&(identical(other.comparator, comparator) || other.comparator == comparator)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.system, system) || other.system == system)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,comparator,unit,system,code);

@override
String toString() {
  return 'FhirQuantity(value: $value, comparator: $comparator, unit: $unit, system: $system, code: $code)';
}


}

/// @nodoc
abstract mixin class _$FhirQuantityCopyWith<$Res> implements $FhirQuantityCopyWith<$Res> {
  factory _$FhirQuantityCopyWith(_FhirQuantity value, $Res Function(_FhirQuantity) _then) = __$FhirQuantityCopyWithImpl;
@override @useResult
$Res call({
 double? value, String? comparator, String? unit, String? system, String? code
});




}
/// @nodoc
class __$FhirQuantityCopyWithImpl<$Res>
    implements _$FhirQuantityCopyWith<$Res> {
  __$FhirQuantityCopyWithImpl(this._self, this._then);

  final _FhirQuantity _self;
  final $Res Function(_FhirQuantity) _then;

/// Create a copy of FhirQuantity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? comparator = freezed,Object? unit = freezed,Object? system = freezed,Object? code = freezed,}) {
  return _then(_FhirQuantity(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,comparator: freezed == comparator ? _self.comparator : comparator // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FhirRange {

 FhirQuantity? get low; FhirQuantity? get high;
/// Create a copy of FhirRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<FhirRange> get copyWith => _$FhirRangeCopyWithImpl<FhirRange>(this as FhirRange, _$identity);

  /// Serializes this FhirRange to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirRange&&(identical(other.low, low) || other.low == low)&&(identical(other.high, high) || other.high == high));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,low,high);

@override
String toString() {
  return 'FhirRange(low: $low, high: $high)';
}


}

/// @nodoc
abstract mixin class $FhirRangeCopyWith<$Res>  {
  factory $FhirRangeCopyWith(FhirRange value, $Res Function(FhirRange) _then) = _$FhirRangeCopyWithImpl;
@useResult
$Res call({
 FhirQuantity? low, FhirQuantity? high
});


$FhirQuantityCopyWith<$Res>? get low;$FhirQuantityCopyWith<$Res>? get high;

}
/// @nodoc
class _$FhirRangeCopyWithImpl<$Res>
    implements $FhirRangeCopyWith<$Res> {
  _$FhirRangeCopyWithImpl(this._self, this._then);

  final FhirRange _self;
  final $Res Function(FhirRange) _then;

/// Create a copy of FhirRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? low = freezed,Object? high = freezed,}) {
  return _then(_self.copyWith(
low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,
  ));
}
/// Create a copy of FhirRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get low {
    if (_self.low == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.low!, (value) {
    return _then(_self.copyWith(low: value));
  });
}/// Create a copy of FhirRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get high {
    if (_self.high == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.high!, (value) {
    return _then(_self.copyWith(high: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirRange].
extension FhirRangePatterns on FhirRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirRange value)  $default,){
final _that = this;
switch (_that) {
case _FhirRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirRange value)?  $default,){
final _that = this;
switch (_that) {
case _FhirRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FhirQuantity? low,  FhirQuantity? high)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirRange() when $default != null:
return $default(_that.low,_that.high);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FhirQuantity? low,  FhirQuantity? high)  $default,) {final _that = this;
switch (_that) {
case _FhirRange():
return $default(_that.low,_that.high);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FhirQuantity? low,  FhirQuantity? high)?  $default,) {final _that = this;
switch (_that) {
case _FhirRange() when $default != null:
return $default(_that.low,_that.high);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirRange implements FhirRange {
  const _FhirRange({this.low, this.high});
  factory _FhirRange.fromJson(Map<String, dynamic> json) => _$FhirRangeFromJson(json);

@override final  FhirQuantity? low;
@override final  FhirQuantity? high;

/// Create a copy of FhirRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirRangeCopyWith<_FhirRange> get copyWith => __$FhirRangeCopyWithImpl<_FhirRange>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirRangeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirRange&&(identical(other.low, low) || other.low == low)&&(identical(other.high, high) || other.high == high));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,low,high);

@override
String toString() {
  return 'FhirRange(low: $low, high: $high)';
}


}

/// @nodoc
abstract mixin class _$FhirRangeCopyWith<$Res> implements $FhirRangeCopyWith<$Res> {
  factory _$FhirRangeCopyWith(_FhirRange value, $Res Function(_FhirRange) _then) = __$FhirRangeCopyWithImpl;
@override @useResult
$Res call({
 FhirQuantity? low, FhirQuantity? high
});


@override $FhirQuantityCopyWith<$Res>? get low;@override $FhirQuantityCopyWith<$Res>? get high;

}
/// @nodoc
class __$FhirRangeCopyWithImpl<$Res>
    implements _$FhirRangeCopyWith<$Res> {
  __$FhirRangeCopyWithImpl(this._self, this._then);

  final _FhirRange _self;
  final $Res Function(_FhirRange) _then;

/// Create a copy of FhirRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? low = freezed,Object? high = freezed,}) {
  return _then(_FhirRange(
low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,
  ));
}

/// Create a copy of FhirRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get low {
    if (_self.low == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.low!, (value) {
    return _then(_self.copyWith(low: value));
  });
}/// Create a copy of FhirRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get high {
    if (_self.high == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.high!, (value) {
    return _then(_self.copyWith(high: value));
  });
}
}


/// @nodoc
mixin _$FhirAnnotation {

 FhirReference? get authorReference; String? get authorString; String? get time; String get text;
/// Create a copy of FhirAnnotation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirAnnotationCopyWith<FhirAnnotation> get copyWith => _$FhirAnnotationCopyWithImpl<FhirAnnotation>(this as FhirAnnotation, _$identity);

  /// Serializes this FhirAnnotation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirAnnotation&&(identical(other.authorReference, authorReference) || other.authorReference == authorReference)&&(identical(other.authorString, authorString) || other.authorString == authorString)&&(identical(other.time, time) || other.time == time)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorReference,authorString,time,text);

@override
String toString() {
  return 'FhirAnnotation(authorReference: $authorReference, authorString: $authorString, time: $time, text: $text)';
}


}

/// @nodoc
abstract mixin class $FhirAnnotationCopyWith<$Res>  {
  factory $FhirAnnotationCopyWith(FhirAnnotation value, $Res Function(FhirAnnotation) _then) = _$FhirAnnotationCopyWithImpl;
@useResult
$Res call({
 FhirReference? authorReference, String? authorString, String? time, String text
});


$FhirReferenceCopyWith<$Res>? get authorReference;

}
/// @nodoc
class _$FhirAnnotationCopyWithImpl<$Res>
    implements $FhirAnnotationCopyWith<$Res> {
  _$FhirAnnotationCopyWithImpl(this._self, this._then);

  final FhirAnnotation _self;
  final $Res Function(FhirAnnotation) _then;

/// Create a copy of FhirAnnotation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authorReference = freezed,Object? authorString = freezed,Object? time = freezed,Object? text = null,}) {
  return _then(_self.copyWith(
authorReference: freezed == authorReference ? _self.authorReference : authorReference // ignore: cast_nullable_to_non_nullable
as FhirReference?,authorString: freezed == authorString ? _self.authorString : authorString // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of FhirAnnotation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get authorReference {
    if (_self.authorReference == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.authorReference!, (value) {
    return _then(_self.copyWith(authorReference: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirAnnotation].
extension FhirAnnotationPatterns on FhirAnnotation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirAnnotation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirAnnotation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirAnnotation value)  $default,){
final _that = this;
switch (_that) {
case _FhirAnnotation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirAnnotation value)?  $default,){
final _that = this;
switch (_that) {
case _FhirAnnotation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FhirReference? authorReference,  String? authorString,  String? time,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirAnnotation() when $default != null:
return $default(_that.authorReference,_that.authorString,_that.time,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FhirReference? authorReference,  String? authorString,  String? time,  String text)  $default,) {final _that = this;
switch (_that) {
case _FhirAnnotation():
return $default(_that.authorReference,_that.authorString,_that.time,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FhirReference? authorReference,  String? authorString,  String? time,  String text)?  $default,) {final _that = this;
switch (_that) {
case _FhirAnnotation() when $default != null:
return $default(_that.authorReference,_that.authorString,_that.time,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirAnnotation implements FhirAnnotation {
  const _FhirAnnotation({this.authorReference, this.authorString, this.time, required this.text});
  factory _FhirAnnotation.fromJson(Map<String, dynamic> json) => _$FhirAnnotationFromJson(json);

@override final  FhirReference? authorReference;
@override final  String? authorString;
@override final  String? time;
@override final  String text;

/// Create a copy of FhirAnnotation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirAnnotationCopyWith<_FhirAnnotation> get copyWith => __$FhirAnnotationCopyWithImpl<_FhirAnnotation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirAnnotationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirAnnotation&&(identical(other.authorReference, authorReference) || other.authorReference == authorReference)&&(identical(other.authorString, authorString) || other.authorString == authorString)&&(identical(other.time, time) || other.time == time)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorReference,authorString,time,text);

@override
String toString() {
  return 'FhirAnnotation(authorReference: $authorReference, authorString: $authorString, time: $time, text: $text)';
}


}

/// @nodoc
abstract mixin class _$FhirAnnotationCopyWith<$Res> implements $FhirAnnotationCopyWith<$Res> {
  factory _$FhirAnnotationCopyWith(_FhirAnnotation value, $Res Function(_FhirAnnotation) _then) = __$FhirAnnotationCopyWithImpl;
@override @useResult
$Res call({
 FhirReference? authorReference, String? authorString, String? time, String text
});


@override $FhirReferenceCopyWith<$Res>? get authorReference;

}
/// @nodoc
class __$FhirAnnotationCopyWithImpl<$Res>
    implements _$FhirAnnotationCopyWith<$Res> {
  __$FhirAnnotationCopyWithImpl(this._self, this._then);

  final _FhirAnnotation _self;
  final $Res Function(_FhirAnnotation) _then;

/// Create a copy of FhirAnnotation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authorReference = freezed,Object? authorString = freezed,Object? time = freezed,Object? text = null,}) {
  return _then(_FhirAnnotation(
authorReference: freezed == authorReference ? _self.authorReference : authorReference // ignore: cast_nullable_to_non_nullable
as FhirReference?,authorString: freezed == authorString ? _self.authorString : authorString // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of FhirAnnotation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get authorReference {
    if (_self.authorReference == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.authorReference!, (value) {
    return _then(_self.copyWith(authorReference: value));
  });
}
}


/// @nodoc
mixin _$FhirReferenceRange {

 FhirQuantity? get low; FhirQuantity? get high; FhirCodeableConcept? get type; List<FhirCodeableConcept> get appliesTo; FhirRange? get age; String? get text;
/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirReferenceRangeCopyWith<FhirReferenceRange> get copyWith => _$FhirReferenceRangeCopyWithImpl<FhirReferenceRange>(this as FhirReferenceRange, _$identity);

  /// Serializes this FhirReferenceRange to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirReferenceRange&&(identical(other.low, low) || other.low == low)&&(identical(other.high, high) || other.high == high)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.appliesTo, appliesTo)&&(identical(other.age, age) || other.age == age)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,low,high,type,const DeepCollectionEquality().hash(appliesTo),age,text);

@override
String toString() {
  return 'FhirReferenceRange(low: $low, high: $high, type: $type, appliesTo: $appliesTo, age: $age, text: $text)';
}


}

/// @nodoc
abstract mixin class $FhirReferenceRangeCopyWith<$Res>  {
  factory $FhirReferenceRangeCopyWith(FhirReferenceRange value, $Res Function(FhirReferenceRange) _then) = _$FhirReferenceRangeCopyWithImpl;
@useResult
$Res call({
 FhirQuantity? low, FhirQuantity? high, FhirCodeableConcept? type, List<FhirCodeableConcept> appliesTo, FhirRange? age, String? text
});


$FhirQuantityCopyWith<$Res>? get low;$FhirQuantityCopyWith<$Res>? get high;$FhirCodeableConceptCopyWith<$Res>? get type;$FhirRangeCopyWith<$Res>? get age;

}
/// @nodoc
class _$FhirReferenceRangeCopyWithImpl<$Res>
    implements $FhirReferenceRangeCopyWith<$Res> {
  _$FhirReferenceRangeCopyWithImpl(this._self, this._then);

  final FhirReferenceRange _self;
  final $Res Function(FhirReferenceRange) _then;

/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? low = freezed,Object? high = freezed,Object? type = freezed,Object? appliesTo = null,Object? age = freezed,Object? text = freezed,}) {
  return _then(_self.copyWith(
low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,appliesTo: null == appliesTo ? _self.appliesTo : appliesTo // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as FhirRange?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get low {
    if (_self.low == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.low!, (value) {
    return _then(_self.copyWith(low: value));
  });
}/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get high {
    if (_self.high == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.high!, (value) {
    return _then(_self.copyWith(high: value));
  });
}/// Create a copy of FhirReferenceRange
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
}/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get age {
    if (_self.age == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.age!, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirReferenceRange].
extension FhirReferenceRangePatterns on FhirReferenceRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirReferenceRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirReferenceRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirReferenceRange value)  $default,){
final _that = this;
switch (_that) {
case _FhirReferenceRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirReferenceRange value)?  $default,){
final _that = this;
switch (_that) {
case _FhirReferenceRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FhirQuantity? low,  FhirQuantity? high,  FhirCodeableConcept? type,  List<FhirCodeableConcept> appliesTo,  FhirRange? age,  String? text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirReferenceRange() when $default != null:
return $default(_that.low,_that.high,_that.type,_that.appliesTo,_that.age,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FhirQuantity? low,  FhirQuantity? high,  FhirCodeableConcept? type,  List<FhirCodeableConcept> appliesTo,  FhirRange? age,  String? text)  $default,) {final _that = this;
switch (_that) {
case _FhirReferenceRange():
return $default(_that.low,_that.high,_that.type,_that.appliesTo,_that.age,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FhirQuantity? low,  FhirQuantity? high,  FhirCodeableConcept? type,  List<FhirCodeableConcept> appliesTo,  FhirRange? age,  String? text)?  $default,) {final _that = this;
switch (_that) {
case _FhirReferenceRange() when $default != null:
return $default(_that.low,_that.high,_that.type,_that.appliesTo,_that.age,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirReferenceRange implements FhirReferenceRange {
  const _FhirReferenceRange({this.low, this.high, this.type, final  List<FhirCodeableConcept> appliesTo = const [], this.age, this.text}): _appliesTo = appliesTo;
  factory _FhirReferenceRange.fromJson(Map<String, dynamic> json) => _$FhirReferenceRangeFromJson(json);

@override final  FhirQuantity? low;
@override final  FhirQuantity? high;
@override final  FhirCodeableConcept? type;
 final  List<FhirCodeableConcept> _appliesTo;
@override@JsonKey() List<FhirCodeableConcept> get appliesTo {
  if (_appliesTo is EqualUnmodifiableListView) return _appliesTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appliesTo);
}

@override final  FhirRange? age;
@override final  String? text;

/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirReferenceRangeCopyWith<_FhirReferenceRange> get copyWith => __$FhirReferenceRangeCopyWithImpl<_FhirReferenceRange>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirReferenceRangeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirReferenceRange&&(identical(other.low, low) || other.low == low)&&(identical(other.high, high) || other.high == high)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._appliesTo, _appliesTo)&&(identical(other.age, age) || other.age == age)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,low,high,type,const DeepCollectionEquality().hash(_appliesTo),age,text);

@override
String toString() {
  return 'FhirReferenceRange(low: $low, high: $high, type: $type, appliesTo: $appliesTo, age: $age, text: $text)';
}


}

/// @nodoc
abstract mixin class _$FhirReferenceRangeCopyWith<$Res> implements $FhirReferenceRangeCopyWith<$Res> {
  factory _$FhirReferenceRangeCopyWith(_FhirReferenceRange value, $Res Function(_FhirReferenceRange) _then) = __$FhirReferenceRangeCopyWithImpl;
@override @useResult
$Res call({
 FhirQuantity? low, FhirQuantity? high, FhirCodeableConcept? type, List<FhirCodeableConcept> appliesTo, FhirRange? age, String? text
});


@override $FhirQuantityCopyWith<$Res>? get low;@override $FhirQuantityCopyWith<$Res>? get high;@override $FhirCodeableConceptCopyWith<$Res>? get type;@override $FhirRangeCopyWith<$Res>? get age;

}
/// @nodoc
class __$FhirReferenceRangeCopyWithImpl<$Res>
    implements _$FhirReferenceRangeCopyWith<$Res> {
  __$FhirReferenceRangeCopyWithImpl(this._self, this._then);

  final _FhirReferenceRange _self;
  final $Res Function(_FhirReferenceRange) _then;

/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? low = freezed,Object? high = freezed,Object? type = freezed,Object? appliesTo = null,Object? age = freezed,Object? text = freezed,}) {
  return _then(_FhirReferenceRange(
low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,appliesTo: null == appliesTo ? _self._appliesTo : appliesTo // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as FhirRange?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get low {
    if (_self.low == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.low!, (value) {
    return _then(_self.copyWith(low: value));
  });
}/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get high {
    if (_self.high == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.high!, (value) {
    return _then(_self.copyWith(high: value));
  });
}/// Create a copy of FhirReferenceRange
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
}/// Create a copy of FhirReferenceRange
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get age {
    if (_self.age == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.age!, (value) {
    return _then(_self.copyWith(age: value));
  });
}
}


/// @nodoc
mixin _$FhirObservationComponent {

 FhirCodeableConcept get code; FhirQuantity? get valueQuantity; FhirCodeableConcept? get valueCodeableConcept; String? get valueString; bool? get valueBoolean; FhirRange? get valueRange; FhirCodeableConcept? get dataAbsentReason; List<FhirCodeableConcept> get interpretation; List<FhirReferenceRange> get referenceRange;
/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirObservationComponentCopyWith<FhirObservationComponent> get copyWith => _$FhirObservationComponentCopyWithImpl<FhirObservationComponent>(this as FhirObservationComponent, _$identity);

  /// Serializes this FhirObservationComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirObservationComponent&&(identical(other.code, code) || other.code == code)&&(identical(other.valueQuantity, valueQuantity) || other.valueQuantity == valueQuantity)&&(identical(other.valueCodeableConcept, valueCodeableConcept) || other.valueCodeableConcept == valueCodeableConcept)&&(identical(other.valueString, valueString) || other.valueString == valueString)&&(identical(other.valueBoolean, valueBoolean) || other.valueBoolean == valueBoolean)&&(identical(other.valueRange, valueRange) || other.valueRange == valueRange)&&(identical(other.dataAbsentReason, dataAbsentReason) || other.dataAbsentReason == dataAbsentReason)&&const DeepCollectionEquality().equals(other.interpretation, interpretation)&&const DeepCollectionEquality().equals(other.referenceRange, referenceRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,valueQuantity,valueCodeableConcept,valueString,valueBoolean,valueRange,dataAbsentReason,const DeepCollectionEquality().hash(interpretation),const DeepCollectionEquality().hash(referenceRange));

@override
String toString() {
  return 'FhirObservationComponent(code: $code, valueQuantity: $valueQuantity, valueCodeableConcept: $valueCodeableConcept, valueString: $valueString, valueBoolean: $valueBoolean, valueRange: $valueRange, dataAbsentReason: $dataAbsentReason, interpretation: $interpretation, referenceRange: $referenceRange)';
}


}

/// @nodoc
abstract mixin class $FhirObservationComponentCopyWith<$Res>  {
  factory $FhirObservationComponentCopyWith(FhirObservationComponent value, $Res Function(FhirObservationComponent) _then) = _$FhirObservationComponentCopyWithImpl;
@useResult
$Res call({
 FhirCodeableConcept code, FhirQuantity? valueQuantity, FhirCodeableConcept? valueCodeableConcept, String? valueString, bool? valueBoolean, FhirRange? valueRange, FhirCodeableConcept? dataAbsentReason, List<FhirCodeableConcept> interpretation, List<FhirReferenceRange> referenceRange
});


$FhirCodeableConceptCopyWith<$Res> get code;$FhirQuantityCopyWith<$Res>? get valueQuantity;$FhirCodeableConceptCopyWith<$Res>? get valueCodeableConcept;$FhirRangeCopyWith<$Res>? get valueRange;$FhirCodeableConceptCopyWith<$Res>? get dataAbsentReason;

}
/// @nodoc
class _$FhirObservationComponentCopyWithImpl<$Res>
    implements $FhirObservationComponentCopyWith<$Res> {
  _$FhirObservationComponentCopyWithImpl(this._self, this._then);

  final FhirObservationComponent _self;
  final $Res Function(FhirObservationComponent) _then;

/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? valueQuantity = freezed,Object? valueCodeableConcept = freezed,Object? valueString = freezed,Object? valueBoolean = freezed,Object? valueRange = freezed,Object? dataAbsentReason = freezed,Object? interpretation = null,Object? referenceRange = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept,valueQuantity: freezed == valueQuantity ? _self.valueQuantity : valueQuantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,valueCodeableConcept: freezed == valueCodeableConcept ? _self.valueCodeableConcept : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,valueString: freezed == valueString ? _self.valueString : valueString // ignore: cast_nullable_to_non_nullable
as String?,valueBoolean: freezed == valueBoolean ? _self.valueBoolean : valueBoolean // ignore: cast_nullable_to_non_nullable
as bool?,valueRange: freezed == valueRange ? _self.valueRange : valueRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,dataAbsentReason: freezed == dataAbsentReason ? _self.dataAbsentReason : dataAbsentReason // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,interpretation: null == interpretation ? _self.interpretation : interpretation // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,referenceRange: null == referenceRange ? _self.referenceRange : referenceRange // ignore: cast_nullable_to_non_nullable
as List<FhirReferenceRange>,
  ));
}
/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res> get code {
  
  return $FhirCodeableConceptCopyWith<$Res>(_self.code, (value) {
    return _then(_self.copyWith(code: value));
  });
}/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get valueQuantity {
    if (_self.valueQuantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.valueQuantity!, (value) {
    return _then(_self.copyWith(valueQuantity: value));
  });
}/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get valueCodeableConcept {
    if (_self.valueCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.valueCodeableConcept!, (value) {
    return _then(_self.copyWith(valueCodeableConcept: value));
  });
}/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get valueRange {
    if (_self.valueRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.valueRange!, (value) {
    return _then(_self.copyWith(valueRange: value));
  });
}/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get dataAbsentReason {
    if (_self.dataAbsentReason == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.dataAbsentReason!, (value) {
    return _then(_self.copyWith(dataAbsentReason: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirObservationComponent].
extension FhirObservationComponentPatterns on FhirObservationComponent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirObservationComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirObservationComponent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirObservationComponent value)  $default,){
final _that = this;
switch (_that) {
case _FhirObservationComponent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirObservationComponent value)?  $default,){
final _that = this;
switch (_that) {
case _FhirObservationComponent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FhirCodeableConcept code,  FhirQuantity? valueQuantity,  FhirCodeableConcept? valueCodeableConcept,  String? valueString,  bool? valueBoolean,  FhirRange? valueRange,  FhirCodeableConcept? dataAbsentReason,  List<FhirCodeableConcept> interpretation,  List<FhirReferenceRange> referenceRange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirObservationComponent() when $default != null:
return $default(_that.code,_that.valueQuantity,_that.valueCodeableConcept,_that.valueString,_that.valueBoolean,_that.valueRange,_that.dataAbsentReason,_that.interpretation,_that.referenceRange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FhirCodeableConcept code,  FhirQuantity? valueQuantity,  FhirCodeableConcept? valueCodeableConcept,  String? valueString,  bool? valueBoolean,  FhirRange? valueRange,  FhirCodeableConcept? dataAbsentReason,  List<FhirCodeableConcept> interpretation,  List<FhirReferenceRange> referenceRange)  $default,) {final _that = this;
switch (_that) {
case _FhirObservationComponent():
return $default(_that.code,_that.valueQuantity,_that.valueCodeableConcept,_that.valueString,_that.valueBoolean,_that.valueRange,_that.dataAbsentReason,_that.interpretation,_that.referenceRange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FhirCodeableConcept code,  FhirQuantity? valueQuantity,  FhirCodeableConcept? valueCodeableConcept,  String? valueString,  bool? valueBoolean,  FhirRange? valueRange,  FhirCodeableConcept? dataAbsentReason,  List<FhirCodeableConcept> interpretation,  List<FhirReferenceRange> referenceRange)?  $default,) {final _that = this;
switch (_that) {
case _FhirObservationComponent() when $default != null:
return $default(_that.code,_that.valueQuantity,_that.valueCodeableConcept,_that.valueString,_that.valueBoolean,_that.valueRange,_that.dataAbsentReason,_that.interpretation,_that.referenceRange);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirObservationComponent implements FhirObservationComponent {
  const _FhirObservationComponent({required this.code, this.valueQuantity, this.valueCodeableConcept, this.valueString, this.valueBoolean, this.valueRange, this.dataAbsentReason, final  List<FhirCodeableConcept> interpretation = const [], final  List<FhirReferenceRange> referenceRange = const []}): _interpretation = interpretation,_referenceRange = referenceRange;
  factory _FhirObservationComponent.fromJson(Map<String, dynamic> json) => _$FhirObservationComponentFromJson(json);

@override final  FhirCodeableConcept code;
@override final  FhirQuantity? valueQuantity;
@override final  FhirCodeableConcept? valueCodeableConcept;
@override final  String? valueString;
@override final  bool? valueBoolean;
@override final  FhirRange? valueRange;
@override final  FhirCodeableConcept? dataAbsentReason;
 final  List<FhirCodeableConcept> _interpretation;
@override@JsonKey() List<FhirCodeableConcept> get interpretation {
  if (_interpretation is EqualUnmodifiableListView) return _interpretation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interpretation);
}

 final  List<FhirReferenceRange> _referenceRange;
@override@JsonKey() List<FhirReferenceRange> get referenceRange {
  if (_referenceRange is EqualUnmodifiableListView) return _referenceRange;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_referenceRange);
}


/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirObservationComponentCopyWith<_FhirObservationComponent> get copyWith => __$FhirObservationComponentCopyWithImpl<_FhirObservationComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirObservationComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirObservationComponent&&(identical(other.code, code) || other.code == code)&&(identical(other.valueQuantity, valueQuantity) || other.valueQuantity == valueQuantity)&&(identical(other.valueCodeableConcept, valueCodeableConcept) || other.valueCodeableConcept == valueCodeableConcept)&&(identical(other.valueString, valueString) || other.valueString == valueString)&&(identical(other.valueBoolean, valueBoolean) || other.valueBoolean == valueBoolean)&&(identical(other.valueRange, valueRange) || other.valueRange == valueRange)&&(identical(other.dataAbsentReason, dataAbsentReason) || other.dataAbsentReason == dataAbsentReason)&&const DeepCollectionEquality().equals(other._interpretation, _interpretation)&&const DeepCollectionEquality().equals(other._referenceRange, _referenceRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,valueQuantity,valueCodeableConcept,valueString,valueBoolean,valueRange,dataAbsentReason,const DeepCollectionEquality().hash(_interpretation),const DeepCollectionEquality().hash(_referenceRange));

@override
String toString() {
  return 'FhirObservationComponent(code: $code, valueQuantity: $valueQuantity, valueCodeableConcept: $valueCodeableConcept, valueString: $valueString, valueBoolean: $valueBoolean, valueRange: $valueRange, dataAbsentReason: $dataAbsentReason, interpretation: $interpretation, referenceRange: $referenceRange)';
}


}

/// @nodoc
abstract mixin class _$FhirObservationComponentCopyWith<$Res> implements $FhirObservationComponentCopyWith<$Res> {
  factory _$FhirObservationComponentCopyWith(_FhirObservationComponent value, $Res Function(_FhirObservationComponent) _then) = __$FhirObservationComponentCopyWithImpl;
@override @useResult
$Res call({
 FhirCodeableConcept code, FhirQuantity? valueQuantity, FhirCodeableConcept? valueCodeableConcept, String? valueString, bool? valueBoolean, FhirRange? valueRange, FhirCodeableConcept? dataAbsentReason, List<FhirCodeableConcept> interpretation, List<FhirReferenceRange> referenceRange
});


@override $FhirCodeableConceptCopyWith<$Res> get code;@override $FhirQuantityCopyWith<$Res>? get valueQuantity;@override $FhirCodeableConceptCopyWith<$Res>? get valueCodeableConcept;@override $FhirRangeCopyWith<$Res>? get valueRange;@override $FhirCodeableConceptCopyWith<$Res>? get dataAbsentReason;

}
/// @nodoc
class __$FhirObservationComponentCopyWithImpl<$Res>
    implements _$FhirObservationComponentCopyWith<$Res> {
  __$FhirObservationComponentCopyWithImpl(this._self, this._then);

  final _FhirObservationComponent _self;
  final $Res Function(_FhirObservationComponent) _then;

/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? valueQuantity = freezed,Object? valueCodeableConcept = freezed,Object? valueString = freezed,Object? valueBoolean = freezed,Object? valueRange = freezed,Object? dataAbsentReason = freezed,Object? interpretation = null,Object? referenceRange = null,}) {
  return _then(_FhirObservationComponent(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept,valueQuantity: freezed == valueQuantity ? _self.valueQuantity : valueQuantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,valueCodeableConcept: freezed == valueCodeableConcept ? _self.valueCodeableConcept : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,valueString: freezed == valueString ? _self.valueString : valueString // ignore: cast_nullable_to_non_nullable
as String?,valueBoolean: freezed == valueBoolean ? _self.valueBoolean : valueBoolean // ignore: cast_nullable_to_non_nullable
as bool?,valueRange: freezed == valueRange ? _self.valueRange : valueRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,dataAbsentReason: freezed == dataAbsentReason ? _self.dataAbsentReason : dataAbsentReason // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,interpretation: null == interpretation ? _self._interpretation : interpretation // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,referenceRange: null == referenceRange ? _self._referenceRange : referenceRange // ignore: cast_nullable_to_non_nullable
as List<FhirReferenceRange>,
  ));
}

/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res> get code {
  
  return $FhirCodeableConceptCopyWith<$Res>(_self.code, (value) {
    return _then(_self.copyWith(code: value));
  });
}/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get valueQuantity {
    if (_self.valueQuantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.valueQuantity!, (value) {
    return _then(_self.copyWith(valueQuantity: value));
  });
}/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get valueCodeableConcept {
    if (_self.valueCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.valueCodeableConcept!, (value) {
    return _then(_self.copyWith(valueCodeableConcept: value));
  });
}/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get valueRange {
    if (_self.valueRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.valueRange!, (value) {
    return _then(_self.copyWith(valueRange: value));
  });
}/// Create a copy of FhirObservationComponent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get dataAbsentReason {
    if (_self.dataAbsentReason == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.dataAbsentReason!, (value) {
    return _then(_self.copyWith(dataAbsentReason: value));
  });
}
}

// dart format on
