import 'package:freezed_annotation/freezed_annotation.dart';
import 'patient.dart';

part 'practitioner.freezed.dart';
part 'practitioner.g.dart';

/// FHIR R4 Practitioner resource (Doctor/Healthcare Professional)
@freezed
abstract class FhirPractitioner with _$FhirPractitioner {
  const factory FhirPractitioner({
    required String id,
    required String resourceType,
    @Default([]) List<FhirIdentifier> identifier,
    required bool active,
    required List<FhirHumanName> name,
    List<FhirContactPoint>? telecom,
    List<FhirAddress>? address,
    String? gender,
    String? birthDate,
    List<FhirAttachment>? photo,
    @Default([]) List<FhirPractitionerQualification> qualification,
    @Default([]) List<FhirCodeableConcept> communication,
    FhirMeta? meta,
  }) = _FhirPractitioner;

  factory FhirPractitioner.fromJson(Map<String, dynamic> json) =>
      _$FhirPractitionerFromJson(json);
}

/// FHIR Practitioner Qualification
@freezed
abstract class FhirPractitionerQualification
    with _$FhirPractitionerQualification {
  const factory FhirPractitionerQualification({
    @Default([]) List<FhirIdentifier> identifier,
    required FhirCodeableConcept code,
    FhirPeriod? period,
    FhirReference? issuer,
  }) = _FhirPractitionerQualification;

  factory FhirPractitionerQualification.fromJson(Map<String, dynamic> json) =>
      _$FhirPractitionerQualificationFromJson(json);
}

/// FHIR Attachment (for photos/documents)
@freezed
abstract class FhirAttachment with _$FhirAttachment {
  const factory FhirAttachment({
    String? contentType,
    String? language,
    String? data, // Base64 encoded
    String? url,
    int? size,
    String? hash,
    String? title,
    String? creation,
  }) = _FhirAttachment;

  factory FhirAttachment.fromJson(Map<String, dynamic> json) =>
      _$FhirAttachmentFromJson(json);
}
