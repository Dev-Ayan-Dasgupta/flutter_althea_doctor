// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FhirMedicationRequest _$FhirMedicationRequestFromJson(
  Map<String, dynamic> json,
) => _FhirMedicationRequest(
  id: json['id'] as String,
  resourceType: json['resourceType'] as String,
  identifier:
      (json['identifier'] as List<dynamic>?)
          ?.map((e) => FhirIdentifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  status: json['status'] as String,
  statusReason: json['statusReason'] as String?,
  intent: json['intent'] as String,
  category:
      (json['category'] as List<dynamic>?)
          ?.map((e) => FhirCodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  priority: json['priority'] as String?,
  doNotPerform: json['doNotPerform'] as bool?,
  medicationCodeableConcept: json['medicationCodeableConcept'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['medicationCodeableConcept'] as Map<String, dynamic>,
        ),
  medicationReference: json['medicationReference'] == null
      ? null
      : FhirReference.fromJson(
          json['medicationReference'] as Map<String, dynamic>,
        ),
  subject: FhirReference.fromJson(json['subject'] as Map<String, dynamic>),
  encounter: json['encounter'] == null
      ? null
      : FhirReference.fromJson(json['encounter'] as Map<String, dynamic>),
  supportingInformation:
      (json['supportingInformation'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  authoredOn: json['authoredOn'] as String?,
  requester: json['requester'] == null
      ? null
      : FhirReference.fromJson(json['requester'] as Map<String, dynamic>),
  performer: json['performer'] == null
      ? null
      : FhirReference.fromJson(json['performer'] as Map<String, dynamic>),
  performerType: json['performerType'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['performerType'] as Map<String, dynamic>,
        ),
  recorder: json['recorder'] == null
      ? null
      : FhirReference.fromJson(json['recorder'] as Map<String, dynamic>),
  reasonCode:
      (json['reasonCode'] as List<dynamic>?)
          ?.map((e) => FhirCodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  reasonReference:
      (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  instantiatesCanonical:
      (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  instantiatesUri:
      (json['instantiatesUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  basedOn:
      (json['basedOn'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  groupIdentifier: json['groupIdentifier'] == null
      ? null
      : FhirIdentifier.fromJson(
          json['groupIdentifier'] as Map<String, dynamic>,
        ),
  courseOfTherapyType: json['courseOfTherapyType'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['courseOfTherapyType'] as Map<String, dynamic>,
        ),
  insurance:
      (json['insurance'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  note:
      (json['note'] as List<dynamic>?)
          ?.map((e) => FhirAnnotation.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  dosageInstruction:
      (json['dosageInstruction'] as List<dynamic>?)
          ?.map((e) => FhirDosage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  dispenseRequest: json['dispenseRequest'] == null
      ? null
      : FhirMedicationRequestDispenseRequest.fromJson(
          json['dispenseRequest'] as Map<String, dynamic>,
        ),
  substitution: json['substitution'] == null
      ? null
      : FhirMedicationRequestSubstitution.fromJson(
          json['substitution'] as Map<String, dynamic>,
        ),
  priorPrescription: json['priorPrescription'] == null
      ? null
      : FhirReference.fromJson(
          json['priorPrescription'] as Map<String, dynamic>,
        ),
  detectedIssue:
      (json['detectedIssue'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  eventHistory:
      (json['eventHistory'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  meta: json['meta'] == null
      ? null
      : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirMedicationRequestToJson(
  _FhirMedicationRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'resourceType': instance.resourceType,
  'identifier': instance.identifier,
  'status': instance.status,
  'statusReason': instance.statusReason,
  'intent': instance.intent,
  'category': instance.category,
  'priority': instance.priority,
  'doNotPerform': instance.doNotPerform,
  'medicationCodeableConcept': instance.medicationCodeableConcept,
  'medicationReference': instance.medicationReference,
  'subject': instance.subject,
  'encounter': instance.encounter,
  'supportingInformation': instance.supportingInformation,
  'authoredOn': instance.authoredOn,
  'requester': instance.requester,
  'performer': instance.performer,
  'performerType': instance.performerType,
  'recorder': instance.recorder,
  'reasonCode': instance.reasonCode,
  'reasonReference': instance.reasonReference,
  'instantiatesCanonical': instance.instantiatesCanonical,
  'instantiatesUri': instance.instantiatesUri,
  'basedOn': instance.basedOn,
  'groupIdentifier': instance.groupIdentifier,
  'courseOfTherapyType': instance.courseOfTherapyType,
  'insurance': instance.insurance,
  'note': instance.note,
  'dosageInstruction': instance.dosageInstruction,
  'dispenseRequest': instance.dispenseRequest,
  'substitution': instance.substitution,
  'priorPrescription': instance.priorPrescription,
  'detectedIssue': instance.detectedIssue,
  'eventHistory': instance.eventHistory,
  'meta': instance.meta,
};

_FhirDosage _$FhirDosageFromJson(Map<String, dynamic> json) => _FhirDosage(
  sequence: (json['sequence'] as num?)?.toInt(),
  text: json['text'] as String?,
  additionalInstruction:
      (json['additionalInstruction'] as List<dynamic>?)
          ?.map((e) => FhirCodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  patientInstruction: json['patientInstruction'] as String?,
  timing: json['timing'] == null
      ? null
      : FhirTiming.fromJson(json['timing'] as Map<String, dynamic>),
  asNeededBoolean: json['asNeededBoolean'] as bool?,
  asNeededCodeableConcept: json['asNeededCodeableConcept'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['asNeededCodeableConcept'] as Map<String, dynamic>,
        ),
  site: json['site'] == null
      ? null
      : FhirCodeableConcept.fromJson(json['site'] as Map<String, dynamic>),
  route: json['route'] == null
      ? null
      : FhirCodeableConcept.fromJson(json['route'] as Map<String, dynamic>),
  method: json['method'] == null
      ? null
      : FhirCodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
  doseAndRate:
      (json['doseAndRate'] as List<dynamic>?)
          ?.map(
            (e) => FhirDosageDoseAndRate.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  maxDosePerPeriod: json['maxDosePerPeriod'] == null
      ? null
      : FhirQuantity.fromJson(json['maxDosePerPeriod'] as Map<String, dynamic>),
  maxDosePerAdministration: json['maxDosePerAdministration'] == null
      ? null
      : FhirQuantity.fromJson(
          json['maxDosePerAdministration'] as Map<String, dynamic>,
        ),
  maxDosePerLifetime: json['maxDosePerLifetime'] == null
      ? null
      : FhirQuantity.fromJson(
          json['maxDosePerLifetime'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$FhirDosageToJson(_FhirDosage instance) =>
    <String, dynamic>{
      'sequence': instance.sequence,
      'text': instance.text,
      'additionalInstruction': instance.additionalInstruction,
      'patientInstruction': instance.patientInstruction,
      'timing': instance.timing,
      'asNeededBoolean': instance.asNeededBoolean,
      'asNeededCodeableConcept': instance.asNeededCodeableConcept,
      'site': instance.site,
      'route': instance.route,
      'method': instance.method,
      'doseAndRate': instance.doseAndRate,
      'maxDosePerPeriod': instance.maxDosePerPeriod,
      'maxDosePerAdministration': instance.maxDosePerAdministration,
      'maxDosePerLifetime': instance.maxDosePerLifetime,
    };

_FhirTiming _$FhirTimingFromJson(Map<String, dynamic> json) => _FhirTiming(
  event:
      (json['event'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  repeat: json['repeat'] == null
      ? null
      : FhirTimingRepeat.fromJson(json['repeat'] as Map<String, dynamic>),
  code: json['code'] == null
      ? null
      : FhirCodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirTimingToJson(_FhirTiming instance) =>
    <String, dynamic>{
      'event': instance.event,
      'repeat': instance.repeat,
      'code': instance.code,
    };

_FhirTimingRepeat _$FhirTimingRepeatFromJson(
  Map<String, dynamic> json,
) => _FhirTimingRepeat(
  boundsDuration: json['boundsDuration'] == null
      ? null
      : FhirQuantity.fromJson(json['boundsDuration'] as Map<String, dynamic>),
  boundsRange: json['boundsRange'] == null
      ? null
      : FhirRange.fromJson(json['boundsRange'] as Map<String, dynamic>),
  boundsPeriod: json['boundsPeriod'] == null
      ? null
      : FhirPeriod.fromJson(json['boundsPeriod'] as Map<String, dynamic>),
  count: (json['count'] as num?)?.toInt(),
  countMax: (json['countMax'] as num?)?.toInt(),
  duration: (json['duration'] as num?)?.toDouble(),
  durationMax: (json['durationMax'] as num?)?.toDouble(),
  durationUnit: json['durationUnit'] as String?,
  frequency: (json['frequency'] as num?)?.toInt(),
  frequencyMax: (json['frequencyMax'] as num?)?.toInt(),
  period: (json['period'] as num?)?.toDouble(),
  periodMax: (json['periodMax'] as num?)?.toDouble(),
  periodUnit: json['periodUnit'] as String?,
  dayOfWeek:
      (json['dayOfWeek'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  timeOfDay:
      (json['timeOfDay'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  when:
      (json['when'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  offset: (json['offset'] as num?)?.toInt(),
);

Map<String, dynamic> _$FhirTimingRepeatToJson(_FhirTimingRepeat instance) =>
    <String, dynamic>{
      'boundsDuration': instance.boundsDuration,
      'boundsRange': instance.boundsRange,
      'boundsPeriod': instance.boundsPeriod,
      'count': instance.count,
      'countMax': instance.countMax,
      'duration': instance.duration,
      'durationMax': instance.durationMax,
      'durationUnit': instance.durationUnit,
      'frequency': instance.frequency,
      'frequencyMax': instance.frequencyMax,
      'period': instance.period,
      'periodMax': instance.periodMax,
      'periodUnit': instance.periodUnit,
      'dayOfWeek': instance.dayOfWeek,
      'timeOfDay': instance.timeOfDay,
      'when': instance.when,
      'offset': instance.offset,
    };

_FhirDosageDoseAndRate _$FhirDosageDoseAndRateFromJson(
  Map<String, dynamic> json,
) => _FhirDosageDoseAndRate(
  type: json['type'] == null
      ? null
      : FhirCodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
  doseRange: json['doseRange'] == null
      ? null
      : FhirRange.fromJson(json['doseRange'] as Map<String, dynamic>),
  doseQuantity: json['doseQuantity'] == null
      ? null
      : FhirQuantity.fromJson(json['doseQuantity'] as Map<String, dynamic>),
  rateRange: json['rateRange'] == null
      ? null
      : FhirRange.fromJson(json['rateRange'] as Map<String, dynamic>),
  rateQuantity: json['rateQuantity'] == null
      ? null
      : FhirQuantity.fromJson(json['rateQuantity'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirDosageDoseAndRateToJson(
  _FhirDosageDoseAndRate instance,
) => <String, dynamic>{
  'type': instance.type,
  'doseRange': instance.doseRange,
  'doseQuantity': instance.doseQuantity,
  'rateRange': instance.rateRange,
  'rateQuantity': instance.rateQuantity,
};

_FhirMedicationRequestDispenseRequest
_$FhirMedicationRequestDispenseRequestFromJson(Map<String, dynamic> json) =>
    _FhirMedicationRequestDispenseRequest(
      initialFill: json['initialFill'] == null
          ? null
          : FhirMedicationRequestInitialFill.fromJson(
              json['initialFill'] as Map<String, dynamic>,
            ),
      dispenseInterval: json['dispenseInterval'] == null
          ? null
          : FhirQuantity.fromJson(
              json['dispenseInterval'] as Map<String, dynamic>,
            ),
      validityPeriod: json['validityPeriod'] == null
          ? null
          : FhirPeriod.fromJson(json['validityPeriod'] as Map<String, dynamic>),
      numberOfRepeatsAllowed: (json['numberOfRepeatsAllowed'] as num?)?.toInt(),
      quantity: json['quantity'] == null
          ? null
          : FhirQuantity.fromJson(json['quantity'] as Map<String, dynamic>),
      expectedSupplyDuration: json['expectedSupplyDuration'] == null
          ? null
          : FhirQuantity.fromJson(
              json['expectedSupplyDuration'] as Map<String, dynamic>,
            ),
      performer: json['performer'] == null
          ? null
          : FhirReference.fromJson(json['performer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FhirMedicationRequestDispenseRequestToJson(
  _FhirMedicationRequestDispenseRequest instance,
) => <String, dynamic>{
  'initialFill': instance.initialFill,
  'dispenseInterval': instance.dispenseInterval,
  'validityPeriod': instance.validityPeriod,
  'numberOfRepeatsAllowed': instance.numberOfRepeatsAllowed,
  'quantity': instance.quantity,
  'expectedSupplyDuration': instance.expectedSupplyDuration,
  'performer': instance.performer,
};

_FhirMedicationRequestInitialFill _$FhirMedicationRequestInitialFillFromJson(
  Map<String, dynamic> json,
) => _FhirMedicationRequestInitialFill(
  quantity: json['quantity'] == null
      ? null
      : FhirQuantity.fromJson(json['quantity'] as Map<String, dynamic>),
  duration: json['duration'] == null
      ? null
      : FhirQuantity.fromJson(json['duration'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirMedicationRequestInitialFillToJson(
  _FhirMedicationRequestInitialFill instance,
) => <String, dynamic>{
  'quantity': instance.quantity,
  'duration': instance.duration,
};

_FhirMedicationRequestSubstitution _$FhirMedicationRequestSubstitutionFromJson(
  Map<String, dynamic> json,
) => _FhirMedicationRequestSubstitution(
  allowedBoolean: json['allowedBoolean'] as bool,
  allowedCodeableConcept: json['allowedCodeableConcept'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['allowedCodeableConcept'] as Map<String, dynamic>,
        ),
  reason: json['reason'] == null
      ? null
      : FhirCodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirMedicationRequestSubstitutionToJson(
  _FhirMedicationRequestSubstitution instance,
) => <String, dynamic>{
  'allowedBoolean': instance.allowedBoolean,
  'allowedCodeableConcept': instance.allowedCodeableConcept,
  'reason': instance.reason,
};
