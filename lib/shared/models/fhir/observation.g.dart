// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FhirObservation _$FhirObservationFromJson(
  Map<String, dynamic> json,
) => _FhirObservation(
  id: json['id'] as String,
  resourceType: json['resourceType'] as String,
  identifier:
      (json['identifier'] as List<dynamic>?)
          ?.map((e) => FhirIdentifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  basedOn:
      (json['basedOn'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  partOf:
      (json['partOf'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  status: json['status'] as String,
  category:
      (json['category'] as List<dynamic>?)
          ?.map((e) => FhirCodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  code: FhirCodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
  subject: json['subject'] == null
      ? null
      : FhirReference.fromJson(json['subject'] as Map<String, dynamic>),
  encounter: json['encounter'] == null
      ? null
      : FhirReference.fromJson(json['encounter'] as Map<String, dynamic>),
  effectiveDateTime: json['effectiveDateTime'] as String?,
  effectivePeriod: json['effectivePeriod'] == null
      ? null
      : FhirPeriod.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
  issued: json['issued'] as String?,
  performer:
      (json['performer'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  valueQuantity: json['valueQuantity'] == null
      ? null
      : FhirQuantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
  valueCodeableConcept: json['valueCodeableConcept'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['valueCodeableConcept'] as Map<String, dynamic>,
        ),
  valueString: json['valueString'] as String?,
  valueBoolean: json['valueBoolean'] as bool?,
  valueInteger: (json['valueInteger'] as num?)?.toInt(),
  valueRange: json['valueRange'] == null
      ? null
      : FhirRange.fromJson(json['valueRange'] as Map<String, dynamic>),
  dataAbsentReason: json['dataAbsentReason'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['dataAbsentReason'] as Map<String, dynamic>,
        ),
  interpretation:
      (json['interpretation'] as List<dynamic>?)
          ?.map((e) => FhirCodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  note:
      (json['note'] as List<dynamic>?)
          ?.map((e) => FhirAnnotation.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  bodySite: json['bodySite'] == null
      ? null
      : FhirCodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
  method: json['method'] == null
      ? null
      : FhirCodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
  device: json['device'] == null
      ? null
      : FhirReference.fromJson(json['device'] as Map<String, dynamic>),
  referenceRange:
      (json['referenceRange'] as List<dynamic>?)
          ?.map((e) => FhirReferenceRange.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  hasMember:
      (json['hasMember'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  derivedFrom:
      (json['derivedFrom'] as List<dynamic>?)
          ?.map((e) => FhirReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  component:
      (json['component'] as List<dynamic>?)
          ?.map(
            (e) => FhirObservationComponent.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  meta: json['meta'] == null
      ? null
      : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirObservationToJson(_FhirObservation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resourceType': instance.resourceType,
      'identifier': instance.identifier,
      'basedOn': instance.basedOn,
      'partOf': instance.partOf,
      'status': instance.status,
      'category': instance.category,
      'code': instance.code,
      'subject': instance.subject,
      'encounter': instance.encounter,
      'effectiveDateTime': instance.effectiveDateTime,
      'effectivePeriod': instance.effectivePeriod,
      'issued': instance.issued,
      'performer': instance.performer,
      'valueQuantity': instance.valueQuantity,
      'valueCodeableConcept': instance.valueCodeableConcept,
      'valueString': instance.valueString,
      'valueBoolean': instance.valueBoolean,
      'valueInteger': instance.valueInteger,
      'valueRange': instance.valueRange,
      'dataAbsentReason': instance.dataAbsentReason,
      'interpretation': instance.interpretation,
      'note': instance.note,
      'bodySite': instance.bodySite,
      'method': instance.method,
      'device': instance.device,
      'referenceRange': instance.referenceRange,
      'hasMember': instance.hasMember,
      'derivedFrom': instance.derivedFrom,
      'component': instance.component,
      'meta': instance.meta,
    };

_FhirQuantity _$FhirQuantityFromJson(Map<String, dynamic> json) =>
    _FhirQuantity(
      value: (json['value'] as num?)?.toDouble(),
      comparator: json['comparator'] as String?,
      unit: json['unit'] as String?,
      system: json['system'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$FhirQuantityToJson(_FhirQuantity instance) =>
    <String, dynamic>{
      'value': instance.value,
      'comparator': instance.comparator,
      'unit': instance.unit,
      'system': instance.system,
      'code': instance.code,
    };

_FhirRange _$FhirRangeFromJson(Map<String, dynamic> json) => _FhirRange(
  low: json['low'] == null
      ? null
      : FhirQuantity.fromJson(json['low'] as Map<String, dynamic>),
  high: json['high'] == null
      ? null
      : FhirQuantity.fromJson(json['high'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirRangeToJson(_FhirRange instance) =>
    <String, dynamic>{'low': instance.low, 'high': instance.high};

_FhirAnnotation _$FhirAnnotationFromJson(Map<String, dynamic> json) =>
    _FhirAnnotation(
      authorReference: json['authorReference'] == null
          ? null
          : FhirReference.fromJson(
              json['authorReference'] as Map<String, dynamic>,
            ),
      authorString: json['authorString'] as String?,
      time: json['time'] as String?,
      text: json['text'] as String,
    );

Map<String, dynamic> _$FhirAnnotationToJson(_FhirAnnotation instance) =>
    <String, dynamic>{
      'authorReference': instance.authorReference,
      'authorString': instance.authorString,
      'time': instance.time,
      'text': instance.text,
    };

_FhirReferenceRange _$FhirReferenceRangeFromJson(Map<String, dynamic> json) =>
    _FhirReferenceRange(
      low: json['low'] == null
          ? null
          : FhirQuantity.fromJson(json['low'] as Map<String, dynamic>),
      high: json['high'] == null
          ? null
          : FhirQuantity.fromJson(json['high'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : FhirCodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      appliesTo:
          (json['appliesTo'] as List<dynamic>?)
              ?.map(
                (e) => FhirCodeableConcept.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      age: json['age'] == null
          ? null
          : FhirRange.fromJson(json['age'] as Map<String, dynamic>),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$FhirReferenceRangeToJson(_FhirReferenceRange instance) =>
    <String, dynamic>{
      'low': instance.low,
      'high': instance.high,
      'type': instance.type,
      'appliesTo': instance.appliesTo,
      'age': instance.age,
      'text': instance.text,
    };

_FhirObservationComponent _$FhirObservationComponentFromJson(
  Map<String, dynamic> json,
) => _FhirObservationComponent(
  code: FhirCodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
  valueQuantity: json['valueQuantity'] == null
      ? null
      : FhirQuantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
  valueCodeableConcept: json['valueCodeableConcept'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['valueCodeableConcept'] as Map<String, dynamic>,
        ),
  valueString: json['valueString'] as String?,
  valueBoolean: json['valueBoolean'] as bool?,
  valueRange: json['valueRange'] == null
      ? null
      : FhirRange.fromJson(json['valueRange'] as Map<String, dynamic>),
  dataAbsentReason: json['dataAbsentReason'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['dataAbsentReason'] as Map<String, dynamic>,
        ),
  interpretation:
      (json['interpretation'] as List<dynamic>?)
          ?.map((e) => FhirCodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  referenceRange:
      (json['referenceRange'] as List<dynamic>?)
          ?.map((e) => FhirReferenceRange.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$FhirObservationComponentToJson(
  _FhirObservationComponent instance,
) => <String, dynamic>{
  'code': instance.code,
  'valueQuantity': instance.valueQuantity,
  'valueCodeableConcept': instance.valueCodeableConcept,
  'valueString': instance.valueString,
  'valueBoolean': instance.valueBoolean,
  'valueRange': instance.valueRange,
  'dataAbsentReason': instance.dataAbsentReason,
  'interpretation': instance.interpretation,
  'referenceRange': instance.referenceRange,
};
