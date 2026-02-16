// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FhirMedicationRequest {

 String get id; String get resourceType; List<FhirIdentifier> get identifier; String get status;// active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown
 String? get statusReason; String get intent;// proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option
 List<FhirCodeableConcept> get category; String? get priority;// routine | urgent | asap | stat
 bool? get doNotPerform; FhirCodeableConcept? get medicationCodeableConcept; FhirReference? get medicationReference; FhirReference get subject;// Reference to Patient
 FhirReference? get encounter; List<FhirReference> get supportingInformation; String? get authoredOn;// DateTime
 FhirReference? get requester;// Reference to Practitioner
 FhirReference? get performer; FhirCodeableConcept? get performerType; FhirReference? get recorder; List<FhirCodeableConcept> get reasonCode; List<FhirReference> get reasonReference; List<String> get instantiatesCanonical; List<String> get instantiatesUri; List<FhirReference> get basedOn; FhirIdentifier? get groupIdentifier; FhirCodeableConcept? get courseOfTherapyType; List<FhirReference> get insurance; List<FhirAnnotation> get note; List<FhirDosage> get dosageInstruction; FhirMedicationRequestDispenseRequest? get dispenseRequest; FhirMedicationRequestSubstitution? get substitution; FhirReference? get priorPrescription; List<FhirReference> get detectedIssue; List<FhirReference> get eventHistory; FhirMeta? get meta;
/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirMedicationRequestCopyWith<FhirMedicationRequest> get copyWith => _$FhirMedicationRequestCopyWithImpl<FhirMedicationRequest>(this as FhirMedicationRequest, _$identity);

  /// Serializes this FhirMedicationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirMedicationRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&const DeepCollectionEquality().equals(other.identifier, identifier)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusReason, statusReason) || other.statusReason == statusReason)&&(identical(other.intent, intent) || other.intent == intent)&&const DeepCollectionEquality().equals(other.category, category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.doNotPerform, doNotPerform) || other.doNotPerform == doNotPerform)&&(identical(other.medicationCodeableConcept, medicationCodeableConcept) || other.medicationCodeableConcept == medicationCodeableConcept)&&(identical(other.medicationReference, medicationReference) || other.medicationReference == medicationReference)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.encounter, encounter) || other.encounter == encounter)&&const DeepCollectionEquality().equals(other.supportingInformation, supportingInformation)&&(identical(other.authoredOn, authoredOn) || other.authoredOn == authoredOn)&&(identical(other.requester, requester) || other.requester == requester)&&(identical(other.performer, performer) || other.performer == performer)&&(identical(other.performerType, performerType) || other.performerType == performerType)&&(identical(other.recorder, recorder) || other.recorder == recorder)&&const DeepCollectionEquality().equals(other.reasonCode, reasonCode)&&const DeepCollectionEquality().equals(other.reasonReference, reasonReference)&&const DeepCollectionEquality().equals(other.instantiatesCanonical, instantiatesCanonical)&&const DeepCollectionEquality().equals(other.instantiatesUri, instantiatesUri)&&const DeepCollectionEquality().equals(other.basedOn, basedOn)&&(identical(other.groupIdentifier, groupIdentifier) || other.groupIdentifier == groupIdentifier)&&(identical(other.courseOfTherapyType, courseOfTherapyType) || other.courseOfTherapyType == courseOfTherapyType)&&const DeepCollectionEquality().equals(other.insurance, insurance)&&const DeepCollectionEquality().equals(other.note, note)&&const DeepCollectionEquality().equals(other.dosageInstruction, dosageInstruction)&&(identical(other.dispenseRequest, dispenseRequest) || other.dispenseRequest == dispenseRequest)&&(identical(other.substitution, substitution) || other.substitution == substitution)&&(identical(other.priorPrescription, priorPrescription) || other.priorPrescription == priorPrescription)&&const DeepCollectionEquality().equals(other.detectedIssue, detectedIssue)&&const DeepCollectionEquality().equals(other.eventHistory, eventHistory)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,resourceType,const DeepCollectionEquality().hash(identifier),status,statusReason,intent,const DeepCollectionEquality().hash(category),priority,doNotPerform,medicationCodeableConcept,medicationReference,subject,encounter,const DeepCollectionEquality().hash(supportingInformation),authoredOn,requester,performer,performerType,recorder,const DeepCollectionEquality().hash(reasonCode),const DeepCollectionEquality().hash(reasonReference),const DeepCollectionEquality().hash(instantiatesCanonical),const DeepCollectionEquality().hash(instantiatesUri),const DeepCollectionEquality().hash(basedOn),groupIdentifier,courseOfTherapyType,const DeepCollectionEquality().hash(insurance),const DeepCollectionEquality().hash(note),const DeepCollectionEquality().hash(dosageInstruction),dispenseRequest,substitution,priorPrescription,const DeepCollectionEquality().hash(detectedIssue),const DeepCollectionEquality().hash(eventHistory),meta]);

@override
String toString() {
  return 'FhirMedicationRequest(id: $id, resourceType: $resourceType, identifier: $identifier, status: $status, statusReason: $statusReason, intent: $intent, category: $category, priority: $priority, doNotPerform: $doNotPerform, medicationCodeableConcept: $medicationCodeableConcept, medicationReference: $medicationReference, subject: $subject, encounter: $encounter, supportingInformation: $supportingInformation, authoredOn: $authoredOn, requester: $requester, performer: $performer, performerType: $performerType, recorder: $recorder, reasonCode: $reasonCode, reasonReference: $reasonReference, instantiatesCanonical: $instantiatesCanonical, instantiatesUri: $instantiatesUri, basedOn: $basedOn, groupIdentifier: $groupIdentifier, courseOfTherapyType: $courseOfTherapyType, insurance: $insurance, note: $note, dosageInstruction: $dosageInstruction, dispenseRequest: $dispenseRequest, substitution: $substitution, priorPrescription: $priorPrescription, detectedIssue: $detectedIssue, eventHistory: $eventHistory, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $FhirMedicationRequestCopyWith<$Res>  {
  factory $FhirMedicationRequestCopyWith(FhirMedicationRequest value, $Res Function(FhirMedicationRequest) _then) = _$FhirMedicationRequestCopyWithImpl;
@useResult
$Res call({
 String id, String resourceType, List<FhirIdentifier> identifier, String status, String? statusReason, String intent, List<FhirCodeableConcept> category, String? priority, bool? doNotPerform, FhirCodeableConcept? medicationCodeableConcept, FhirReference? medicationReference, FhirReference subject, FhirReference? encounter, List<FhirReference> supportingInformation, String? authoredOn, FhirReference? requester, FhirReference? performer, FhirCodeableConcept? performerType, FhirReference? recorder, List<FhirCodeableConcept> reasonCode, List<FhirReference> reasonReference, List<String> instantiatesCanonical, List<String> instantiatesUri, List<FhirReference> basedOn, FhirIdentifier? groupIdentifier, FhirCodeableConcept? courseOfTherapyType, List<FhirReference> insurance, List<FhirAnnotation> note, List<FhirDosage> dosageInstruction, FhirMedicationRequestDispenseRequest? dispenseRequest, FhirMedicationRequestSubstitution? substitution, FhirReference? priorPrescription, List<FhirReference> detectedIssue, List<FhirReference> eventHistory, FhirMeta? meta
});


$FhirCodeableConceptCopyWith<$Res>? get medicationCodeableConcept;$FhirReferenceCopyWith<$Res>? get medicationReference;$FhirReferenceCopyWith<$Res> get subject;$FhirReferenceCopyWith<$Res>? get encounter;$FhirReferenceCopyWith<$Res>? get requester;$FhirReferenceCopyWith<$Res>? get performer;$FhirCodeableConceptCopyWith<$Res>? get performerType;$FhirReferenceCopyWith<$Res>? get recorder;$FhirIdentifierCopyWith<$Res>? get groupIdentifier;$FhirCodeableConceptCopyWith<$Res>? get courseOfTherapyType;$FhirMedicationRequestDispenseRequestCopyWith<$Res>? get dispenseRequest;$FhirMedicationRequestSubstitutionCopyWith<$Res>? get substitution;$FhirReferenceCopyWith<$Res>? get priorPrescription;$FhirMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$FhirMedicationRequestCopyWithImpl<$Res>
    implements $FhirMedicationRequestCopyWith<$Res> {
  _$FhirMedicationRequestCopyWithImpl(this._self, this._then);

  final FhirMedicationRequest _self;
  final $Res Function(FhirMedicationRequest) _then;

/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? resourceType = null,Object? identifier = null,Object? status = null,Object? statusReason = freezed,Object? intent = null,Object? category = null,Object? priority = freezed,Object? doNotPerform = freezed,Object? medicationCodeableConcept = freezed,Object? medicationReference = freezed,Object? subject = null,Object? encounter = freezed,Object? supportingInformation = null,Object? authoredOn = freezed,Object? requester = freezed,Object? performer = freezed,Object? performerType = freezed,Object? recorder = freezed,Object? reasonCode = null,Object? reasonReference = null,Object? instantiatesCanonical = null,Object? instantiatesUri = null,Object? basedOn = null,Object? groupIdentifier = freezed,Object? courseOfTherapyType = freezed,Object? insurance = null,Object? note = null,Object? dosageInstruction = null,Object? dispenseRequest = freezed,Object? substitution = freezed,Object? priorPrescription = freezed,Object? detectedIssue = null,Object? eventHistory = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusReason: freezed == statusReason ? _self.statusReason : statusReason // ignore: cast_nullable_to_non_nullable
as String?,intent: null == intent ? _self.intent : intent // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,doNotPerform: freezed == doNotPerform ? _self.doNotPerform : doNotPerform // ignore: cast_nullable_to_non_nullable
as bool?,medicationCodeableConcept: freezed == medicationCodeableConcept ? _self.medicationCodeableConcept : medicationCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,medicationReference: freezed == medicationReference ? _self.medicationReference : medicationReference // ignore: cast_nullable_to_non_nullable
as FhirReference?,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as FhirReference,encounter: freezed == encounter ? _self.encounter : encounter // ignore: cast_nullable_to_non_nullable
as FhirReference?,supportingInformation: null == supportingInformation ? _self.supportingInformation : supportingInformation // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,authoredOn: freezed == authoredOn ? _self.authoredOn : authoredOn // ignore: cast_nullable_to_non_nullable
as String?,requester: freezed == requester ? _self.requester : requester // ignore: cast_nullable_to_non_nullable
as FhirReference?,performer: freezed == performer ? _self.performer : performer // ignore: cast_nullable_to_non_nullable
as FhirReference?,performerType: freezed == performerType ? _self.performerType : performerType // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,recorder: freezed == recorder ? _self.recorder : recorder // ignore: cast_nullable_to_non_nullable
as FhirReference?,reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,reasonReference: null == reasonReference ? _self.reasonReference : reasonReference // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,instantiatesCanonical: null == instantiatesCanonical ? _self.instantiatesCanonical : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
as List<String>,instantiatesUri: null == instantiatesUri ? _self.instantiatesUri : instantiatesUri // ignore: cast_nullable_to_non_nullable
as List<String>,basedOn: null == basedOn ? _self.basedOn : basedOn // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,groupIdentifier: freezed == groupIdentifier ? _self.groupIdentifier : groupIdentifier // ignore: cast_nullable_to_non_nullable
as FhirIdentifier?,courseOfTherapyType: freezed == courseOfTherapyType ? _self.courseOfTherapyType : courseOfTherapyType // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,insurance: null == insurance ? _self.insurance : insurance // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as List<FhirAnnotation>,dosageInstruction: null == dosageInstruction ? _self.dosageInstruction : dosageInstruction // ignore: cast_nullable_to_non_nullable
as List<FhirDosage>,dispenseRequest: freezed == dispenseRequest ? _self.dispenseRequest : dispenseRequest // ignore: cast_nullable_to_non_nullable
as FhirMedicationRequestDispenseRequest?,substitution: freezed == substitution ? _self.substitution : substitution // ignore: cast_nullable_to_non_nullable
as FhirMedicationRequestSubstitution?,priorPrescription: freezed == priorPrescription ? _self.priorPrescription : priorPrescription // ignore: cast_nullable_to_non_nullable
as FhirReference?,detectedIssue: null == detectedIssue ? _self.detectedIssue : detectedIssue // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,eventHistory: null == eventHistory ? _self.eventHistory : eventHistory // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FhirMeta?,
  ));
}
/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get medicationCodeableConcept {
    if (_self.medicationCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.medicationCodeableConcept!, (value) {
    return _then(_self.copyWith(medicationCodeableConcept: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get medicationReference {
    if (_self.medicationReference == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.medicationReference!, (value) {
    return _then(_self.copyWith(medicationReference: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res> get subject {
  
  return $FhirReferenceCopyWith<$Res>(_self.subject, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of FhirMedicationRequest
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
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get requester {
    if (_self.requester == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.requester!, (value) {
    return _then(_self.copyWith(requester: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get performer {
    if (_self.performer == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.performer!, (value) {
    return _then(_self.copyWith(performer: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get performerType {
    if (_self.performerType == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.performerType!, (value) {
    return _then(_self.copyWith(performerType: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get recorder {
    if (_self.recorder == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.recorder!, (value) {
    return _then(_self.copyWith(recorder: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirIdentifierCopyWith<$Res>? get groupIdentifier {
    if (_self.groupIdentifier == null) {
    return null;
  }

  return $FhirIdentifierCopyWith<$Res>(_self.groupIdentifier!, (value) {
    return _then(_self.copyWith(groupIdentifier: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get courseOfTherapyType {
    if (_self.courseOfTherapyType == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.courseOfTherapyType!, (value) {
    return _then(_self.copyWith(courseOfTherapyType: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirMedicationRequestDispenseRequestCopyWith<$Res>? get dispenseRequest {
    if (_self.dispenseRequest == null) {
    return null;
  }

  return $FhirMedicationRequestDispenseRequestCopyWith<$Res>(_self.dispenseRequest!, (value) {
    return _then(_self.copyWith(dispenseRequest: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirMedicationRequestSubstitutionCopyWith<$Res>? get substitution {
    if (_self.substitution == null) {
    return null;
  }

  return $FhirMedicationRequestSubstitutionCopyWith<$Res>(_self.substitution!, (value) {
    return _then(_self.copyWith(substitution: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get priorPrescription {
    if (_self.priorPrescription == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.priorPrescription!, (value) {
    return _then(_self.copyWith(priorPrescription: value));
  });
}/// Create a copy of FhirMedicationRequest
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


/// Adds pattern-matching-related methods to [FhirMedicationRequest].
extension FhirMedicationRequestPatterns on FhirMedicationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirMedicationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirMedicationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirMedicationRequest value)  $default,){
final _that = this;
switch (_that) {
case _FhirMedicationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirMedicationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _FhirMedicationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  String status,  String? statusReason,  String intent,  List<FhirCodeableConcept> category,  String? priority,  bool? doNotPerform,  FhirCodeableConcept? medicationCodeableConcept,  FhirReference? medicationReference,  FhirReference subject,  FhirReference? encounter,  List<FhirReference> supportingInformation,  String? authoredOn,  FhirReference? requester,  FhirReference? performer,  FhirCodeableConcept? performerType,  FhirReference? recorder,  List<FhirCodeableConcept> reasonCode,  List<FhirReference> reasonReference,  List<String> instantiatesCanonical,  List<String> instantiatesUri,  List<FhirReference> basedOn,  FhirIdentifier? groupIdentifier,  FhirCodeableConcept? courseOfTherapyType,  List<FhirReference> insurance,  List<FhirAnnotation> note,  List<FhirDosage> dosageInstruction,  FhirMedicationRequestDispenseRequest? dispenseRequest,  FhirMedicationRequestSubstitution? substitution,  FhirReference? priorPrescription,  List<FhirReference> detectedIssue,  List<FhirReference> eventHistory,  FhirMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirMedicationRequest() when $default != null:
return $default(_that.id,_that.resourceType,_that.identifier,_that.status,_that.statusReason,_that.intent,_that.category,_that.priority,_that.doNotPerform,_that.medicationCodeableConcept,_that.medicationReference,_that.subject,_that.encounter,_that.supportingInformation,_that.authoredOn,_that.requester,_that.performer,_that.performerType,_that.recorder,_that.reasonCode,_that.reasonReference,_that.instantiatesCanonical,_that.instantiatesUri,_that.basedOn,_that.groupIdentifier,_that.courseOfTherapyType,_that.insurance,_that.note,_that.dosageInstruction,_that.dispenseRequest,_that.substitution,_that.priorPrescription,_that.detectedIssue,_that.eventHistory,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  String status,  String? statusReason,  String intent,  List<FhirCodeableConcept> category,  String? priority,  bool? doNotPerform,  FhirCodeableConcept? medicationCodeableConcept,  FhirReference? medicationReference,  FhirReference subject,  FhirReference? encounter,  List<FhirReference> supportingInformation,  String? authoredOn,  FhirReference? requester,  FhirReference? performer,  FhirCodeableConcept? performerType,  FhirReference? recorder,  List<FhirCodeableConcept> reasonCode,  List<FhirReference> reasonReference,  List<String> instantiatesCanonical,  List<String> instantiatesUri,  List<FhirReference> basedOn,  FhirIdentifier? groupIdentifier,  FhirCodeableConcept? courseOfTherapyType,  List<FhirReference> insurance,  List<FhirAnnotation> note,  List<FhirDosage> dosageInstruction,  FhirMedicationRequestDispenseRequest? dispenseRequest,  FhirMedicationRequestSubstitution? substitution,  FhirReference? priorPrescription,  List<FhirReference> detectedIssue,  List<FhirReference> eventHistory,  FhirMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _FhirMedicationRequest():
return $default(_that.id,_that.resourceType,_that.identifier,_that.status,_that.statusReason,_that.intent,_that.category,_that.priority,_that.doNotPerform,_that.medicationCodeableConcept,_that.medicationReference,_that.subject,_that.encounter,_that.supportingInformation,_that.authoredOn,_that.requester,_that.performer,_that.performerType,_that.recorder,_that.reasonCode,_that.reasonReference,_that.instantiatesCanonical,_that.instantiatesUri,_that.basedOn,_that.groupIdentifier,_that.courseOfTherapyType,_that.insurance,_that.note,_that.dosageInstruction,_that.dispenseRequest,_that.substitution,_that.priorPrescription,_that.detectedIssue,_that.eventHistory,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String resourceType,  List<FhirIdentifier> identifier,  String status,  String? statusReason,  String intent,  List<FhirCodeableConcept> category,  String? priority,  bool? doNotPerform,  FhirCodeableConcept? medicationCodeableConcept,  FhirReference? medicationReference,  FhirReference subject,  FhirReference? encounter,  List<FhirReference> supportingInformation,  String? authoredOn,  FhirReference? requester,  FhirReference? performer,  FhirCodeableConcept? performerType,  FhirReference? recorder,  List<FhirCodeableConcept> reasonCode,  List<FhirReference> reasonReference,  List<String> instantiatesCanonical,  List<String> instantiatesUri,  List<FhirReference> basedOn,  FhirIdentifier? groupIdentifier,  FhirCodeableConcept? courseOfTherapyType,  List<FhirReference> insurance,  List<FhirAnnotation> note,  List<FhirDosage> dosageInstruction,  FhirMedicationRequestDispenseRequest? dispenseRequest,  FhirMedicationRequestSubstitution? substitution,  FhirReference? priorPrescription,  List<FhirReference> detectedIssue,  List<FhirReference> eventHistory,  FhirMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _FhirMedicationRequest() when $default != null:
return $default(_that.id,_that.resourceType,_that.identifier,_that.status,_that.statusReason,_that.intent,_that.category,_that.priority,_that.doNotPerform,_that.medicationCodeableConcept,_that.medicationReference,_that.subject,_that.encounter,_that.supportingInformation,_that.authoredOn,_that.requester,_that.performer,_that.performerType,_that.recorder,_that.reasonCode,_that.reasonReference,_that.instantiatesCanonical,_that.instantiatesUri,_that.basedOn,_that.groupIdentifier,_that.courseOfTherapyType,_that.insurance,_that.note,_that.dosageInstruction,_that.dispenseRequest,_that.substitution,_that.priorPrescription,_that.detectedIssue,_that.eventHistory,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirMedicationRequest implements FhirMedicationRequest {
  const _FhirMedicationRequest({required this.id, required this.resourceType, final  List<FhirIdentifier> identifier = const [], required this.status, this.statusReason, required this.intent, final  List<FhirCodeableConcept> category = const [], this.priority, this.doNotPerform, this.medicationCodeableConcept, this.medicationReference, required this.subject, this.encounter, final  List<FhirReference> supportingInformation = const [], this.authoredOn, this.requester, this.performer, this.performerType, this.recorder, final  List<FhirCodeableConcept> reasonCode = const [], final  List<FhirReference> reasonReference = const [], final  List<String> instantiatesCanonical = const [], final  List<String> instantiatesUri = const [], final  List<FhirReference> basedOn = const [], this.groupIdentifier, this.courseOfTherapyType, final  List<FhirReference> insurance = const [], final  List<FhirAnnotation> note = const [], final  List<FhirDosage> dosageInstruction = const [], this.dispenseRequest, this.substitution, this.priorPrescription, final  List<FhirReference> detectedIssue = const [], final  List<FhirReference> eventHistory = const [], this.meta}): _identifier = identifier,_category = category,_supportingInformation = supportingInformation,_reasonCode = reasonCode,_reasonReference = reasonReference,_instantiatesCanonical = instantiatesCanonical,_instantiatesUri = instantiatesUri,_basedOn = basedOn,_insurance = insurance,_note = note,_dosageInstruction = dosageInstruction,_detectedIssue = detectedIssue,_eventHistory = eventHistory;
  factory _FhirMedicationRequest.fromJson(Map<String, dynamic> json) => _$FhirMedicationRequestFromJson(json);

@override final  String id;
@override final  String resourceType;
 final  List<FhirIdentifier> _identifier;
@override@JsonKey() List<FhirIdentifier> get identifier {
  if (_identifier is EqualUnmodifiableListView) return _identifier;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_identifier);
}

@override final  String status;
// active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown
@override final  String? statusReason;
@override final  String intent;
// proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option
 final  List<FhirCodeableConcept> _category;
// proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option
@override@JsonKey() List<FhirCodeableConcept> get category {
  if (_category is EqualUnmodifiableListView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_category);
}

@override final  String? priority;
// routine | urgent | asap | stat
@override final  bool? doNotPerform;
@override final  FhirCodeableConcept? medicationCodeableConcept;
@override final  FhirReference? medicationReference;
@override final  FhirReference subject;
// Reference to Patient
@override final  FhirReference? encounter;
 final  List<FhirReference> _supportingInformation;
@override@JsonKey() List<FhirReference> get supportingInformation {
  if (_supportingInformation is EqualUnmodifiableListView) return _supportingInformation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_supportingInformation);
}

@override final  String? authoredOn;
// DateTime
@override final  FhirReference? requester;
// Reference to Practitioner
@override final  FhirReference? performer;
@override final  FhirCodeableConcept? performerType;
@override final  FhirReference? recorder;
 final  List<FhirCodeableConcept> _reasonCode;
@override@JsonKey() List<FhirCodeableConcept> get reasonCode {
  if (_reasonCode is EqualUnmodifiableListView) return _reasonCode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reasonCode);
}

 final  List<FhirReference> _reasonReference;
@override@JsonKey() List<FhirReference> get reasonReference {
  if (_reasonReference is EqualUnmodifiableListView) return _reasonReference;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reasonReference);
}

 final  List<String> _instantiatesCanonical;
@override@JsonKey() List<String> get instantiatesCanonical {
  if (_instantiatesCanonical is EqualUnmodifiableListView) return _instantiatesCanonical;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_instantiatesCanonical);
}

 final  List<String> _instantiatesUri;
@override@JsonKey() List<String> get instantiatesUri {
  if (_instantiatesUri is EqualUnmodifiableListView) return _instantiatesUri;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_instantiatesUri);
}

 final  List<FhirReference> _basedOn;
@override@JsonKey() List<FhirReference> get basedOn {
  if (_basedOn is EqualUnmodifiableListView) return _basedOn;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_basedOn);
}

@override final  FhirIdentifier? groupIdentifier;
@override final  FhirCodeableConcept? courseOfTherapyType;
 final  List<FhirReference> _insurance;
@override@JsonKey() List<FhirReference> get insurance {
  if (_insurance is EqualUnmodifiableListView) return _insurance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_insurance);
}

 final  List<FhirAnnotation> _note;
@override@JsonKey() List<FhirAnnotation> get note {
  if (_note is EqualUnmodifiableListView) return _note;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_note);
}

 final  List<FhirDosage> _dosageInstruction;
@override@JsonKey() List<FhirDosage> get dosageInstruction {
  if (_dosageInstruction is EqualUnmodifiableListView) return _dosageInstruction;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dosageInstruction);
}

@override final  FhirMedicationRequestDispenseRequest? dispenseRequest;
@override final  FhirMedicationRequestSubstitution? substitution;
@override final  FhirReference? priorPrescription;
 final  List<FhirReference> _detectedIssue;
@override@JsonKey() List<FhirReference> get detectedIssue {
  if (_detectedIssue is EqualUnmodifiableListView) return _detectedIssue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_detectedIssue);
}

 final  List<FhirReference> _eventHistory;
@override@JsonKey() List<FhirReference> get eventHistory {
  if (_eventHistory is EqualUnmodifiableListView) return _eventHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventHistory);
}

@override final  FhirMeta? meta;

/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirMedicationRequestCopyWith<_FhirMedicationRequest> get copyWith => __$FhirMedicationRequestCopyWithImpl<_FhirMedicationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirMedicationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirMedicationRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&const DeepCollectionEquality().equals(other._identifier, _identifier)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusReason, statusReason) || other.statusReason == statusReason)&&(identical(other.intent, intent) || other.intent == intent)&&const DeepCollectionEquality().equals(other._category, _category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.doNotPerform, doNotPerform) || other.doNotPerform == doNotPerform)&&(identical(other.medicationCodeableConcept, medicationCodeableConcept) || other.medicationCodeableConcept == medicationCodeableConcept)&&(identical(other.medicationReference, medicationReference) || other.medicationReference == medicationReference)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.encounter, encounter) || other.encounter == encounter)&&const DeepCollectionEquality().equals(other._supportingInformation, _supportingInformation)&&(identical(other.authoredOn, authoredOn) || other.authoredOn == authoredOn)&&(identical(other.requester, requester) || other.requester == requester)&&(identical(other.performer, performer) || other.performer == performer)&&(identical(other.performerType, performerType) || other.performerType == performerType)&&(identical(other.recorder, recorder) || other.recorder == recorder)&&const DeepCollectionEquality().equals(other._reasonCode, _reasonCode)&&const DeepCollectionEquality().equals(other._reasonReference, _reasonReference)&&const DeepCollectionEquality().equals(other._instantiatesCanonical, _instantiatesCanonical)&&const DeepCollectionEquality().equals(other._instantiatesUri, _instantiatesUri)&&const DeepCollectionEquality().equals(other._basedOn, _basedOn)&&(identical(other.groupIdentifier, groupIdentifier) || other.groupIdentifier == groupIdentifier)&&(identical(other.courseOfTherapyType, courseOfTherapyType) || other.courseOfTherapyType == courseOfTherapyType)&&const DeepCollectionEquality().equals(other._insurance, _insurance)&&const DeepCollectionEquality().equals(other._note, _note)&&const DeepCollectionEquality().equals(other._dosageInstruction, _dosageInstruction)&&(identical(other.dispenseRequest, dispenseRequest) || other.dispenseRequest == dispenseRequest)&&(identical(other.substitution, substitution) || other.substitution == substitution)&&(identical(other.priorPrescription, priorPrescription) || other.priorPrescription == priorPrescription)&&const DeepCollectionEquality().equals(other._detectedIssue, _detectedIssue)&&const DeepCollectionEquality().equals(other._eventHistory, _eventHistory)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,resourceType,const DeepCollectionEquality().hash(_identifier),status,statusReason,intent,const DeepCollectionEquality().hash(_category),priority,doNotPerform,medicationCodeableConcept,medicationReference,subject,encounter,const DeepCollectionEquality().hash(_supportingInformation),authoredOn,requester,performer,performerType,recorder,const DeepCollectionEquality().hash(_reasonCode),const DeepCollectionEquality().hash(_reasonReference),const DeepCollectionEquality().hash(_instantiatesCanonical),const DeepCollectionEquality().hash(_instantiatesUri),const DeepCollectionEquality().hash(_basedOn),groupIdentifier,courseOfTherapyType,const DeepCollectionEquality().hash(_insurance),const DeepCollectionEquality().hash(_note),const DeepCollectionEquality().hash(_dosageInstruction),dispenseRequest,substitution,priorPrescription,const DeepCollectionEquality().hash(_detectedIssue),const DeepCollectionEquality().hash(_eventHistory),meta]);

@override
String toString() {
  return 'FhirMedicationRequest(id: $id, resourceType: $resourceType, identifier: $identifier, status: $status, statusReason: $statusReason, intent: $intent, category: $category, priority: $priority, doNotPerform: $doNotPerform, medicationCodeableConcept: $medicationCodeableConcept, medicationReference: $medicationReference, subject: $subject, encounter: $encounter, supportingInformation: $supportingInformation, authoredOn: $authoredOn, requester: $requester, performer: $performer, performerType: $performerType, recorder: $recorder, reasonCode: $reasonCode, reasonReference: $reasonReference, instantiatesCanonical: $instantiatesCanonical, instantiatesUri: $instantiatesUri, basedOn: $basedOn, groupIdentifier: $groupIdentifier, courseOfTherapyType: $courseOfTherapyType, insurance: $insurance, note: $note, dosageInstruction: $dosageInstruction, dispenseRequest: $dispenseRequest, substitution: $substitution, priorPrescription: $priorPrescription, detectedIssue: $detectedIssue, eventHistory: $eventHistory, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$FhirMedicationRequestCopyWith<$Res> implements $FhirMedicationRequestCopyWith<$Res> {
  factory _$FhirMedicationRequestCopyWith(_FhirMedicationRequest value, $Res Function(_FhirMedicationRequest) _then) = __$FhirMedicationRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String resourceType, List<FhirIdentifier> identifier, String status, String? statusReason, String intent, List<FhirCodeableConcept> category, String? priority, bool? doNotPerform, FhirCodeableConcept? medicationCodeableConcept, FhirReference? medicationReference, FhirReference subject, FhirReference? encounter, List<FhirReference> supportingInformation, String? authoredOn, FhirReference? requester, FhirReference? performer, FhirCodeableConcept? performerType, FhirReference? recorder, List<FhirCodeableConcept> reasonCode, List<FhirReference> reasonReference, List<String> instantiatesCanonical, List<String> instantiatesUri, List<FhirReference> basedOn, FhirIdentifier? groupIdentifier, FhirCodeableConcept? courseOfTherapyType, List<FhirReference> insurance, List<FhirAnnotation> note, List<FhirDosage> dosageInstruction, FhirMedicationRequestDispenseRequest? dispenseRequest, FhirMedicationRequestSubstitution? substitution, FhirReference? priorPrescription, List<FhirReference> detectedIssue, List<FhirReference> eventHistory, FhirMeta? meta
});


@override $FhirCodeableConceptCopyWith<$Res>? get medicationCodeableConcept;@override $FhirReferenceCopyWith<$Res>? get medicationReference;@override $FhirReferenceCopyWith<$Res> get subject;@override $FhirReferenceCopyWith<$Res>? get encounter;@override $FhirReferenceCopyWith<$Res>? get requester;@override $FhirReferenceCopyWith<$Res>? get performer;@override $FhirCodeableConceptCopyWith<$Res>? get performerType;@override $FhirReferenceCopyWith<$Res>? get recorder;@override $FhirIdentifierCopyWith<$Res>? get groupIdentifier;@override $FhirCodeableConceptCopyWith<$Res>? get courseOfTherapyType;@override $FhirMedicationRequestDispenseRequestCopyWith<$Res>? get dispenseRequest;@override $FhirMedicationRequestSubstitutionCopyWith<$Res>? get substitution;@override $FhirReferenceCopyWith<$Res>? get priorPrescription;@override $FhirMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$FhirMedicationRequestCopyWithImpl<$Res>
    implements _$FhirMedicationRequestCopyWith<$Res> {
  __$FhirMedicationRequestCopyWithImpl(this._self, this._then);

  final _FhirMedicationRequest _self;
  final $Res Function(_FhirMedicationRequest) _then;

/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? resourceType = null,Object? identifier = null,Object? status = null,Object? statusReason = freezed,Object? intent = null,Object? category = null,Object? priority = freezed,Object? doNotPerform = freezed,Object? medicationCodeableConcept = freezed,Object? medicationReference = freezed,Object? subject = null,Object? encounter = freezed,Object? supportingInformation = null,Object? authoredOn = freezed,Object? requester = freezed,Object? performer = freezed,Object? performerType = freezed,Object? recorder = freezed,Object? reasonCode = null,Object? reasonReference = null,Object? instantiatesCanonical = null,Object? instantiatesUri = null,Object? basedOn = null,Object? groupIdentifier = freezed,Object? courseOfTherapyType = freezed,Object? insurance = null,Object? note = null,Object? dosageInstruction = null,Object? dispenseRequest = freezed,Object? substitution = freezed,Object? priorPrescription = freezed,Object? detectedIssue = null,Object? eventHistory = null,Object? meta = freezed,}) {
  return _then(_FhirMedicationRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self._identifier : identifier // ignore: cast_nullable_to_non_nullable
as List<FhirIdentifier>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusReason: freezed == statusReason ? _self.statusReason : statusReason // ignore: cast_nullable_to_non_nullable
as String?,intent: null == intent ? _self.intent : intent // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,doNotPerform: freezed == doNotPerform ? _self.doNotPerform : doNotPerform // ignore: cast_nullable_to_non_nullable
as bool?,medicationCodeableConcept: freezed == medicationCodeableConcept ? _self.medicationCodeableConcept : medicationCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,medicationReference: freezed == medicationReference ? _self.medicationReference : medicationReference // ignore: cast_nullable_to_non_nullable
as FhirReference?,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as FhirReference,encounter: freezed == encounter ? _self.encounter : encounter // ignore: cast_nullable_to_non_nullable
as FhirReference?,supportingInformation: null == supportingInformation ? _self._supportingInformation : supportingInformation // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,authoredOn: freezed == authoredOn ? _self.authoredOn : authoredOn // ignore: cast_nullable_to_non_nullable
as String?,requester: freezed == requester ? _self.requester : requester // ignore: cast_nullable_to_non_nullable
as FhirReference?,performer: freezed == performer ? _self.performer : performer // ignore: cast_nullable_to_non_nullable
as FhirReference?,performerType: freezed == performerType ? _self.performerType : performerType // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,recorder: freezed == recorder ? _self.recorder : recorder // ignore: cast_nullable_to_non_nullable
as FhirReference?,reasonCode: null == reasonCode ? _self._reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,reasonReference: null == reasonReference ? _self._reasonReference : reasonReference // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,instantiatesCanonical: null == instantiatesCanonical ? _self._instantiatesCanonical : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
as List<String>,instantiatesUri: null == instantiatesUri ? _self._instantiatesUri : instantiatesUri // ignore: cast_nullable_to_non_nullable
as List<String>,basedOn: null == basedOn ? _self._basedOn : basedOn // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,groupIdentifier: freezed == groupIdentifier ? _self.groupIdentifier : groupIdentifier // ignore: cast_nullable_to_non_nullable
as FhirIdentifier?,courseOfTherapyType: freezed == courseOfTherapyType ? _self.courseOfTherapyType : courseOfTherapyType // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,insurance: null == insurance ? _self._insurance : insurance // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,note: null == note ? _self._note : note // ignore: cast_nullable_to_non_nullable
as List<FhirAnnotation>,dosageInstruction: null == dosageInstruction ? _self._dosageInstruction : dosageInstruction // ignore: cast_nullable_to_non_nullable
as List<FhirDosage>,dispenseRequest: freezed == dispenseRequest ? _self.dispenseRequest : dispenseRequest // ignore: cast_nullable_to_non_nullable
as FhirMedicationRequestDispenseRequest?,substitution: freezed == substitution ? _self.substitution : substitution // ignore: cast_nullable_to_non_nullable
as FhirMedicationRequestSubstitution?,priorPrescription: freezed == priorPrescription ? _self.priorPrescription : priorPrescription // ignore: cast_nullable_to_non_nullable
as FhirReference?,detectedIssue: null == detectedIssue ? _self._detectedIssue : detectedIssue // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,eventHistory: null == eventHistory ? _self._eventHistory : eventHistory // ignore: cast_nullable_to_non_nullable
as List<FhirReference>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as FhirMeta?,
  ));
}

/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get medicationCodeableConcept {
    if (_self.medicationCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.medicationCodeableConcept!, (value) {
    return _then(_self.copyWith(medicationCodeableConcept: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get medicationReference {
    if (_self.medicationReference == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.medicationReference!, (value) {
    return _then(_self.copyWith(medicationReference: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res> get subject {
  
  return $FhirReferenceCopyWith<$Res>(_self.subject, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of FhirMedicationRequest
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
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get requester {
    if (_self.requester == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.requester!, (value) {
    return _then(_self.copyWith(requester: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get performer {
    if (_self.performer == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.performer!, (value) {
    return _then(_self.copyWith(performer: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get performerType {
    if (_self.performerType == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.performerType!, (value) {
    return _then(_self.copyWith(performerType: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get recorder {
    if (_self.recorder == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.recorder!, (value) {
    return _then(_self.copyWith(recorder: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirIdentifierCopyWith<$Res>? get groupIdentifier {
    if (_self.groupIdentifier == null) {
    return null;
  }

  return $FhirIdentifierCopyWith<$Res>(_self.groupIdentifier!, (value) {
    return _then(_self.copyWith(groupIdentifier: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get courseOfTherapyType {
    if (_self.courseOfTherapyType == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.courseOfTherapyType!, (value) {
    return _then(_self.copyWith(courseOfTherapyType: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirMedicationRequestDispenseRequestCopyWith<$Res>? get dispenseRequest {
    if (_self.dispenseRequest == null) {
    return null;
  }

  return $FhirMedicationRequestDispenseRequestCopyWith<$Res>(_self.dispenseRequest!, (value) {
    return _then(_self.copyWith(dispenseRequest: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirMedicationRequestSubstitutionCopyWith<$Res>? get substitution {
    if (_self.substitution == null) {
    return null;
  }

  return $FhirMedicationRequestSubstitutionCopyWith<$Res>(_self.substitution!, (value) {
    return _then(_self.copyWith(substitution: value));
  });
}/// Create a copy of FhirMedicationRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get priorPrescription {
    if (_self.priorPrescription == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.priorPrescription!, (value) {
    return _then(_self.copyWith(priorPrescription: value));
  });
}/// Create a copy of FhirMedicationRequest
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
mixin _$FhirDosage {

 int? get sequence; String? get text; List<FhirCodeableConcept> get additionalInstruction; String? get patientInstruction; FhirTiming? get timing; bool? get asNeededBoolean; FhirCodeableConcept? get asNeededCodeableConcept; FhirCodeableConcept? get site; FhirCodeableConcept? get route; FhirCodeableConcept? get method; List<FhirDosageDoseAndRate> get doseAndRate; FhirQuantity? get maxDosePerPeriod; FhirQuantity? get maxDosePerAdministration; FhirQuantity? get maxDosePerLifetime;
/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirDosageCopyWith<FhirDosage> get copyWith => _$FhirDosageCopyWithImpl<FhirDosage>(this as FhirDosage, _$identity);

  /// Serializes this FhirDosage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirDosage&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.additionalInstruction, additionalInstruction)&&(identical(other.patientInstruction, patientInstruction) || other.patientInstruction == patientInstruction)&&(identical(other.timing, timing) || other.timing == timing)&&(identical(other.asNeededBoolean, asNeededBoolean) || other.asNeededBoolean == asNeededBoolean)&&(identical(other.asNeededCodeableConcept, asNeededCodeableConcept) || other.asNeededCodeableConcept == asNeededCodeableConcept)&&(identical(other.site, site) || other.site == site)&&(identical(other.route, route) || other.route == route)&&(identical(other.method, method) || other.method == method)&&const DeepCollectionEquality().equals(other.doseAndRate, doseAndRate)&&(identical(other.maxDosePerPeriod, maxDosePerPeriod) || other.maxDosePerPeriod == maxDosePerPeriod)&&(identical(other.maxDosePerAdministration, maxDosePerAdministration) || other.maxDosePerAdministration == maxDosePerAdministration)&&(identical(other.maxDosePerLifetime, maxDosePerLifetime) || other.maxDosePerLifetime == maxDosePerLifetime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sequence,text,const DeepCollectionEquality().hash(additionalInstruction),patientInstruction,timing,asNeededBoolean,asNeededCodeableConcept,site,route,method,const DeepCollectionEquality().hash(doseAndRate),maxDosePerPeriod,maxDosePerAdministration,maxDosePerLifetime);

@override
String toString() {
  return 'FhirDosage(sequence: $sequence, text: $text, additionalInstruction: $additionalInstruction, patientInstruction: $patientInstruction, timing: $timing, asNeededBoolean: $asNeededBoolean, asNeededCodeableConcept: $asNeededCodeableConcept, site: $site, route: $route, method: $method, doseAndRate: $doseAndRate, maxDosePerPeriod: $maxDosePerPeriod, maxDosePerAdministration: $maxDosePerAdministration, maxDosePerLifetime: $maxDosePerLifetime)';
}


}

/// @nodoc
abstract mixin class $FhirDosageCopyWith<$Res>  {
  factory $FhirDosageCopyWith(FhirDosage value, $Res Function(FhirDosage) _then) = _$FhirDosageCopyWithImpl;
@useResult
$Res call({
 int? sequence, String? text, List<FhirCodeableConcept> additionalInstruction, String? patientInstruction, FhirTiming? timing, bool? asNeededBoolean, FhirCodeableConcept? asNeededCodeableConcept, FhirCodeableConcept? site, FhirCodeableConcept? route, FhirCodeableConcept? method, List<FhirDosageDoseAndRate> doseAndRate, FhirQuantity? maxDosePerPeriod, FhirQuantity? maxDosePerAdministration, FhirQuantity? maxDosePerLifetime
});


$FhirTimingCopyWith<$Res>? get timing;$FhirCodeableConceptCopyWith<$Res>? get asNeededCodeableConcept;$FhirCodeableConceptCopyWith<$Res>? get site;$FhirCodeableConceptCopyWith<$Res>? get route;$FhirCodeableConceptCopyWith<$Res>? get method;$FhirQuantityCopyWith<$Res>? get maxDosePerPeriod;$FhirQuantityCopyWith<$Res>? get maxDosePerAdministration;$FhirQuantityCopyWith<$Res>? get maxDosePerLifetime;

}
/// @nodoc
class _$FhirDosageCopyWithImpl<$Res>
    implements $FhirDosageCopyWith<$Res> {
  _$FhirDosageCopyWithImpl(this._self, this._then);

  final FhirDosage _self;
  final $Res Function(FhirDosage) _then;

/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sequence = freezed,Object? text = freezed,Object? additionalInstruction = null,Object? patientInstruction = freezed,Object? timing = freezed,Object? asNeededBoolean = freezed,Object? asNeededCodeableConcept = freezed,Object? site = freezed,Object? route = freezed,Object? method = freezed,Object? doseAndRate = null,Object? maxDosePerPeriod = freezed,Object? maxDosePerAdministration = freezed,Object? maxDosePerLifetime = freezed,}) {
  return _then(_self.copyWith(
sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,additionalInstruction: null == additionalInstruction ? _self.additionalInstruction : additionalInstruction // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,patientInstruction: freezed == patientInstruction ? _self.patientInstruction : patientInstruction // ignore: cast_nullable_to_non_nullable
as String?,timing: freezed == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as FhirTiming?,asNeededBoolean: freezed == asNeededBoolean ? _self.asNeededBoolean : asNeededBoolean // ignore: cast_nullable_to_non_nullable
as bool?,asNeededCodeableConcept: freezed == asNeededCodeableConcept ? _self.asNeededCodeableConcept : asNeededCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,doseAndRate: null == doseAndRate ? _self.doseAndRate : doseAndRate // ignore: cast_nullable_to_non_nullable
as List<FhirDosageDoseAndRate>,maxDosePerPeriod: freezed == maxDosePerPeriod ? _self.maxDosePerPeriod : maxDosePerPeriod // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,maxDosePerAdministration: freezed == maxDosePerAdministration ? _self.maxDosePerAdministration : maxDosePerAdministration // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,maxDosePerLifetime: freezed == maxDosePerLifetime ? _self.maxDosePerLifetime : maxDosePerLifetime // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,
  ));
}
/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirTimingCopyWith<$Res>? get timing {
    if (_self.timing == null) {
    return null;
  }

  return $FhirTimingCopyWith<$Res>(_self.timing!, (value) {
    return _then(_self.copyWith(timing: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get asNeededCodeableConcept {
    if (_self.asNeededCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.asNeededCodeableConcept!, (value) {
    return _then(_self.copyWith(asNeededCodeableConcept: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get site {
    if (_self.site == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.site!, (value) {
    return _then(_self.copyWith(site: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of FhirDosage
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
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get maxDosePerPeriod {
    if (_self.maxDosePerPeriod == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.maxDosePerPeriod!, (value) {
    return _then(_self.copyWith(maxDosePerPeriod: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get maxDosePerAdministration {
    if (_self.maxDosePerAdministration == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.maxDosePerAdministration!, (value) {
    return _then(_self.copyWith(maxDosePerAdministration: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get maxDosePerLifetime {
    if (_self.maxDosePerLifetime == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.maxDosePerLifetime!, (value) {
    return _then(_self.copyWith(maxDosePerLifetime: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirDosage].
extension FhirDosagePatterns on FhirDosage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirDosage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirDosage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirDosage value)  $default,){
final _that = this;
switch (_that) {
case _FhirDosage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirDosage value)?  $default,){
final _that = this;
switch (_that) {
case _FhirDosage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? sequence,  String? text,  List<FhirCodeableConcept> additionalInstruction,  String? patientInstruction,  FhirTiming? timing,  bool? asNeededBoolean,  FhirCodeableConcept? asNeededCodeableConcept,  FhirCodeableConcept? site,  FhirCodeableConcept? route,  FhirCodeableConcept? method,  List<FhirDosageDoseAndRate> doseAndRate,  FhirQuantity? maxDosePerPeriod,  FhirQuantity? maxDosePerAdministration,  FhirQuantity? maxDosePerLifetime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirDosage() when $default != null:
return $default(_that.sequence,_that.text,_that.additionalInstruction,_that.patientInstruction,_that.timing,_that.asNeededBoolean,_that.asNeededCodeableConcept,_that.site,_that.route,_that.method,_that.doseAndRate,_that.maxDosePerPeriod,_that.maxDosePerAdministration,_that.maxDosePerLifetime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? sequence,  String? text,  List<FhirCodeableConcept> additionalInstruction,  String? patientInstruction,  FhirTiming? timing,  bool? asNeededBoolean,  FhirCodeableConcept? asNeededCodeableConcept,  FhirCodeableConcept? site,  FhirCodeableConcept? route,  FhirCodeableConcept? method,  List<FhirDosageDoseAndRate> doseAndRate,  FhirQuantity? maxDosePerPeriod,  FhirQuantity? maxDosePerAdministration,  FhirQuantity? maxDosePerLifetime)  $default,) {final _that = this;
switch (_that) {
case _FhirDosage():
return $default(_that.sequence,_that.text,_that.additionalInstruction,_that.patientInstruction,_that.timing,_that.asNeededBoolean,_that.asNeededCodeableConcept,_that.site,_that.route,_that.method,_that.doseAndRate,_that.maxDosePerPeriod,_that.maxDosePerAdministration,_that.maxDosePerLifetime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? sequence,  String? text,  List<FhirCodeableConcept> additionalInstruction,  String? patientInstruction,  FhirTiming? timing,  bool? asNeededBoolean,  FhirCodeableConcept? asNeededCodeableConcept,  FhirCodeableConcept? site,  FhirCodeableConcept? route,  FhirCodeableConcept? method,  List<FhirDosageDoseAndRate> doseAndRate,  FhirQuantity? maxDosePerPeriod,  FhirQuantity? maxDosePerAdministration,  FhirQuantity? maxDosePerLifetime)?  $default,) {final _that = this;
switch (_that) {
case _FhirDosage() when $default != null:
return $default(_that.sequence,_that.text,_that.additionalInstruction,_that.patientInstruction,_that.timing,_that.asNeededBoolean,_that.asNeededCodeableConcept,_that.site,_that.route,_that.method,_that.doseAndRate,_that.maxDosePerPeriod,_that.maxDosePerAdministration,_that.maxDosePerLifetime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirDosage implements FhirDosage {
  const _FhirDosage({this.sequence, this.text, final  List<FhirCodeableConcept> additionalInstruction = const [], this.patientInstruction, this.timing, this.asNeededBoolean, this.asNeededCodeableConcept, this.site, this.route, this.method, final  List<FhirDosageDoseAndRate> doseAndRate = const [], this.maxDosePerPeriod, this.maxDosePerAdministration, this.maxDosePerLifetime}): _additionalInstruction = additionalInstruction,_doseAndRate = doseAndRate;
  factory _FhirDosage.fromJson(Map<String, dynamic> json) => _$FhirDosageFromJson(json);

@override final  int? sequence;
@override final  String? text;
 final  List<FhirCodeableConcept> _additionalInstruction;
@override@JsonKey() List<FhirCodeableConcept> get additionalInstruction {
  if (_additionalInstruction is EqualUnmodifiableListView) return _additionalInstruction;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_additionalInstruction);
}

@override final  String? patientInstruction;
@override final  FhirTiming? timing;
@override final  bool? asNeededBoolean;
@override final  FhirCodeableConcept? asNeededCodeableConcept;
@override final  FhirCodeableConcept? site;
@override final  FhirCodeableConcept? route;
@override final  FhirCodeableConcept? method;
 final  List<FhirDosageDoseAndRate> _doseAndRate;
@override@JsonKey() List<FhirDosageDoseAndRate> get doseAndRate {
  if (_doseAndRate is EqualUnmodifiableListView) return _doseAndRate;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doseAndRate);
}

@override final  FhirQuantity? maxDosePerPeriod;
@override final  FhirQuantity? maxDosePerAdministration;
@override final  FhirQuantity? maxDosePerLifetime;

/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirDosageCopyWith<_FhirDosage> get copyWith => __$FhirDosageCopyWithImpl<_FhirDosage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirDosageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirDosage&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._additionalInstruction, _additionalInstruction)&&(identical(other.patientInstruction, patientInstruction) || other.patientInstruction == patientInstruction)&&(identical(other.timing, timing) || other.timing == timing)&&(identical(other.asNeededBoolean, asNeededBoolean) || other.asNeededBoolean == asNeededBoolean)&&(identical(other.asNeededCodeableConcept, asNeededCodeableConcept) || other.asNeededCodeableConcept == asNeededCodeableConcept)&&(identical(other.site, site) || other.site == site)&&(identical(other.route, route) || other.route == route)&&(identical(other.method, method) || other.method == method)&&const DeepCollectionEquality().equals(other._doseAndRate, _doseAndRate)&&(identical(other.maxDosePerPeriod, maxDosePerPeriod) || other.maxDosePerPeriod == maxDosePerPeriod)&&(identical(other.maxDosePerAdministration, maxDosePerAdministration) || other.maxDosePerAdministration == maxDosePerAdministration)&&(identical(other.maxDosePerLifetime, maxDosePerLifetime) || other.maxDosePerLifetime == maxDosePerLifetime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sequence,text,const DeepCollectionEquality().hash(_additionalInstruction),patientInstruction,timing,asNeededBoolean,asNeededCodeableConcept,site,route,method,const DeepCollectionEquality().hash(_doseAndRate),maxDosePerPeriod,maxDosePerAdministration,maxDosePerLifetime);

@override
String toString() {
  return 'FhirDosage(sequence: $sequence, text: $text, additionalInstruction: $additionalInstruction, patientInstruction: $patientInstruction, timing: $timing, asNeededBoolean: $asNeededBoolean, asNeededCodeableConcept: $asNeededCodeableConcept, site: $site, route: $route, method: $method, doseAndRate: $doseAndRate, maxDosePerPeriod: $maxDosePerPeriod, maxDosePerAdministration: $maxDosePerAdministration, maxDosePerLifetime: $maxDosePerLifetime)';
}


}

/// @nodoc
abstract mixin class _$FhirDosageCopyWith<$Res> implements $FhirDosageCopyWith<$Res> {
  factory _$FhirDosageCopyWith(_FhirDosage value, $Res Function(_FhirDosage) _then) = __$FhirDosageCopyWithImpl;
@override @useResult
$Res call({
 int? sequence, String? text, List<FhirCodeableConcept> additionalInstruction, String? patientInstruction, FhirTiming? timing, bool? asNeededBoolean, FhirCodeableConcept? asNeededCodeableConcept, FhirCodeableConcept? site, FhirCodeableConcept? route, FhirCodeableConcept? method, List<FhirDosageDoseAndRate> doseAndRate, FhirQuantity? maxDosePerPeriod, FhirQuantity? maxDosePerAdministration, FhirQuantity? maxDosePerLifetime
});


@override $FhirTimingCopyWith<$Res>? get timing;@override $FhirCodeableConceptCopyWith<$Res>? get asNeededCodeableConcept;@override $FhirCodeableConceptCopyWith<$Res>? get site;@override $FhirCodeableConceptCopyWith<$Res>? get route;@override $FhirCodeableConceptCopyWith<$Res>? get method;@override $FhirQuantityCopyWith<$Res>? get maxDosePerPeriod;@override $FhirQuantityCopyWith<$Res>? get maxDosePerAdministration;@override $FhirQuantityCopyWith<$Res>? get maxDosePerLifetime;

}
/// @nodoc
class __$FhirDosageCopyWithImpl<$Res>
    implements _$FhirDosageCopyWith<$Res> {
  __$FhirDosageCopyWithImpl(this._self, this._then);

  final _FhirDosage _self;
  final $Res Function(_FhirDosage) _then;

/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sequence = freezed,Object? text = freezed,Object? additionalInstruction = null,Object? patientInstruction = freezed,Object? timing = freezed,Object? asNeededBoolean = freezed,Object? asNeededCodeableConcept = freezed,Object? site = freezed,Object? route = freezed,Object? method = freezed,Object? doseAndRate = null,Object? maxDosePerPeriod = freezed,Object? maxDosePerAdministration = freezed,Object? maxDosePerLifetime = freezed,}) {
  return _then(_FhirDosage(
sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,additionalInstruction: null == additionalInstruction ? _self._additionalInstruction : additionalInstruction // ignore: cast_nullable_to_non_nullable
as List<FhirCodeableConcept>,patientInstruction: freezed == patientInstruction ? _self.patientInstruction : patientInstruction // ignore: cast_nullable_to_non_nullable
as String?,timing: freezed == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as FhirTiming?,asNeededBoolean: freezed == asNeededBoolean ? _self.asNeededBoolean : asNeededBoolean // ignore: cast_nullable_to_non_nullable
as bool?,asNeededCodeableConcept: freezed == asNeededCodeableConcept ? _self.asNeededCodeableConcept : asNeededCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,doseAndRate: null == doseAndRate ? _self._doseAndRate : doseAndRate // ignore: cast_nullable_to_non_nullable
as List<FhirDosageDoseAndRate>,maxDosePerPeriod: freezed == maxDosePerPeriod ? _self.maxDosePerPeriod : maxDosePerPeriod // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,maxDosePerAdministration: freezed == maxDosePerAdministration ? _self.maxDosePerAdministration : maxDosePerAdministration // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,maxDosePerLifetime: freezed == maxDosePerLifetime ? _self.maxDosePerLifetime : maxDosePerLifetime // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,
  ));
}

/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirTimingCopyWith<$Res>? get timing {
    if (_self.timing == null) {
    return null;
  }

  return $FhirTimingCopyWith<$Res>(_self.timing!, (value) {
    return _then(_self.copyWith(timing: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get asNeededCodeableConcept {
    if (_self.asNeededCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.asNeededCodeableConcept!, (value) {
    return _then(_self.copyWith(asNeededCodeableConcept: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get site {
    if (_self.site == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.site!, (value) {
    return _then(_self.copyWith(site: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of FhirDosage
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
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get maxDosePerPeriod {
    if (_self.maxDosePerPeriod == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.maxDosePerPeriod!, (value) {
    return _then(_self.copyWith(maxDosePerPeriod: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get maxDosePerAdministration {
    if (_self.maxDosePerAdministration == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.maxDosePerAdministration!, (value) {
    return _then(_self.copyWith(maxDosePerAdministration: value));
  });
}/// Create a copy of FhirDosage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get maxDosePerLifetime {
    if (_self.maxDosePerLifetime == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.maxDosePerLifetime!, (value) {
    return _then(_self.copyWith(maxDosePerLifetime: value));
  });
}
}


/// @nodoc
mixin _$FhirTiming {

 List<String> get event; FhirTimingRepeat? get repeat; FhirCodeableConcept? get code;
/// Create a copy of FhirTiming
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirTimingCopyWith<FhirTiming> get copyWith => _$FhirTimingCopyWithImpl<FhirTiming>(this as FhirTiming, _$identity);

  /// Serializes this FhirTiming to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirTiming&&const DeepCollectionEquality().equals(other.event, event)&&(identical(other.repeat, repeat) || other.repeat == repeat)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(event),repeat,code);

@override
String toString() {
  return 'FhirTiming(event: $event, repeat: $repeat, code: $code)';
}


}

/// @nodoc
abstract mixin class $FhirTimingCopyWith<$Res>  {
  factory $FhirTimingCopyWith(FhirTiming value, $Res Function(FhirTiming) _then) = _$FhirTimingCopyWithImpl;
@useResult
$Res call({
 List<String> event, FhirTimingRepeat? repeat, FhirCodeableConcept? code
});


$FhirTimingRepeatCopyWith<$Res>? get repeat;$FhirCodeableConceptCopyWith<$Res>? get code;

}
/// @nodoc
class _$FhirTimingCopyWithImpl<$Res>
    implements $FhirTimingCopyWith<$Res> {
  _$FhirTimingCopyWithImpl(this._self, this._then);

  final FhirTiming _self;
  final $Res Function(FhirTiming) _then;

/// Create a copy of FhirTiming
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = null,Object? repeat = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as List<String>,repeat: freezed == repeat ? _self.repeat : repeat // ignore: cast_nullable_to_non_nullable
as FhirTimingRepeat?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,
  ));
}
/// Create a copy of FhirTiming
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirTimingRepeatCopyWith<$Res>? get repeat {
    if (_self.repeat == null) {
    return null;
  }

  return $FhirTimingRepeatCopyWith<$Res>(_self.repeat!, (value) {
    return _then(_self.copyWith(repeat: value));
  });
}/// Create a copy of FhirTiming
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get code {
    if (_self.code == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.code!, (value) {
    return _then(_self.copyWith(code: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirTiming].
extension FhirTimingPatterns on FhirTiming {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirTiming value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirTiming() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirTiming value)  $default,){
final _that = this;
switch (_that) {
case _FhirTiming():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirTiming value)?  $default,){
final _that = this;
switch (_that) {
case _FhirTiming() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> event,  FhirTimingRepeat? repeat,  FhirCodeableConcept? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirTiming() when $default != null:
return $default(_that.event,_that.repeat,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> event,  FhirTimingRepeat? repeat,  FhirCodeableConcept? code)  $default,) {final _that = this;
switch (_that) {
case _FhirTiming():
return $default(_that.event,_that.repeat,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> event,  FhirTimingRepeat? repeat,  FhirCodeableConcept? code)?  $default,) {final _that = this;
switch (_that) {
case _FhirTiming() when $default != null:
return $default(_that.event,_that.repeat,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirTiming implements FhirTiming {
  const _FhirTiming({final  List<String> event = const [], this.repeat, this.code}): _event = event;
  factory _FhirTiming.fromJson(Map<String, dynamic> json) => _$FhirTimingFromJson(json);

 final  List<String> _event;
@override@JsonKey() List<String> get event {
  if (_event is EqualUnmodifiableListView) return _event;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_event);
}

@override final  FhirTimingRepeat? repeat;
@override final  FhirCodeableConcept? code;

/// Create a copy of FhirTiming
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirTimingCopyWith<_FhirTiming> get copyWith => __$FhirTimingCopyWithImpl<_FhirTiming>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirTimingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirTiming&&const DeepCollectionEquality().equals(other._event, _event)&&(identical(other.repeat, repeat) || other.repeat == repeat)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_event),repeat,code);

@override
String toString() {
  return 'FhirTiming(event: $event, repeat: $repeat, code: $code)';
}


}

/// @nodoc
abstract mixin class _$FhirTimingCopyWith<$Res> implements $FhirTimingCopyWith<$Res> {
  factory _$FhirTimingCopyWith(_FhirTiming value, $Res Function(_FhirTiming) _then) = __$FhirTimingCopyWithImpl;
@override @useResult
$Res call({
 List<String> event, FhirTimingRepeat? repeat, FhirCodeableConcept? code
});


@override $FhirTimingRepeatCopyWith<$Res>? get repeat;@override $FhirCodeableConceptCopyWith<$Res>? get code;

}
/// @nodoc
class __$FhirTimingCopyWithImpl<$Res>
    implements _$FhirTimingCopyWith<$Res> {
  __$FhirTimingCopyWithImpl(this._self, this._then);

  final _FhirTiming _self;
  final $Res Function(_FhirTiming) _then;

/// Create a copy of FhirTiming
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = null,Object? repeat = freezed,Object? code = freezed,}) {
  return _then(_FhirTiming(
event: null == event ? _self._event : event // ignore: cast_nullable_to_non_nullable
as List<String>,repeat: freezed == repeat ? _self.repeat : repeat // ignore: cast_nullable_to_non_nullable
as FhirTimingRepeat?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,
  ));
}

/// Create a copy of FhirTiming
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirTimingRepeatCopyWith<$Res>? get repeat {
    if (_self.repeat == null) {
    return null;
  }

  return $FhirTimingRepeatCopyWith<$Res>(_self.repeat!, (value) {
    return _then(_self.copyWith(repeat: value));
  });
}/// Create a copy of FhirTiming
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get code {
    if (_self.code == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.code!, (value) {
    return _then(_self.copyWith(code: value));
  });
}
}


/// @nodoc
mixin _$FhirTimingRepeat {

 FhirQuantity? get boundsDuration; FhirRange? get boundsRange; FhirPeriod? get boundsPeriod; int? get count; int? get countMax; double? get duration; double? get durationMax; String? get durationUnit;// s | min | h | d | wk | mo | a
 int? get frequency; int? get frequencyMax; double? get period; double? get periodMax; String? get periodUnit;// s | min | h | d | wk | mo | a
 List<String> get dayOfWeek; List<String> get timeOfDay; List<String> get when; int? get offset;
/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirTimingRepeatCopyWith<FhirTimingRepeat> get copyWith => _$FhirTimingRepeatCopyWithImpl<FhirTimingRepeat>(this as FhirTimingRepeat, _$identity);

  /// Serializes this FhirTimingRepeat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirTimingRepeat&&(identical(other.boundsDuration, boundsDuration) || other.boundsDuration == boundsDuration)&&(identical(other.boundsRange, boundsRange) || other.boundsRange == boundsRange)&&(identical(other.boundsPeriod, boundsPeriod) || other.boundsPeriod == boundsPeriod)&&(identical(other.count, count) || other.count == count)&&(identical(other.countMax, countMax) || other.countMax == countMax)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.durationMax, durationMax) || other.durationMax == durationMax)&&(identical(other.durationUnit, durationUnit) || other.durationUnit == durationUnit)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.frequencyMax, frequencyMax) || other.frequencyMax == frequencyMax)&&(identical(other.period, period) || other.period == period)&&(identical(other.periodMax, periodMax) || other.periodMax == periodMax)&&(identical(other.periodUnit, periodUnit) || other.periodUnit == periodUnit)&&const DeepCollectionEquality().equals(other.dayOfWeek, dayOfWeek)&&const DeepCollectionEquality().equals(other.timeOfDay, timeOfDay)&&const DeepCollectionEquality().equals(other.when, when)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,boundsDuration,boundsRange,boundsPeriod,count,countMax,duration,durationMax,durationUnit,frequency,frequencyMax,period,periodMax,periodUnit,const DeepCollectionEquality().hash(dayOfWeek),const DeepCollectionEquality().hash(timeOfDay),const DeepCollectionEquality().hash(when),offset);

@override
String toString() {
  return 'FhirTimingRepeat(boundsDuration: $boundsDuration, boundsRange: $boundsRange, boundsPeriod: $boundsPeriod, count: $count, countMax: $countMax, duration: $duration, durationMax: $durationMax, durationUnit: $durationUnit, frequency: $frequency, frequencyMax: $frequencyMax, period: $period, periodMax: $periodMax, periodUnit: $periodUnit, dayOfWeek: $dayOfWeek, timeOfDay: $timeOfDay, when: $when, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $FhirTimingRepeatCopyWith<$Res>  {
  factory $FhirTimingRepeatCopyWith(FhirTimingRepeat value, $Res Function(FhirTimingRepeat) _then) = _$FhirTimingRepeatCopyWithImpl;
@useResult
$Res call({
 FhirQuantity? boundsDuration, FhirRange? boundsRange, FhirPeriod? boundsPeriod, int? count, int? countMax, double? duration, double? durationMax, String? durationUnit, int? frequency, int? frequencyMax, double? period, double? periodMax, String? periodUnit, List<String> dayOfWeek, List<String> timeOfDay, List<String> when, int? offset
});


$FhirQuantityCopyWith<$Res>? get boundsDuration;$FhirRangeCopyWith<$Res>? get boundsRange;$FhirPeriodCopyWith<$Res>? get boundsPeriod;

}
/// @nodoc
class _$FhirTimingRepeatCopyWithImpl<$Res>
    implements $FhirTimingRepeatCopyWith<$Res> {
  _$FhirTimingRepeatCopyWithImpl(this._self, this._then);

  final FhirTimingRepeat _self;
  final $Res Function(FhirTimingRepeat) _then;

/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? boundsDuration = freezed,Object? boundsRange = freezed,Object? boundsPeriod = freezed,Object? count = freezed,Object? countMax = freezed,Object? duration = freezed,Object? durationMax = freezed,Object? durationUnit = freezed,Object? frequency = freezed,Object? frequencyMax = freezed,Object? period = freezed,Object? periodMax = freezed,Object? periodUnit = freezed,Object? dayOfWeek = null,Object? timeOfDay = null,Object? when = null,Object? offset = freezed,}) {
  return _then(_self.copyWith(
boundsDuration: freezed == boundsDuration ? _self.boundsDuration : boundsDuration // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,boundsRange: freezed == boundsRange ? _self.boundsRange : boundsRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,boundsPeriod: freezed == boundsPeriod ? _self.boundsPeriod : boundsPeriod // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,countMax: freezed == countMax ? _self.countMax : countMax // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double?,durationMax: freezed == durationMax ? _self.durationMax : durationMax // ignore: cast_nullable_to_non_nullable
as double?,durationUnit: freezed == durationUnit ? _self.durationUnit : durationUnit // ignore: cast_nullable_to_non_nullable
as String?,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as int?,frequencyMax: freezed == frequencyMax ? _self.frequencyMax : frequencyMax // ignore: cast_nullable_to_non_nullable
as int?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as double?,periodMax: freezed == periodMax ? _self.periodMax : periodMax // ignore: cast_nullable_to_non_nullable
as double?,periodUnit: freezed == periodUnit ? _self.periodUnit : periodUnit // ignore: cast_nullable_to_non_nullable
as String?,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as List<String>,timeOfDay: null == timeOfDay ? _self.timeOfDay : timeOfDay // ignore: cast_nullable_to_non_nullable
as List<String>,when: null == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as List<String>,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get boundsDuration {
    if (_self.boundsDuration == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.boundsDuration!, (value) {
    return _then(_self.copyWith(boundsDuration: value));
  });
}/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get boundsRange {
    if (_self.boundsRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.boundsRange!, (value) {
    return _then(_self.copyWith(boundsRange: value));
  });
}/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get boundsPeriod {
    if (_self.boundsPeriod == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.boundsPeriod!, (value) {
    return _then(_self.copyWith(boundsPeriod: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirTimingRepeat].
extension FhirTimingRepeatPatterns on FhirTimingRepeat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirTimingRepeat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirTimingRepeat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirTimingRepeat value)  $default,){
final _that = this;
switch (_that) {
case _FhirTimingRepeat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirTimingRepeat value)?  $default,){
final _that = this;
switch (_that) {
case _FhirTimingRepeat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FhirQuantity? boundsDuration,  FhirRange? boundsRange,  FhirPeriod? boundsPeriod,  int? count,  int? countMax,  double? duration,  double? durationMax,  String? durationUnit,  int? frequency,  int? frequencyMax,  double? period,  double? periodMax,  String? periodUnit,  List<String> dayOfWeek,  List<String> timeOfDay,  List<String> when,  int? offset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirTimingRepeat() when $default != null:
return $default(_that.boundsDuration,_that.boundsRange,_that.boundsPeriod,_that.count,_that.countMax,_that.duration,_that.durationMax,_that.durationUnit,_that.frequency,_that.frequencyMax,_that.period,_that.periodMax,_that.periodUnit,_that.dayOfWeek,_that.timeOfDay,_that.when,_that.offset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FhirQuantity? boundsDuration,  FhirRange? boundsRange,  FhirPeriod? boundsPeriod,  int? count,  int? countMax,  double? duration,  double? durationMax,  String? durationUnit,  int? frequency,  int? frequencyMax,  double? period,  double? periodMax,  String? periodUnit,  List<String> dayOfWeek,  List<String> timeOfDay,  List<String> when,  int? offset)  $default,) {final _that = this;
switch (_that) {
case _FhirTimingRepeat():
return $default(_that.boundsDuration,_that.boundsRange,_that.boundsPeriod,_that.count,_that.countMax,_that.duration,_that.durationMax,_that.durationUnit,_that.frequency,_that.frequencyMax,_that.period,_that.periodMax,_that.periodUnit,_that.dayOfWeek,_that.timeOfDay,_that.when,_that.offset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FhirQuantity? boundsDuration,  FhirRange? boundsRange,  FhirPeriod? boundsPeriod,  int? count,  int? countMax,  double? duration,  double? durationMax,  String? durationUnit,  int? frequency,  int? frequencyMax,  double? period,  double? periodMax,  String? periodUnit,  List<String> dayOfWeek,  List<String> timeOfDay,  List<String> when,  int? offset)?  $default,) {final _that = this;
switch (_that) {
case _FhirTimingRepeat() when $default != null:
return $default(_that.boundsDuration,_that.boundsRange,_that.boundsPeriod,_that.count,_that.countMax,_that.duration,_that.durationMax,_that.durationUnit,_that.frequency,_that.frequencyMax,_that.period,_that.periodMax,_that.periodUnit,_that.dayOfWeek,_that.timeOfDay,_that.when,_that.offset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirTimingRepeat implements FhirTimingRepeat {
  const _FhirTimingRepeat({this.boundsDuration, this.boundsRange, this.boundsPeriod, this.count, this.countMax, this.duration, this.durationMax, this.durationUnit, this.frequency, this.frequencyMax, this.period, this.periodMax, this.periodUnit, final  List<String> dayOfWeek = const [], final  List<String> timeOfDay = const [], final  List<String> when = const [], this.offset}): _dayOfWeek = dayOfWeek,_timeOfDay = timeOfDay,_when = when;
  factory _FhirTimingRepeat.fromJson(Map<String, dynamic> json) => _$FhirTimingRepeatFromJson(json);

@override final  FhirQuantity? boundsDuration;
@override final  FhirRange? boundsRange;
@override final  FhirPeriod? boundsPeriod;
@override final  int? count;
@override final  int? countMax;
@override final  double? duration;
@override final  double? durationMax;
@override final  String? durationUnit;
// s | min | h | d | wk | mo | a
@override final  int? frequency;
@override final  int? frequencyMax;
@override final  double? period;
@override final  double? periodMax;
@override final  String? periodUnit;
// s | min | h | d | wk | mo | a
 final  List<String> _dayOfWeek;
// s | min | h | d | wk | mo | a
@override@JsonKey() List<String> get dayOfWeek {
  if (_dayOfWeek is EqualUnmodifiableListView) return _dayOfWeek;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dayOfWeek);
}

 final  List<String> _timeOfDay;
@override@JsonKey() List<String> get timeOfDay {
  if (_timeOfDay is EqualUnmodifiableListView) return _timeOfDay;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timeOfDay);
}

 final  List<String> _when;
@override@JsonKey() List<String> get when {
  if (_when is EqualUnmodifiableListView) return _when;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_when);
}

@override final  int? offset;

/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirTimingRepeatCopyWith<_FhirTimingRepeat> get copyWith => __$FhirTimingRepeatCopyWithImpl<_FhirTimingRepeat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirTimingRepeatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirTimingRepeat&&(identical(other.boundsDuration, boundsDuration) || other.boundsDuration == boundsDuration)&&(identical(other.boundsRange, boundsRange) || other.boundsRange == boundsRange)&&(identical(other.boundsPeriod, boundsPeriod) || other.boundsPeriod == boundsPeriod)&&(identical(other.count, count) || other.count == count)&&(identical(other.countMax, countMax) || other.countMax == countMax)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.durationMax, durationMax) || other.durationMax == durationMax)&&(identical(other.durationUnit, durationUnit) || other.durationUnit == durationUnit)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.frequencyMax, frequencyMax) || other.frequencyMax == frequencyMax)&&(identical(other.period, period) || other.period == period)&&(identical(other.periodMax, periodMax) || other.periodMax == periodMax)&&(identical(other.periodUnit, periodUnit) || other.periodUnit == periodUnit)&&const DeepCollectionEquality().equals(other._dayOfWeek, _dayOfWeek)&&const DeepCollectionEquality().equals(other._timeOfDay, _timeOfDay)&&const DeepCollectionEquality().equals(other._when, _when)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,boundsDuration,boundsRange,boundsPeriod,count,countMax,duration,durationMax,durationUnit,frequency,frequencyMax,period,periodMax,periodUnit,const DeepCollectionEquality().hash(_dayOfWeek),const DeepCollectionEquality().hash(_timeOfDay),const DeepCollectionEquality().hash(_when),offset);

@override
String toString() {
  return 'FhirTimingRepeat(boundsDuration: $boundsDuration, boundsRange: $boundsRange, boundsPeriod: $boundsPeriod, count: $count, countMax: $countMax, duration: $duration, durationMax: $durationMax, durationUnit: $durationUnit, frequency: $frequency, frequencyMax: $frequencyMax, period: $period, periodMax: $periodMax, periodUnit: $periodUnit, dayOfWeek: $dayOfWeek, timeOfDay: $timeOfDay, when: $when, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$FhirTimingRepeatCopyWith<$Res> implements $FhirTimingRepeatCopyWith<$Res> {
  factory _$FhirTimingRepeatCopyWith(_FhirTimingRepeat value, $Res Function(_FhirTimingRepeat) _then) = __$FhirTimingRepeatCopyWithImpl;
@override @useResult
$Res call({
 FhirQuantity? boundsDuration, FhirRange? boundsRange, FhirPeriod? boundsPeriod, int? count, int? countMax, double? duration, double? durationMax, String? durationUnit, int? frequency, int? frequencyMax, double? period, double? periodMax, String? periodUnit, List<String> dayOfWeek, List<String> timeOfDay, List<String> when, int? offset
});


@override $FhirQuantityCopyWith<$Res>? get boundsDuration;@override $FhirRangeCopyWith<$Res>? get boundsRange;@override $FhirPeriodCopyWith<$Res>? get boundsPeriod;

}
/// @nodoc
class __$FhirTimingRepeatCopyWithImpl<$Res>
    implements _$FhirTimingRepeatCopyWith<$Res> {
  __$FhirTimingRepeatCopyWithImpl(this._self, this._then);

  final _FhirTimingRepeat _self;
  final $Res Function(_FhirTimingRepeat) _then;

/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? boundsDuration = freezed,Object? boundsRange = freezed,Object? boundsPeriod = freezed,Object? count = freezed,Object? countMax = freezed,Object? duration = freezed,Object? durationMax = freezed,Object? durationUnit = freezed,Object? frequency = freezed,Object? frequencyMax = freezed,Object? period = freezed,Object? periodMax = freezed,Object? periodUnit = freezed,Object? dayOfWeek = null,Object? timeOfDay = null,Object? when = null,Object? offset = freezed,}) {
  return _then(_FhirTimingRepeat(
boundsDuration: freezed == boundsDuration ? _self.boundsDuration : boundsDuration // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,boundsRange: freezed == boundsRange ? _self.boundsRange : boundsRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,boundsPeriod: freezed == boundsPeriod ? _self.boundsPeriod : boundsPeriod // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,countMax: freezed == countMax ? _self.countMax : countMax // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double?,durationMax: freezed == durationMax ? _self.durationMax : durationMax // ignore: cast_nullable_to_non_nullable
as double?,durationUnit: freezed == durationUnit ? _self.durationUnit : durationUnit // ignore: cast_nullable_to_non_nullable
as String?,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as int?,frequencyMax: freezed == frequencyMax ? _self.frequencyMax : frequencyMax // ignore: cast_nullable_to_non_nullable
as int?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as double?,periodMax: freezed == periodMax ? _self.periodMax : periodMax // ignore: cast_nullable_to_non_nullable
as double?,periodUnit: freezed == periodUnit ? _self.periodUnit : periodUnit // ignore: cast_nullable_to_non_nullable
as String?,dayOfWeek: null == dayOfWeek ? _self._dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as List<String>,timeOfDay: null == timeOfDay ? _self._timeOfDay : timeOfDay // ignore: cast_nullable_to_non_nullable
as List<String>,when: null == when ? _self._when : when // ignore: cast_nullable_to_non_nullable
as List<String>,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get boundsDuration {
    if (_self.boundsDuration == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.boundsDuration!, (value) {
    return _then(_self.copyWith(boundsDuration: value));
  });
}/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get boundsRange {
    if (_self.boundsRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.boundsRange!, (value) {
    return _then(_self.copyWith(boundsRange: value));
  });
}/// Create a copy of FhirTimingRepeat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get boundsPeriod {
    if (_self.boundsPeriod == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.boundsPeriod!, (value) {
    return _then(_self.copyWith(boundsPeriod: value));
  });
}
}


/// @nodoc
mixin _$FhirDosageDoseAndRate {

 FhirCodeableConcept? get type; FhirRange? get doseRange; FhirQuantity? get doseQuantity; FhirRange? get rateRange; FhirQuantity? get rateQuantity;
/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirDosageDoseAndRateCopyWith<FhirDosageDoseAndRate> get copyWith => _$FhirDosageDoseAndRateCopyWithImpl<FhirDosageDoseAndRate>(this as FhirDosageDoseAndRate, _$identity);

  /// Serializes this FhirDosageDoseAndRate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirDosageDoseAndRate&&(identical(other.type, type) || other.type == type)&&(identical(other.doseRange, doseRange) || other.doseRange == doseRange)&&(identical(other.doseQuantity, doseQuantity) || other.doseQuantity == doseQuantity)&&(identical(other.rateRange, rateRange) || other.rateRange == rateRange)&&(identical(other.rateQuantity, rateQuantity) || other.rateQuantity == rateQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,doseRange,doseQuantity,rateRange,rateQuantity);

@override
String toString() {
  return 'FhirDosageDoseAndRate(type: $type, doseRange: $doseRange, doseQuantity: $doseQuantity, rateRange: $rateRange, rateQuantity: $rateQuantity)';
}


}

/// @nodoc
abstract mixin class $FhirDosageDoseAndRateCopyWith<$Res>  {
  factory $FhirDosageDoseAndRateCopyWith(FhirDosageDoseAndRate value, $Res Function(FhirDosageDoseAndRate) _then) = _$FhirDosageDoseAndRateCopyWithImpl;
@useResult
$Res call({
 FhirCodeableConcept? type, FhirRange? doseRange, FhirQuantity? doseQuantity, FhirRange? rateRange, FhirQuantity? rateQuantity
});


$FhirCodeableConceptCopyWith<$Res>? get type;$FhirRangeCopyWith<$Res>? get doseRange;$FhirQuantityCopyWith<$Res>? get doseQuantity;$FhirRangeCopyWith<$Res>? get rateRange;$FhirQuantityCopyWith<$Res>? get rateQuantity;

}
/// @nodoc
class _$FhirDosageDoseAndRateCopyWithImpl<$Res>
    implements $FhirDosageDoseAndRateCopyWith<$Res> {
  _$FhirDosageDoseAndRateCopyWithImpl(this._self, this._then);

  final FhirDosageDoseAndRate _self;
  final $Res Function(FhirDosageDoseAndRate) _then;

/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? doseRange = freezed,Object? doseQuantity = freezed,Object? rateRange = freezed,Object? rateQuantity = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,doseRange: freezed == doseRange ? _self.doseRange : doseRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,doseQuantity: freezed == doseQuantity ? _self.doseQuantity : doseQuantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,rateRange: freezed == rateRange ? _self.rateRange : rateRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,rateQuantity: freezed == rateQuantity ? _self.rateQuantity : rateQuantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,
  ));
}
/// Create a copy of FhirDosageDoseAndRate
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
}/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get doseRange {
    if (_self.doseRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.doseRange!, (value) {
    return _then(_self.copyWith(doseRange: value));
  });
}/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get doseQuantity {
    if (_self.doseQuantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.doseQuantity!, (value) {
    return _then(_self.copyWith(doseQuantity: value));
  });
}/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get rateRange {
    if (_self.rateRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.rateRange!, (value) {
    return _then(_self.copyWith(rateRange: value));
  });
}/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get rateQuantity {
    if (_self.rateQuantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.rateQuantity!, (value) {
    return _then(_self.copyWith(rateQuantity: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirDosageDoseAndRate].
extension FhirDosageDoseAndRatePatterns on FhirDosageDoseAndRate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirDosageDoseAndRate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirDosageDoseAndRate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirDosageDoseAndRate value)  $default,){
final _that = this;
switch (_that) {
case _FhirDosageDoseAndRate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirDosageDoseAndRate value)?  $default,){
final _that = this;
switch (_that) {
case _FhirDosageDoseAndRate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FhirCodeableConcept? type,  FhirRange? doseRange,  FhirQuantity? doseQuantity,  FhirRange? rateRange,  FhirQuantity? rateQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirDosageDoseAndRate() when $default != null:
return $default(_that.type,_that.doseRange,_that.doseQuantity,_that.rateRange,_that.rateQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FhirCodeableConcept? type,  FhirRange? doseRange,  FhirQuantity? doseQuantity,  FhirRange? rateRange,  FhirQuantity? rateQuantity)  $default,) {final _that = this;
switch (_that) {
case _FhirDosageDoseAndRate():
return $default(_that.type,_that.doseRange,_that.doseQuantity,_that.rateRange,_that.rateQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FhirCodeableConcept? type,  FhirRange? doseRange,  FhirQuantity? doseQuantity,  FhirRange? rateRange,  FhirQuantity? rateQuantity)?  $default,) {final _that = this;
switch (_that) {
case _FhirDosageDoseAndRate() when $default != null:
return $default(_that.type,_that.doseRange,_that.doseQuantity,_that.rateRange,_that.rateQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirDosageDoseAndRate implements FhirDosageDoseAndRate {
  const _FhirDosageDoseAndRate({this.type, this.doseRange, this.doseQuantity, this.rateRange, this.rateQuantity});
  factory _FhirDosageDoseAndRate.fromJson(Map<String, dynamic> json) => _$FhirDosageDoseAndRateFromJson(json);

@override final  FhirCodeableConcept? type;
@override final  FhirRange? doseRange;
@override final  FhirQuantity? doseQuantity;
@override final  FhirRange? rateRange;
@override final  FhirQuantity? rateQuantity;

/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirDosageDoseAndRateCopyWith<_FhirDosageDoseAndRate> get copyWith => __$FhirDosageDoseAndRateCopyWithImpl<_FhirDosageDoseAndRate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirDosageDoseAndRateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirDosageDoseAndRate&&(identical(other.type, type) || other.type == type)&&(identical(other.doseRange, doseRange) || other.doseRange == doseRange)&&(identical(other.doseQuantity, doseQuantity) || other.doseQuantity == doseQuantity)&&(identical(other.rateRange, rateRange) || other.rateRange == rateRange)&&(identical(other.rateQuantity, rateQuantity) || other.rateQuantity == rateQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,doseRange,doseQuantity,rateRange,rateQuantity);

@override
String toString() {
  return 'FhirDosageDoseAndRate(type: $type, doseRange: $doseRange, doseQuantity: $doseQuantity, rateRange: $rateRange, rateQuantity: $rateQuantity)';
}


}

/// @nodoc
abstract mixin class _$FhirDosageDoseAndRateCopyWith<$Res> implements $FhirDosageDoseAndRateCopyWith<$Res> {
  factory _$FhirDosageDoseAndRateCopyWith(_FhirDosageDoseAndRate value, $Res Function(_FhirDosageDoseAndRate) _then) = __$FhirDosageDoseAndRateCopyWithImpl;
@override @useResult
$Res call({
 FhirCodeableConcept? type, FhirRange? doseRange, FhirQuantity? doseQuantity, FhirRange? rateRange, FhirQuantity? rateQuantity
});


@override $FhirCodeableConceptCopyWith<$Res>? get type;@override $FhirRangeCopyWith<$Res>? get doseRange;@override $FhirQuantityCopyWith<$Res>? get doseQuantity;@override $FhirRangeCopyWith<$Res>? get rateRange;@override $FhirQuantityCopyWith<$Res>? get rateQuantity;

}
/// @nodoc
class __$FhirDosageDoseAndRateCopyWithImpl<$Res>
    implements _$FhirDosageDoseAndRateCopyWith<$Res> {
  __$FhirDosageDoseAndRateCopyWithImpl(this._self, this._then);

  final _FhirDosageDoseAndRate _self;
  final $Res Function(_FhirDosageDoseAndRate) _then;

/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? doseRange = freezed,Object? doseQuantity = freezed,Object? rateRange = freezed,Object? rateQuantity = freezed,}) {
  return _then(_FhirDosageDoseAndRate(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,doseRange: freezed == doseRange ? _self.doseRange : doseRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,doseQuantity: freezed == doseQuantity ? _self.doseQuantity : doseQuantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,rateRange: freezed == rateRange ? _self.rateRange : rateRange // ignore: cast_nullable_to_non_nullable
as FhirRange?,rateQuantity: freezed == rateQuantity ? _self.rateQuantity : rateQuantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,
  ));
}

/// Create a copy of FhirDosageDoseAndRate
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
}/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get doseRange {
    if (_self.doseRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.doseRange!, (value) {
    return _then(_self.copyWith(doseRange: value));
  });
}/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get doseQuantity {
    if (_self.doseQuantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.doseQuantity!, (value) {
    return _then(_self.copyWith(doseQuantity: value));
  });
}/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirRangeCopyWith<$Res>? get rateRange {
    if (_self.rateRange == null) {
    return null;
  }

  return $FhirRangeCopyWith<$Res>(_self.rateRange!, (value) {
    return _then(_self.copyWith(rateRange: value));
  });
}/// Create a copy of FhirDosageDoseAndRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get rateQuantity {
    if (_self.rateQuantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.rateQuantity!, (value) {
    return _then(_self.copyWith(rateQuantity: value));
  });
}
}


/// @nodoc
mixin _$FhirMedicationRequestDispenseRequest {

 FhirMedicationRequestInitialFill? get initialFill; FhirQuantity? get dispenseInterval; FhirPeriod? get validityPeriod; int? get numberOfRepeatsAllowed; FhirQuantity? get quantity; FhirQuantity? get expectedSupplyDuration; FhirReference? get performer;
/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirMedicationRequestDispenseRequestCopyWith<FhirMedicationRequestDispenseRequest> get copyWith => _$FhirMedicationRequestDispenseRequestCopyWithImpl<FhirMedicationRequestDispenseRequest>(this as FhirMedicationRequestDispenseRequest, _$identity);

  /// Serializes this FhirMedicationRequestDispenseRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirMedicationRequestDispenseRequest&&(identical(other.initialFill, initialFill) || other.initialFill == initialFill)&&(identical(other.dispenseInterval, dispenseInterval) || other.dispenseInterval == dispenseInterval)&&(identical(other.validityPeriod, validityPeriod) || other.validityPeriod == validityPeriod)&&(identical(other.numberOfRepeatsAllowed, numberOfRepeatsAllowed) || other.numberOfRepeatsAllowed == numberOfRepeatsAllowed)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.expectedSupplyDuration, expectedSupplyDuration) || other.expectedSupplyDuration == expectedSupplyDuration)&&(identical(other.performer, performer) || other.performer == performer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,initialFill,dispenseInterval,validityPeriod,numberOfRepeatsAllowed,quantity,expectedSupplyDuration,performer);

@override
String toString() {
  return 'FhirMedicationRequestDispenseRequest(initialFill: $initialFill, dispenseInterval: $dispenseInterval, validityPeriod: $validityPeriod, numberOfRepeatsAllowed: $numberOfRepeatsAllowed, quantity: $quantity, expectedSupplyDuration: $expectedSupplyDuration, performer: $performer)';
}


}

/// @nodoc
abstract mixin class $FhirMedicationRequestDispenseRequestCopyWith<$Res>  {
  factory $FhirMedicationRequestDispenseRequestCopyWith(FhirMedicationRequestDispenseRequest value, $Res Function(FhirMedicationRequestDispenseRequest) _then) = _$FhirMedicationRequestDispenseRequestCopyWithImpl;
@useResult
$Res call({
 FhirMedicationRequestInitialFill? initialFill, FhirQuantity? dispenseInterval, FhirPeriod? validityPeriod, int? numberOfRepeatsAllowed, FhirQuantity? quantity, FhirQuantity? expectedSupplyDuration, FhirReference? performer
});


$FhirMedicationRequestInitialFillCopyWith<$Res>? get initialFill;$FhirQuantityCopyWith<$Res>? get dispenseInterval;$FhirPeriodCopyWith<$Res>? get validityPeriod;$FhirQuantityCopyWith<$Res>? get quantity;$FhirQuantityCopyWith<$Res>? get expectedSupplyDuration;$FhirReferenceCopyWith<$Res>? get performer;

}
/// @nodoc
class _$FhirMedicationRequestDispenseRequestCopyWithImpl<$Res>
    implements $FhirMedicationRequestDispenseRequestCopyWith<$Res> {
  _$FhirMedicationRequestDispenseRequestCopyWithImpl(this._self, this._then);

  final FhirMedicationRequestDispenseRequest _self;
  final $Res Function(FhirMedicationRequestDispenseRequest) _then;

/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialFill = freezed,Object? dispenseInterval = freezed,Object? validityPeriod = freezed,Object? numberOfRepeatsAllowed = freezed,Object? quantity = freezed,Object? expectedSupplyDuration = freezed,Object? performer = freezed,}) {
  return _then(_self.copyWith(
initialFill: freezed == initialFill ? _self.initialFill : initialFill // ignore: cast_nullable_to_non_nullable
as FhirMedicationRequestInitialFill?,dispenseInterval: freezed == dispenseInterval ? _self.dispenseInterval : dispenseInterval // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,validityPeriod: freezed == validityPeriod ? _self.validityPeriod : validityPeriod // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,numberOfRepeatsAllowed: freezed == numberOfRepeatsAllowed ? _self.numberOfRepeatsAllowed : numberOfRepeatsAllowed // ignore: cast_nullable_to_non_nullable
as int?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,expectedSupplyDuration: freezed == expectedSupplyDuration ? _self.expectedSupplyDuration : expectedSupplyDuration // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,performer: freezed == performer ? _self.performer : performer // ignore: cast_nullable_to_non_nullable
as FhirReference?,
  ));
}
/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirMedicationRequestInitialFillCopyWith<$Res>? get initialFill {
    if (_self.initialFill == null) {
    return null;
  }

  return $FhirMedicationRequestInitialFillCopyWith<$Res>(_self.initialFill!, (value) {
    return _then(_self.copyWith(initialFill: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get dispenseInterval {
    if (_self.dispenseInterval == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.dispenseInterval!, (value) {
    return _then(_self.copyWith(dispenseInterval: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get validityPeriod {
    if (_self.validityPeriod == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.validityPeriod!, (value) {
    return _then(_self.copyWith(validityPeriod: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get quantity {
    if (_self.quantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.quantity!, (value) {
    return _then(_self.copyWith(quantity: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get expectedSupplyDuration {
    if (_self.expectedSupplyDuration == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.expectedSupplyDuration!, (value) {
    return _then(_self.copyWith(expectedSupplyDuration: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get performer {
    if (_self.performer == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.performer!, (value) {
    return _then(_self.copyWith(performer: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirMedicationRequestDispenseRequest].
extension FhirMedicationRequestDispenseRequestPatterns on FhirMedicationRequestDispenseRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirMedicationRequestDispenseRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirMedicationRequestDispenseRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirMedicationRequestDispenseRequest value)  $default,){
final _that = this;
switch (_that) {
case _FhirMedicationRequestDispenseRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirMedicationRequestDispenseRequest value)?  $default,){
final _that = this;
switch (_that) {
case _FhirMedicationRequestDispenseRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FhirMedicationRequestInitialFill? initialFill,  FhirQuantity? dispenseInterval,  FhirPeriod? validityPeriod,  int? numberOfRepeatsAllowed,  FhirQuantity? quantity,  FhirQuantity? expectedSupplyDuration,  FhirReference? performer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirMedicationRequestDispenseRequest() when $default != null:
return $default(_that.initialFill,_that.dispenseInterval,_that.validityPeriod,_that.numberOfRepeatsAllowed,_that.quantity,_that.expectedSupplyDuration,_that.performer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FhirMedicationRequestInitialFill? initialFill,  FhirQuantity? dispenseInterval,  FhirPeriod? validityPeriod,  int? numberOfRepeatsAllowed,  FhirQuantity? quantity,  FhirQuantity? expectedSupplyDuration,  FhirReference? performer)  $default,) {final _that = this;
switch (_that) {
case _FhirMedicationRequestDispenseRequest():
return $default(_that.initialFill,_that.dispenseInterval,_that.validityPeriod,_that.numberOfRepeatsAllowed,_that.quantity,_that.expectedSupplyDuration,_that.performer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FhirMedicationRequestInitialFill? initialFill,  FhirQuantity? dispenseInterval,  FhirPeriod? validityPeriod,  int? numberOfRepeatsAllowed,  FhirQuantity? quantity,  FhirQuantity? expectedSupplyDuration,  FhirReference? performer)?  $default,) {final _that = this;
switch (_that) {
case _FhirMedicationRequestDispenseRequest() when $default != null:
return $default(_that.initialFill,_that.dispenseInterval,_that.validityPeriod,_that.numberOfRepeatsAllowed,_that.quantity,_that.expectedSupplyDuration,_that.performer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirMedicationRequestDispenseRequest implements FhirMedicationRequestDispenseRequest {
  const _FhirMedicationRequestDispenseRequest({this.initialFill, this.dispenseInterval, this.validityPeriod, this.numberOfRepeatsAllowed, this.quantity, this.expectedSupplyDuration, this.performer});
  factory _FhirMedicationRequestDispenseRequest.fromJson(Map<String, dynamic> json) => _$FhirMedicationRequestDispenseRequestFromJson(json);

@override final  FhirMedicationRequestInitialFill? initialFill;
@override final  FhirQuantity? dispenseInterval;
@override final  FhirPeriod? validityPeriod;
@override final  int? numberOfRepeatsAllowed;
@override final  FhirQuantity? quantity;
@override final  FhirQuantity? expectedSupplyDuration;
@override final  FhirReference? performer;

/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirMedicationRequestDispenseRequestCopyWith<_FhirMedicationRequestDispenseRequest> get copyWith => __$FhirMedicationRequestDispenseRequestCopyWithImpl<_FhirMedicationRequestDispenseRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirMedicationRequestDispenseRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirMedicationRequestDispenseRequest&&(identical(other.initialFill, initialFill) || other.initialFill == initialFill)&&(identical(other.dispenseInterval, dispenseInterval) || other.dispenseInterval == dispenseInterval)&&(identical(other.validityPeriod, validityPeriod) || other.validityPeriod == validityPeriod)&&(identical(other.numberOfRepeatsAllowed, numberOfRepeatsAllowed) || other.numberOfRepeatsAllowed == numberOfRepeatsAllowed)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.expectedSupplyDuration, expectedSupplyDuration) || other.expectedSupplyDuration == expectedSupplyDuration)&&(identical(other.performer, performer) || other.performer == performer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,initialFill,dispenseInterval,validityPeriod,numberOfRepeatsAllowed,quantity,expectedSupplyDuration,performer);

@override
String toString() {
  return 'FhirMedicationRequestDispenseRequest(initialFill: $initialFill, dispenseInterval: $dispenseInterval, validityPeriod: $validityPeriod, numberOfRepeatsAllowed: $numberOfRepeatsAllowed, quantity: $quantity, expectedSupplyDuration: $expectedSupplyDuration, performer: $performer)';
}


}

/// @nodoc
abstract mixin class _$FhirMedicationRequestDispenseRequestCopyWith<$Res> implements $FhirMedicationRequestDispenseRequestCopyWith<$Res> {
  factory _$FhirMedicationRequestDispenseRequestCopyWith(_FhirMedicationRequestDispenseRequest value, $Res Function(_FhirMedicationRequestDispenseRequest) _then) = __$FhirMedicationRequestDispenseRequestCopyWithImpl;
@override @useResult
$Res call({
 FhirMedicationRequestInitialFill? initialFill, FhirQuantity? dispenseInterval, FhirPeriod? validityPeriod, int? numberOfRepeatsAllowed, FhirQuantity? quantity, FhirQuantity? expectedSupplyDuration, FhirReference? performer
});


@override $FhirMedicationRequestInitialFillCopyWith<$Res>? get initialFill;@override $FhirQuantityCopyWith<$Res>? get dispenseInterval;@override $FhirPeriodCopyWith<$Res>? get validityPeriod;@override $FhirQuantityCopyWith<$Res>? get quantity;@override $FhirQuantityCopyWith<$Res>? get expectedSupplyDuration;@override $FhirReferenceCopyWith<$Res>? get performer;

}
/// @nodoc
class __$FhirMedicationRequestDispenseRequestCopyWithImpl<$Res>
    implements _$FhirMedicationRequestDispenseRequestCopyWith<$Res> {
  __$FhirMedicationRequestDispenseRequestCopyWithImpl(this._self, this._then);

  final _FhirMedicationRequestDispenseRequest _self;
  final $Res Function(_FhirMedicationRequestDispenseRequest) _then;

/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initialFill = freezed,Object? dispenseInterval = freezed,Object? validityPeriod = freezed,Object? numberOfRepeatsAllowed = freezed,Object? quantity = freezed,Object? expectedSupplyDuration = freezed,Object? performer = freezed,}) {
  return _then(_FhirMedicationRequestDispenseRequest(
initialFill: freezed == initialFill ? _self.initialFill : initialFill // ignore: cast_nullable_to_non_nullable
as FhirMedicationRequestInitialFill?,dispenseInterval: freezed == dispenseInterval ? _self.dispenseInterval : dispenseInterval // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,validityPeriod: freezed == validityPeriod ? _self.validityPeriod : validityPeriod // ignore: cast_nullable_to_non_nullable
as FhirPeriod?,numberOfRepeatsAllowed: freezed == numberOfRepeatsAllowed ? _self.numberOfRepeatsAllowed : numberOfRepeatsAllowed // ignore: cast_nullable_to_non_nullable
as int?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,expectedSupplyDuration: freezed == expectedSupplyDuration ? _self.expectedSupplyDuration : expectedSupplyDuration // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,performer: freezed == performer ? _self.performer : performer // ignore: cast_nullable_to_non_nullable
as FhirReference?,
  ));
}

/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirMedicationRequestInitialFillCopyWith<$Res>? get initialFill {
    if (_self.initialFill == null) {
    return null;
  }

  return $FhirMedicationRequestInitialFillCopyWith<$Res>(_self.initialFill!, (value) {
    return _then(_self.copyWith(initialFill: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get dispenseInterval {
    if (_self.dispenseInterval == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.dispenseInterval!, (value) {
    return _then(_self.copyWith(dispenseInterval: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirPeriodCopyWith<$Res>? get validityPeriod {
    if (_self.validityPeriod == null) {
    return null;
  }

  return $FhirPeriodCopyWith<$Res>(_self.validityPeriod!, (value) {
    return _then(_self.copyWith(validityPeriod: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get quantity {
    if (_self.quantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.quantity!, (value) {
    return _then(_self.copyWith(quantity: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get expectedSupplyDuration {
    if (_self.expectedSupplyDuration == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.expectedSupplyDuration!, (value) {
    return _then(_self.copyWith(expectedSupplyDuration: value));
  });
}/// Create a copy of FhirMedicationRequestDispenseRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirReferenceCopyWith<$Res>? get performer {
    if (_self.performer == null) {
    return null;
  }

  return $FhirReferenceCopyWith<$Res>(_self.performer!, (value) {
    return _then(_self.copyWith(performer: value));
  });
}
}


/// @nodoc
mixin _$FhirMedicationRequestInitialFill {

 FhirQuantity? get quantity; FhirQuantity? get duration;
/// Create a copy of FhirMedicationRequestInitialFill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirMedicationRequestInitialFillCopyWith<FhirMedicationRequestInitialFill> get copyWith => _$FhirMedicationRequestInitialFillCopyWithImpl<FhirMedicationRequestInitialFill>(this as FhirMedicationRequestInitialFill, _$identity);

  /// Serializes this FhirMedicationRequestInitialFill to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirMedicationRequestInitialFill&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity,duration);

@override
String toString() {
  return 'FhirMedicationRequestInitialFill(quantity: $quantity, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $FhirMedicationRequestInitialFillCopyWith<$Res>  {
  factory $FhirMedicationRequestInitialFillCopyWith(FhirMedicationRequestInitialFill value, $Res Function(FhirMedicationRequestInitialFill) _then) = _$FhirMedicationRequestInitialFillCopyWithImpl;
@useResult
$Res call({
 FhirQuantity? quantity, FhirQuantity? duration
});


$FhirQuantityCopyWith<$Res>? get quantity;$FhirQuantityCopyWith<$Res>? get duration;

}
/// @nodoc
class _$FhirMedicationRequestInitialFillCopyWithImpl<$Res>
    implements $FhirMedicationRequestInitialFillCopyWith<$Res> {
  _$FhirMedicationRequestInitialFillCopyWithImpl(this._self, this._then);

  final FhirMedicationRequestInitialFill _self;
  final $Res Function(FhirMedicationRequestInitialFill) _then;

/// Create a copy of FhirMedicationRequestInitialFill
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = freezed,Object? duration = freezed,}) {
  return _then(_self.copyWith(
quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,
  ));
}
/// Create a copy of FhirMedicationRequestInitialFill
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get quantity {
    if (_self.quantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.quantity!, (value) {
    return _then(_self.copyWith(quantity: value));
  });
}/// Create a copy of FhirMedicationRequestInitialFill
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get duration {
    if (_self.duration == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.duration!, (value) {
    return _then(_self.copyWith(duration: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirMedicationRequestInitialFill].
extension FhirMedicationRequestInitialFillPatterns on FhirMedicationRequestInitialFill {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirMedicationRequestInitialFill value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirMedicationRequestInitialFill() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirMedicationRequestInitialFill value)  $default,){
final _that = this;
switch (_that) {
case _FhirMedicationRequestInitialFill():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirMedicationRequestInitialFill value)?  $default,){
final _that = this;
switch (_that) {
case _FhirMedicationRequestInitialFill() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FhirQuantity? quantity,  FhirQuantity? duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirMedicationRequestInitialFill() when $default != null:
return $default(_that.quantity,_that.duration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FhirQuantity? quantity,  FhirQuantity? duration)  $default,) {final _that = this;
switch (_that) {
case _FhirMedicationRequestInitialFill():
return $default(_that.quantity,_that.duration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FhirQuantity? quantity,  FhirQuantity? duration)?  $default,) {final _that = this;
switch (_that) {
case _FhirMedicationRequestInitialFill() when $default != null:
return $default(_that.quantity,_that.duration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirMedicationRequestInitialFill implements FhirMedicationRequestInitialFill {
  const _FhirMedicationRequestInitialFill({this.quantity, this.duration});
  factory _FhirMedicationRequestInitialFill.fromJson(Map<String, dynamic> json) => _$FhirMedicationRequestInitialFillFromJson(json);

@override final  FhirQuantity? quantity;
@override final  FhirQuantity? duration;

/// Create a copy of FhirMedicationRequestInitialFill
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirMedicationRequestInitialFillCopyWith<_FhirMedicationRequestInitialFill> get copyWith => __$FhirMedicationRequestInitialFillCopyWithImpl<_FhirMedicationRequestInitialFill>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirMedicationRequestInitialFillToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirMedicationRequestInitialFill&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity,duration);

@override
String toString() {
  return 'FhirMedicationRequestInitialFill(quantity: $quantity, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$FhirMedicationRequestInitialFillCopyWith<$Res> implements $FhirMedicationRequestInitialFillCopyWith<$Res> {
  factory _$FhirMedicationRequestInitialFillCopyWith(_FhirMedicationRequestInitialFill value, $Res Function(_FhirMedicationRequestInitialFill) _then) = __$FhirMedicationRequestInitialFillCopyWithImpl;
@override @useResult
$Res call({
 FhirQuantity? quantity, FhirQuantity? duration
});


@override $FhirQuantityCopyWith<$Res>? get quantity;@override $FhirQuantityCopyWith<$Res>? get duration;

}
/// @nodoc
class __$FhirMedicationRequestInitialFillCopyWithImpl<$Res>
    implements _$FhirMedicationRequestInitialFillCopyWith<$Res> {
  __$FhirMedicationRequestInitialFillCopyWithImpl(this._self, this._then);

  final _FhirMedicationRequestInitialFill _self;
  final $Res Function(_FhirMedicationRequestInitialFill) _then;

/// Create a copy of FhirMedicationRequestInitialFill
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = freezed,Object? duration = freezed,}) {
  return _then(_FhirMedicationRequestInitialFill(
quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as FhirQuantity?,
  ));
}

/// Create a copy of FhirMedicationRequestInitialFill
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get quantity {
    if (_self.quantity == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.quantity!, (value) {
    return _then(_self.copyWith(quantity: value));
  });
}/// Create a copy of FhirMedicationRequestInitialFill
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirQuantityCopyWith<$Res>? get duration {
    if (_self.duration == null) {
    return null;
  }

  return $FhirQuantityCopyWith<$Res>(_self.duration!, (value) {
    return _then(_self.copyWith(duration: value));
  });
}
}


/// @nodoc
mixin _$FhirMedicationRequestSubstitution {

 bool get allowedBoolean; FhirCodeableConcept? get allowedCodeableConcept; FhirCodeableConcept? get reason;
/// Create a copy of FhirMedicationRequestSubstitution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirMedicationRequestSubstitutionCopyWith<FhirMedicationRequestSubstitution> get copyWith => _$FhirMedicationRequestSubstitutionCopyWithImpl<FhirMedicationRequestSubstitution>(this as FhirMedicationRequestSubstitution, _$identity);

  /// Serializes this FhirMedicationRequestSubstitution to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirMedicationRequestSubstitution&&(identical(other.allowedBoolean, allowedBoolean) || other.allowedBoolean == allowedBoolean)&&(identical(other.allowedCodeableConcept, allowedCodeableConcept) || other.allowedCodeableConcept == allowedCodeableConcept)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowedBoolean,allowedCodeableConcept,reason);

@override
String toString() {
  return 'FhirMedicationRequestSubstitution(allowedBoolean: $allowedBoolean, allowedCodeableConcept: $allowedCodeableConcept, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $FhirMedicationRequestSubstitutionCopyWith<$Res>  {
  factory $FhirMedicationRequestSubstitutionCopyWith(FhirMedicationRequestSubstitution value, $Res Function(FhirMedicationRequestSubstitution) _then) = _$FhirMedicationRequestSubstitutionCopyWithImpl;
@useResult
$Res call({
 bool allowedBoolean, FhirCodeableConcept? allowedCodeableConcept, FhirCodeableConcept? reason
});


$FhirCodeableConceptCopyWith<$Res>? get allowedCodeableConcept;$FhirCodeableConceptCopyWith<$Res>? get reason;

}
/// @nodoc
class _$FhirMedicationRequestSubstitutionCopyWithImpl<$Res>
    implements $FhirMedicationRequestSubstitutionCopyWith<$Res> {
  _$FhirMedicationRequestSubstitutionCopyWithImpl(this._self, this._then);

  final FhirMedicationRequestSubstitution _self;
  final $Res Function(FhirMedicationRequestSubstitution) _then;

/// Create a copy of FhirMedicationRequestSubstitution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allowedBoolean = null,Object? allowedCodeableConcept = freezed,Object? reason = freezed,}) {
  return _then(_self.copyWith(
allowedBoolean: null == allowedBoolean ? _self.allowedBoolean : allowedBoolean // ignore: cast_nullable_to_non_nullable
as bool,allowedCodeableConcept: freezed == allowedCodeableConcept ? _self.allowedCodeableConcept : allowedCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,
  ));
}
/// Create a copy of FhirMedicationRequestSubstitution
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get allowedCodeableConcept {
    if (_self.allowedCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.allowedCodeableConcept!, (value) {
    return _then(_self.copyWith(allowedCodeableConcept: value));
  });
}/// Create a copy of FhirMedicationRequestSubstitution
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get reason {
    if (_self.reason == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.reason!, (value) {
    return _then(_self.copyWith(reason: value));
  });
}
}


/// Adds pattern-matching-related methods to [FhirMedicationRequestSubstitution].
extension FhirMedicationRequestSubstitutionPatterns on FhirMedicationRequestSubstitution {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FhirMedicationRequestSubstitution value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FhirMedicationRequestSubstitution() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FhirMedicationRequestSubstitution value)  $default,){
final _that = this;
switch (_that) {
case _FhirMedicationRequestSubstitution():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FhirMedicationRequestSubstitution value)?  $default,){
final _that = this;
switch (_that) {
case _FhirMedicationRequestSubstitution() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool allowedBoolean,  FhirCodeableConcept? allowedCodeableConcept,  FhirCodeableConcept? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FhirMedicationRequestSubstitution() when $default != null:
return $default(_that.allowedBoolean,_that.allowedCodeableConcept,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool allowedBoolean,  FhirCodeableConcept? allowedCodeableConcept,  FhirCodeableConcept? reason)  $default,) {final _that = this;
switch (_that) {
case _FhirMedicationRequestSubstitution():
return $default(_that.allowedBoolean,_that.allowedCodeableConcept,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool allowedBoolean,  FhirCodeableConcept? allowedCodeableConcept,  FhirCodeableConcept? reason)?  $default,) {final _that = this;
switch (_that) {
case _FhirMedicationRequestSubstitution() when $default != null:
return $default(_that.allowedBoolean,_that.allowedCodeableConcept,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FhirMedicationRequestSubstitution implements FhirMedicationRequestSubstitution {
  const _FhirMedicationRequestSubstitution({required this.allowedBoolean, this.allowedCodeableConcept, this.reason});
  factory _FhirMedicationRequestSubstitution.fromJson(Map<String, dynamic> json) => _$FhirMedicationRequestSubstitutionFromJson(json);

@override final  bool allowedBoolean;
@override final  FhirCodeableConcept? allowedCodeableConcept;
@override final  FhirCodeableConcept? reason;

/// Create a copy of FhirMedicationRequestSubstitution
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FhirMedicationRequestSubstitutionCopyWith<_FhirMedicationRequestSubstitution> get copyWith => __$FhirMedicationRequestSubstitutionCopyWithImpl<_FhirMedicationRequestSubstitution>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FhirMedicationRequestSubstitutionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FhirMedicationRequestSubstitution&&(identical(other.allowedBoolean, allowedBoolean) || other.allowedBoolean == allowedBoolean)&&(identical(other.allowedCodeableConcept, allowedCodeableConcept) || other.allowedCodeableConcept == allowedCodeableConcept)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowedBoolean,allowedCodeableConcept,reason);

@override
String toString() {
  return 'FhirMedicationRequestSubstitution(allowedBoolean: $allowedBoolean, allowedCodeableConcept: $allowedCodeableConcept, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$FhirMedicationRequestSubstitutionCopyWith<$Res> implements $FhirMedicationRequestSubstitutionCopyWith<$Res> {
  factory _$FhirMedicationRequestSubstitutionCopyWith(_FhirMedicationRequestSubstitution value, $Res Function(_FhirMedicationRequestSubstitution) _then) = __$FhirMedicationRequestSubstitutionCopyWithImpl;
@override @useResult
$Res call({
 bool allowedBoolean, FhirCodeableConcept? allowedCodeableConcept, FhirCodeableConcept? reason
});


@override $FhirCodeableConceptCopyWith<$Res>? get allowedCodeableConcept;@override $FhirCodeableConceptCopyWith<$Res>? get reason;

}
/// @nodoc
class __$FhirMedicationRequestSubstitutionCopyWithImpl<$Res>
    implements _$FhirMedicationRequestSubstitutionCopyWith<$Res> {
  __$FhirMedicationRequestSubstitutionCopyWithImpl(this._self, this._then);

  final _FhirMedicationRequestSubstitution _self;
  final $Res Function(_FhirMedicationRequestSubstitution) _then;

/// Create a copy of FhirMedicationRequestSubstitution
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allowedBoolean = null,Object? allowedCodeableConcept = freezed,Object? reason = freezed,}) {
  return _then(_FhirMedicationRequestSubstitution(
allowedBoolean: null == allowedBoolean ? _self.allowedBoolean : allowedBoolean // ignore: cast_nullable_to_non_nullable
as bool,allowedCodeableConcept: freezed == allowedCodeableConcept ? _self.allowedCodeableConcept : allowedCodeableConcept // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as FhirCodeableConcept?,
  ));
}

/// Create a copy of FhirMedicationRequestSubstitution
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get allowedCodeableConcept {
    if (_self.allowedCodeableConcept == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.allowedCodeableConcept!, (value) {
    return _then(_self.copyWith(allowedCodeableConcept: value));
  });
}/// Create a copy of FhirMedicationRequestSubstitution
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FhirCodeableConceptCopyWith<$Res>? get reason {
    if (_self.reason == null) {
    return null;
  }

  return $FhirCodeableConceptCopyWith<$Res>(_self.reason!, (value) {
    return _then(_self.copyWith(reason: value));
  });
}
}

// dart format on
