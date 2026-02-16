// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practitioner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FhirPractitioner _$FhirPractitionerFromJson(Map<String, dynamic> json) =>
    _FhirPractitioner(
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
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => FhirAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      gender: json['gender'] as String?,
      birthDate: json['birthDate'] as String?,
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => FhirAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      qualification:
          (json['qualification'] as List<dynamic>?)
              ?.map(
                (e) => FhirPractitionerQualification.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
      communication:
          (json['communication'] as List<dynamic>?)
              ?.map(
                (e) => FhirCodeableConcept.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? null
          : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FhirPractitionerToJson(_FhirPractitioner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resourceType': instance.resourceType,
      'identifier': instance.identifier,
      'active': instance.active,
      'name': instance.name,
      'telecom': instance.telecom,
      'address': instance.address,
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'photo': instance.photo,
      'qualification': instance.qualification,
      'communication': instance.communication,
      'meta': instance.meta,
    };

_FhirPractitionerQualification _$FhirPractitionerQualificationFromJson(
  Map<String, dynamic> json,
) => _FhirPractitionerQualification(
  identifier:
      (json['identifier'] as List<dynamic>?)
          ?.map((e) => FhirIdentifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  code: FhirCodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
  period: json['period'] == null
      ? null
      : FhirPeriod.fromJson(json['period'] as Map<String, dynamic>),
  issuer: json['issuer'] == null
      ? null
      : FhirReference.fromJson(json['issuer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FhirPractitionerQualificationToJson(
  _FhirPractitionerQualification instance,
) => <String, dynamic>{
  'identifier': instance.identifier,
  'code': instance.code,
  'period': instance.period,
  'issuer': instance.issuer,
};

_FhirAttachment _$FhirAttachmentFromJson(Map<String, dynamic> json) =>
    _FhirAttachment(
      contentType: json['contentType'] as String?,
      language: json['language'] as String?,
      data: json['data'] as String?,
      url: json['url'] as String?,
      size: (json['size'] as num?)?.toInt(),
      hash: json['hash'] as String?,
      title: json['title'] as String?,
      creation: json['creation'] as String?,
    );

Map<String, dynamic> _$FhirAttachmentToJson(_FhirAttachment instance) =>
    <String, dynamic>{
      'contentType': instance.contentType,
      'language': instance.language,
      'data': instance.data,
      'url': instance.url,
      'size': instance.size,
      'hash': instance.hash,
      'title': instance.title,
      'creation': instance.creation,
    };
