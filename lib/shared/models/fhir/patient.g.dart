// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FhirPatient _$FhirPatientFromJson(Map<String, dynamic> json) => _FhirPatient(
  id: json['id'] as String,
  resourceType: json['resourceType'] as String,
  identifier:
      (json['identifier'] as List<dynamic>?)
          ?.map((e) => FhirIdentifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  active: json['active'] as bool,
  name: (json['name'] as List<dynamic>)
      .map((e) => FhirHumanName.fromJson(e as Map<String, dynamic>))
      .toList(),
  telecom: (json['telecom'] as List<dynamic>?)
      ?.map((e) => FhirContactPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  gender: json['gender'] as String?,
  birthDate: json['birthDate'] as String?,
  deceasedBoolean: json['deceasedBoolean'] as bool?,
  deceasedDateTime: json['deceasedDateTime'] as String?,
  address: (json['address'] as List<dynamic>?)
      ?.map((e) => FhirAddress.fromJson(e as Map<String, dynamic>))
      .toList(),
  maritalStatus: json['maritalStatus'] == null
      ? null
      : FhirCodeableConcept.fromJson(
          json['maritalStatus'] as Map<String, dynamic>,
        ),
  contact: (json['contact'] as List<dynamic>?)
      ?.map((e) => FhirPatientContact.fromJson(e as Map<String, dynamic>))
      .toList(),
  generalPractitioner: json['generalPractitioner'] == null
      ? null
      : FhirReference.fromJson(
          json['generalPractitioner'] as Map<String, dynamic>,
        ),
  managingOrganization: json['managingOrganization'] == null
      ? null
      : FhirReference.fromJson(
          json['managingOrganization'] as Map<String, dynamic>,
        ),
  extension_: json['extension_'] as Map<String, dynamic>? ?? const {},
  meta: json['meta'] == null
      ? null
      : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirPatientToJson(_FhirPatient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resourceType': instance.resourceType,
      'identifier': instance.identifier,
      'active': instance.active,
      'name': instance.name,
      'telecom': instance.telecom,
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'deceasedBoolean': instance.deceasedBoolean,
      'deceasedDateTime': instance.deceasedDateTime,
      'address': instance.address,
      'maritalStatus': instance.maritalStatus,
      'contact': instance.contact,
      'generalPractitioner': instance.generalPractitioner,
      'managingOrganization': instance.managingOrganization,
      'extension_': instance.extension_,
      'meta': instance.meta,
    };

_FhirIdentifier _$FhirIdentifierFromJson(Map<String, dynamic> json) =>
    _FhirIdentifier(
      use: json['use'] as String?,
      type: json['type'] == null
          ? null
          : FhirCodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      system: json['system'] as String?,
      value: json['value'] as String,
      period: json['period'] == null
          ? null
          : FhirPeriod.fromJson(json['period'] as Map<String, dynamic>),
      assigner: json['assigner'] == null
          ? null
          : FhirReference.fromJson(json['assigner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FhirIdentifierToJson(_FhirIdentifier instance) =>
    <String, dynamic>{
      'use': instance.use,
      'type': instance.type,
      'system': instance.system,
      'value': instance.value,
      'period': instance.period,
      'assigner': instance.assigner,
    };

_FhirHumanName _$FhirHumanNameFromJson(
  Map<String, dynamic> json,
) => _FhirHumanName(
  use: json['use'] as String?,
  text: json['text'] as String?,
  family: json['family'] as String?,
  given:
      (json['given'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  prefix:
      (json['prefix'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  suffix:
      (json['suffix'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  period: json['period'] == null
      ? null
      : FhirPeriod.fromJson(json['period'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirHumanNameToJson(_FhirHumanName instance) =>
    <String, dynamic>{
      'use': instance.use,
      'text': instance.text,
      'family': instance.family,
      'given': instance.given,
      'prefix': instance.prefix,
      'suffix': instance.suffix,
      'period': instance.period,
    };

_FhirContactPoint _$FhirContactPointFromJson(Map<String, dynamic> json) =>
    _FhirContactPoint(
      system: json['system'] as String?,
      value: json['value'] as String?,
      use: json['use'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
      period: json['period'] == null
          ? null
          : FhirPeriod.fromJson(json['period'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FhirContactPointToJson(_FhirContactPoint instance) =>
    <String, dynamic>{
      'system': instance.system,
      'value': instance.value,
      'use': instance.use,
      'rank': instance.rank,
      'period': instance.period,
    };

_FhirAddress _$FhirAddressFromJson(Map<String, dynamic> json) => _FhirAddress(
  use: json['use'] as String?,
  type: json['type'] as String?,
  text: json['text'] as String?,
  line:
      (json['line'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  city: json['city'] as String?,
  district: json['district'] as String?,
  state: json['state'] as String?,
  postalCode: json['postalCode'] as String?,
  country: json['country'] as String?,
  period: json['period'] == null
      ? null
      : FhirPeriod.fromJson(json['period'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirAddressToJson(_FhirAddress instance) =>
    <String, dynamic>{
      'use': instance.use,
      'type': instance.type,
      'text': instance.text,
      'line': instance.line,
      'city': instance.city,
      'district': instance.district,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'period': instance.period,
    };

_FhirPeriod _$FhirPeriodFromJson(Map<String, dynamic> json) =>
    _FhirPeriod(start: json['start'] as String?, end: json['end'] as String?);

Map<String, dynamic> _$FhirPeriodToJson(_FhirPeriod instance) =>
    <String, dynamic>{'start': instance.start, 'end': instance.end};

_FhirCodeableConcept _$FhirCodeableConceptFromJson(Map<String, dynamic> json) =>
    _FhirCodeableConcept(
      coding:
          (json['coding'] as List<dynamic>?)
              ?.map((e) => FhirCoding.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      text: json['text'] as String?,
    );

Map<String, dynamic> _$FhirCodeableConceptToJson(
  _FhirCodeableConcept instance,
) => <String, dynamic>{'coding': instance.coding, 'text': instance.text};

_FhirCoding _$FhirCodingFromJson(Map<String, dynamic> json) => _FhirCoding(
  system: json['system'] as String?,
  version: json['version'] as String?,
  code: json['code'] as String?,
  display: json['display'] as String?,
  userSelected: json['userSelected'] as bool?,
);

Map<String, dynamic> _$FhirCodingToJson(_FhirCoding instance) =>
    <String, dynamic>{
      'system': instance.system,
      'version': instance.version,
      'code': instance.code,
      'display': instance.display,
      'userSelected': instance.userSelected,
    };

_FhirReference _$FhirReferenceFromJson(Map<String, dynamic> json) =>
    _FhirReference(
      reference: json['reference'] as String?,
      type: json['type'] as String?,
      identifier: json['identifier'] == null
          ? null
          : FhirIdentifier.fromJson(json['identifier'] as Map<String, dynamic>),
      display: json['display'] as String?,
    );

Map<String, dynamic> _$FhirReferenceToJson(_FhirReference instance) =>
    <String, dynamic>{
      'reference': instance.reference,
      'type': instance.type,
      'identifier': instance.identifier,
      'display': instance.display,
    };

_FhirPatientContact _$FhirPatientContactFromJson(
  Map<String, dynamic> json,
) => _FhirPatientContact(
  relationship:
      (json['relationship'] as List<dynamic>?)
          ?.map((e) => FhirCodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  name: json['name'] == null
      ? null
      : FhirHumanName.fromJson(json['name'] as Map<String, dynamic>),
  telecom:
      (json['telecom'] as List<dynamic>?)
          ?.map((e) => FhirContactPoint.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  address: json['address'] == null
      ? null
      : FhirAddress.fromJson(json['address'] as Map<String, dynamic>),
  gender: json['gender'] as String?,
  organization: json['organization'] == null
      ? null
      : FhirReference.fromJson(json['organization'] as Map<String, dynamic>),
  period: json['period'] == null
      ? null
      : FhirPeriod.fromJson(json['period'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirPatientContactToJson(_FhirPatientContact instance) =>
    <String, dynamic>{
      'relationship': instance.relationship,
      'name': instance.name,
      'telecom': instance.telecom,
      'address': instance.address,
      'gender': instance.gender,
      'organization': instance.organization,
      'period': instance.period,
    };

_FhirMeta _$FhirMetaFromJson(Map<String, dynamic> json) => _FhirMeta(
  versionId: json['versionId'] as String?,
  lastUpdated: json['lastUpdated'] as String?,
  source: json['source'] as String?,
  profile:
      (json['profile'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  security:
      (json['security'] as List<dynamic>?)
          ?.map((e) => FhirCoding.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tag:
      (json['tag'] as List<dynamic>?)
          ?.map((e) => FhirCoding.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$FhirMetaToJson(_FhirMeta instance) => <String, dynamic>{
  'versionId': instance.versionId,
  'lastUpdated': instance.lastUpdated,
  'source': instance.source,
  'profile': instance.profile,
  'security': instance.security,
  'tag': instance.tag,
};
