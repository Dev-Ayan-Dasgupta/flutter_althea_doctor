import 'package:freezed_annotation/freezed_annotation.dart';
import 'patient.dart';

part 'observation.freezed.dart';
part 'observation.g.dart';

/// FHIR R4 Observation resource (for vitals and clinical measurements)
@freezed
abstract class FhirObservation with _$FhirObservation {
  const factory FhirObservation({
    required String id,
    required String resourceType,
    @Default([]) List<FhirIdentifier> identifier,
    @Default([]) List<FhirReference> basedOn,
    @Default([]) List<FhirReference> partOf,
    required String
    status, // registered | preliminary | final | amended | corrected | cancelled | entered-in-error | unknown
    @Default([]) List<FhirCodeableConcept> category,
    required FhirCodeableConcept code, // LOINC code for observation type
    FhirReference? subject, // Reference to Patient
    FhirReference? encounter,
    String? effectiveDateTime,
    FhirPeriod? effectivePeriod,
    String? issued,
    @Default([]) List<FhirReference> performer,
    FhirQuantity? valueQuantity,
    FhirCodeableConcept? valueCodeableConcept,
    String? valueString,
    bool? valueBoolean,
    int? valueInteger,
    FhirRange? valueRange,
    FhirCodeableConcept? dataAbsentReason,
    @Default([]) List<FhirCodeableConcept> interpretation,
    @Default([]) List<FhirAnnotation> note,
    FhirCodeableConcept? bodySite,
    FhirCodeableConcept? method,
    FhirReference? device,
    @Default([]) List<FhirReferenceRange> referenceRange,
    @Default([]) List<FhirReference> hasMember,
    @Default([]) List<FhirReference> derivedFrom,
    @Default([]) List<FhirObservationComponent> component,
    FhirMeta? meta,
  }) = _FhirObservation;

  factory FhirObservation.fromJson(Map<String, dynamic> json) =>
      _$FhirObservationFromJson(json);
}

/// FHIR Quantity
@freezed
abstract class FhirQuantity with _$FhirQuantity {
  const factory FhirQuantity({
    double? value,
    String? comparator, // < | <= | >= | >
    String? unit,
    String? system, // UCUM (http://unitsofmeasure.org)
    String? code,
  }) = _FhirQuantity;

  factory FhirQuantity.fromJson(Map<String, dynamic> json) =>
      _$FhirQuantityFromJson(json);
}

/// FHIR Range
@freezed
abstract class FhirRange with _$FhirRange {
  const factory FhirRange({FhirQuantity? low, FhirQuantity? high}) = _FhirRange;

  factory FhirRange.fromJson(Map<String, dynamic> json) =>
      _$FhirRangeFromJson(json);
}

/// FHIR Annotation
@freezed
abstract class FhirAnnotation with _$FhirAnnotation {
  const factory FhirAnnotation({
    FhirReference? authorReference,
    String? authorString,
    String? time,
    required String text,
  }) = _FhirAnnotation;

  factory FhirAnnotation.fromJson(Map<String, dynamic> json) =>
      _$FhirAnnotationFromJson(json);
}

/// FHIR Reference Range
@freezed
abstract class FhirReferenceRange with _$FhirReferenceRange {
  const factory FhirReferenceRange({
    FhirQuantity? low,
    FhirQuantity? high,
    FhirCodeableConcept? type,
    @Default([]) List<FhirCodeableConcept> appliesTo,
    FhirRange? age,
    String? text,
  }) = _FhirReferenceRange;

  factory FhirReferenceRange.fromJson(Map<String, dynamic> json) =>
      _$FhirReferenceRangeFromJson(json);
}

/// FHIR Observation Component (for multi-component observations like BP)
@freezed
abstract class FhirObservationComponent with _$FhirObservationComponent {
  const factory FhirObservationComponent({
    required FhirCodeableConcept code,
    FhirQuantity? valueQuantity,
    FhirCodeableConcept? valueCodeableConcept,
    String? valueString,
    bool? valueBoolean,
    FhirRange? valueRange,
    FhirCodeableConcept? dataAbsentReason,
    @Default([]) List<FhirCodeableConcept> interpretation,
    @Default([]) List<FhirReferenceRange> referenceRange,
  }) = _FhirObservationComponent;

  factory FhirObservationComponent.fromJson(Map<String, dynamic> json) =>
      _$FhirObservationComponentFromJson(json);
}

/// Common LOINC codes for vitals
abstract class VitalSignCodes {
  VitalSignCodes._();

  // Vital Signs Panel
  static const String vitalSignsPanel = '85353-1';

  // Blood Pressure
  static const String bloodPressure = '85354-9';
  static const String systolicBP = '8480-6';
  static const String diastolicBP = '8462-4';

  // Heart Rate
  static const String heartRate = '8867-4';

  // Respiratory Rate
  static const String respiratoryRate = '9279-1';

  // Body Temperature
  static const String bodyTemperature = '8310-5';

  // Oxygen Saturation (SpO2)
  static const String oxygenSaturation = '2708-6';

  // Blood Glucose
  static const String bloodGlucose = '2339-0';

  // Weight
  static const String bodyWeight = '29463-7';

  // Height
  static const String bodyHeight = '8302-2';

  // BMI
  static const String bmi = '39156-5';
}
