import 'package:freezed_annotation/freezed_annotation.dart';
import 'observation.dart';
import 'patient.dart';

part 'medication_request.freezed.dart';
part 'medication_request.g.dart';

/// FHIR R4 MedicationRequest resource
@freezed
abstract class FhirMedicationRequest with _$FhirMedicationRequest {
  const factory FhirMedicationRequest({
    required String id,
    required String resourceType,
    @Default([]) List<FhirIdentifier> identifier,
    required String
    status, // active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown
    String? statusReason,
    required String
    intent, // proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option
    @Default([]) List<FhirCodeableConcept> category,
    String? priority, // routine | urgent | asap | stat
    bool? doNotPerform,
    FhirCodeableConcept? medicationCodeableConcept,
    FhirReference? medicationReference,
    required FhirReference subject, // Reference to Patient
    FhirReference? encounter,
    @Default([]) List<FhirReference> supportingInformation,
    String? authoredOn, // DateTime
    FhirReference? requester, // Reference to Practitioner
    FhirReference? performer,
    FhirCodeableConcept? performerType,
    FhirReference? recorder,
    @Default([]) List<FhirCodeableConcept> reasonCode,
    @Default([]) List<FhirReference> reasonReference,
    @Default([]) List<String> instantiatesCanonical,
    @Default([]) List<String> instantiatesUri,
    @Default([]) List<FhirReference> basedOn,
    FhirIdentifier? groupIdentifier,
    FhirCodeableConcept? courseOfTherapyType,
    @Default([]) List<FhirReference> insurance,
    @Default([]) List<FhirAnnotation> note,
    @Default([]) List<FhirDosage> dosageInstruction,
    FhirMedicationRequestDispenseRequest? dispenseRequest,
    FhirMedicationRequestSubstitution? substitution,
    FhirReference? priorPrescription,
    @Default([]) List<FhirReference> detectedIssue,
    @Default([]) List<FhirReference> eventHistory,
    FhirMeta? meta,
  }) = _FhirMedicationRequest;

  factory FhirMedicationRequest.fromJson(Map<String, dynamic> json) =>
      _$FhirMedicationRequestFromJson(json);
}

/// FHIR Dosage
@freezed
abstract class FhirDosage with _$FhirDosage {
  const factory FhirDosage({
    int? sequence,
    String? text,
    @Default([]) List<FhirCodeableConcept> additionalInstruction,
    String? patientInstruction,
    FhirTiming? timing,
    bool? asNeededBoolean,
    FhirCodeableConcept? asNeededCodeableConcept,
    FhirCodeableConcept? site,
    FhirCodeableConcept? route,
    FhirCodeableConcept? method,
    @Default([]) List<FhirDosageDoseAndRate> doseAndRate,
    FhirQuantity? maxDosePerPeriod,
    FhirQuantity? maxDosePerAdministration,
    FhirQuantity? maxDosePerLifetime,
  }) = _FhirDosage;

  factory FhirDosage.fromJson(Map<String, dynamic> json) =>
      _$FhirDosageFromJson(json);
}

/// FHIR Timing
@freezed
abstract class FhirTiming with _$FhirTiming {
  const factory FhirTiming({
    @Default([]) List<String> event,
    FhirTimingRepeat? repeat,
    FhirCodeableConcept? code,
  }) = _FhirTiming;

  factory FhirTiming.fromJson(Map<String, dynamic> json) =>
      _$FhirTimingFromJson(json);
}

/// FHIR Timing Repeat
@freezed
abstract class FhirTimingRepeat with _$FhirTimingRepeat {
  const factory FhirTimingRepeat({
    FhirQuantity? boundsDuration,
    FhirRange? boundsRange,
    FhirPeriod? boundsPeriod,
    int? count,
    int? countMax,
    double? duration,
    double? durationMax,
    String? durationUnit, // s | min | h | d | wk | mo | a
    int? frequency,
    int? frequencyMax,
    double? period,
    double? periodMax,
    String? periodUnit, // s | min | h | d | wk | mo | a
    @Default([]) List<String> dayOfWeek,
    @Default([]) List<String> timeOfDay,
    @Default([]) List<String> when,
    int? offset,
  }) = _FhirTimingRepeat;

  factory FhirTimingRepeat.fromJson(Map<String, dynamic> json) =>
      _$FhirTimingRepeatFromJson(json);
}

/// FHIR Dosage Dose and Rate
@freezed
abstract class FhirDosageDoseAndRate with _$FhirDosageDoseAndRate {
  const factory FhirDosageDoseAndRate({
    FhirCodeableConcept? type,
    FhirRange? doseRange,
    FhirQuantity? doseQuantity,
    FhirRange? rateRange,
    FhirQuantity? rateQuantity,
  }) = _FhirDosageDoseAndRate;

  factory FhirDosageDoseAndRate.fromJson(Map<String, dynamic> json) =>
      _$FhirDosageDoseAndRateFromJson(json);
}

/// FHIR Medication Request Dispense Request
@freezed
abstract class FhirMedicationRequestDispenseRequest
    with _$FhirMedicationRequestDispenseRequest {
  const factory FhirMedicationRequestDispenseRequest({
    FhirMedicationRequestInitialFill? initialFill,
    FhirQuantity? dispenseInterval,
    FhirPeriod? validityPeriod,
    int? numberOfRepeatsAllowed,
    FhirQuantity? quantity,
    FhirQuantity? expectedSupplyDuration,
    FhirReference? performer,
  }) = _FhirMedicationRequestDispenseRequest;

  factory FhirMedicationRequestDispenseRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$FhirMedicationRequestDispenseRequestFromJson(json);
}

/// FHIR Medication Request Initial Fill
@freezed
abstract class FhirMedicationRequestInitialFill
    with _$FhirMedicationRequestInitialFill {
  const factory FhirMedicationRequestInitialFill({
    FhirQuantity? quantity,
    FhirQuantity? duration,
  }) = _FhirMedicationRequestInitialFill;

  factory FhirMedicationRequestInitialFill.fromJson(
    Map<String, dynamic> json,
  ) => _$FhirMedicationRequestInitialFillFromJson(json);
}

/// FHIR Medication Request Substitution
@freezed
abstract class FhirMedicationRequestSubstitution
    with _$FhirMedicationRequestSubstitution {
  const factory FhirMedicationRequestSubstitution({
    required bool allowedBoolean,
    FhirCodeableConcept? allowedCodeableConcept,
    FhirCodeableConcept? reason,
  }) = _FhirMedicationRequestSubstitution;

  factory FhirMedicationRequestSubstitution.fromJson(
    Map<String, dynamic> json,
  ) => _$FhirMedicationRequestSubstitutionFromJson(json);
}
