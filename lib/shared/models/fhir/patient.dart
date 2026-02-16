import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

/// FHIR R4 Patient resource (simplified for AltheaCare)
@freezed
abstract class FhirPatient with _$FhirPatient {
  const factory FhirPatient({
    required String id,
    required String resourceType,
    @Default([]) List<FhirIdentifier> identifier,
    required bool active,
    required List<FhirHumanName> name,
    List<FhirContactPoint>? telecom,
    String? gender, // male | female | other | unknown
    String? birthDate, // YYYY-MM-DD
    bool? deceasedBoolean,
    String? deceasedDateTime,
    List<FhirAddress>? address,
    FhirCodeableConcept? maritalStatus,
    List<FhirPatientContact>? contact,
    FhirReference? generalPractitioner,
    FhirReference? managingOrganization,
    @Default({}) Map<String, dynamic> extension_,
    FhirMeta? meta,
  }) = _FhirPatient;

  factory FhirPatient.fromJson(Map<String, dynamic> json) =>
      _$FhirPatientFromJson(json);
}

/// FHIR Identifier
@freezed
abstract class FhirIdentifier with _$FhirIdentifier {
  const factory FhirIdentifier({
    String? use, // usual | official | temp | secondary
    FhirCodeableConcept? type,
    String? system, // ABDM, ABHA, etc.
    required String value,
    FhirPeriod? period,
    FhirReference? assigner,
  }) = _FhirIdentifier;

  factory FhirIdentifier.fromJson(Map<String, dynamic> json) =>
      _$FhirIdentifierFromJson(json);
}

/// FHIR HumanName
@freezed
abstract class FhirHumanName with _$FhirHumanName {
  const factory FhirHumanName({
    String?
    use, // usual | official | temp | nickname | anonymous | old | maiden
    String? text,
    String? family,
    @Default([]) List<String> given,
    @Default([]) List<String> prefix,
    @Default([]) List<String> suffix,
    FhirPeriod? period,
  }) = _FhirHumanName;

  factory FhirHumanName.fromJson(Map<String, dynamic> json) =>
      _$FhirHumanNameFromJson(json);
}

/// FHIR ContactPoint
@freezed
abstract class FhirContactPoint with _$FhirContactPoint {
  const factory FhirContactPoint({
    String? system, // phone | fax | email | pager | url | sms | other
    String? value,
    String? use, // home | work | temp | old | mobile
    int? rank,
    FhirPeriod? period,
  }) = _FhirContactPoint;

  factory FhirContactPoint.fromJson(Map<String, dynamic> json) =>
      _$FhirContactPointFromJson(json);
}

/// FHIR Address
@freezed
abstract class FhirAddress with _$FhirAddress {
  const factory FhirAddress({
    String? use, // home | work | temp | old | billing
    String? type, // postal | physical | both
    String? text,
    @Default([]) List<String> line,
    String? city,
    String? district,
    String? state,
    String? postalCode,
    String? country,
    FhirPeriod? period,
  }) = _FhirAddress;

  factory FhirAddress.fromJson(Map<String, dynamic> json) =>
      _$FhirAddressFromJson(json);
}

/// FHIR Period
@freezed
abstract class FhirPeriod with _$FhirPeriod {
  const factory FhirPeriod({
    String? start, // DateTime
    String? end, // DateTime
  }) = _FhirPeriod;

  factory FhirPeriod.fromJson(Map<String, dynamic> json) =>
      _$FhirPeriodFromJson(json);
}

/// FHIR CodeableConcept
@freezed
abstract class FhirCodeableConcept with _$FhirCodeableConcept {
  const factory FhirCodeableConcept({
    @Default([]) List<FhirCoding> coding,
    String? text,
  }) = _FhirCodeableConcept;

  factory FhirCodeableConcept.fromJson(Map<String, dynamic> json) =>
      _$FhirCodeableConceptFromJson(json);
}

/// FHIR Coding
@freezed
abstract class FhirCoding with _$FhirCoding {
  const factory FhirCoding({
    String? system, // Code system (SNOMED, LOINC, ICD-11, etc.)
    String? version,
    String? code,
    String? display,
    bool? userSelected,
  }) = _FhirCoding;

  factory FhirCoding.fromJson(Map<String, dynamic> json) =>
      _$FhirCodingFromJson(json);
}

/// FHIR Reference
@freezed
abstract class FhirReference with _$FhirReference {
  const factory FhirReference({
    String? reference, // e.g., "Practitioner/123"
    String? type,
    FhirIdentifier? identifier,
    String? display,
  }) = _FhirReference;

  factory FhirReference.fromJson(Map<String, dynamic> json) =>
      _$FhirReferenceFromJson(json);
}

/// FHIR Patient Contact
@freezed
abstract class FhirPatientContact with _$FhirPatientContact {
  const factory FhirPatientContact({
    @Default([]) List<FhirCodeableConcept> relationship,
    FhirHumanName? name,
    @Default([]) List<FhirContactPoint> telecom,
    FhirAddress? address,
    String? gender,
    FhirReference? organization,
    FhirPeriod? period,
  }) = _FhirPatientContact;

  factory FhirPatientContact.fromJson(Map<String, dynamic> json) =>
      _$FhirPatientContactFromJson(json);
}

/// FHIR Meta (for versioning and security labels)
@freezed
abstract class FhirMeta with _$FhirMeta {
  const factory FhirMeta({
    String? versionId,
    String? lastUpdated, // DateTime
    String? source,
    @Default([]) List<String> profile,
    @Default([]) List<FhirCoding> security,
    @Default([]) List<FhirCoding> tag,
  }) = _FhirMeta;

  factory FhirMeta.fromJson(Map<String, dynamic> json) =>
      _$FhirMetaFromJson(json);
}
