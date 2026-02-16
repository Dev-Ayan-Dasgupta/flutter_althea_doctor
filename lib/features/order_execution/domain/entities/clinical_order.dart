import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinical_order.freezed.dart';

/// Clinical order (prescription, lab, procedure)
@freezed
abstract class ClinicalOrder with _$ClinicalOrder {
  const factory ClinicalOrder({
    required String id,
    required String patientId,
    required String patientName,
    required OrderType orderType,
    required OrderStatus status,
    required String orderedBy,
    required String orderedByName,
    required DateTime orderedAt,
    required String title,
    String? description,
    DateTime? scheduledFor,
    DateTime? completedAt,
    String? completedBy,
    String? notes,
    bool? urgent,
    List<String>? attachments,
    // Medication specific
    MedicationOrderDetails? medicationDetails,
    // Lab specific
    LabOrderDetails? labDetails,
    // Procedure specific
    ProcedureOrderDetails? procedureDetails,
  }) = _ClinicalOrder;

  const ClinicalOrder._();

  /// Get status color
  String get statusColor {
    switch (status) {
      case OrderStatus.draft:
        return 'info';
      case OrderStatus.pending:
        return 'warning';
      case OrderStatus.approved:
        return 'primary';
      case OrderStatus.inProgress:
        return 'info';
      case OrderStatus.completed:
        return 'success';
      case OrderStatus.cancelled:
        return 'critical';
    }
  }

  /// Get type icon
  String get typeIcon {
    switch (orderType) {
      case OrderType.medication:
        return 'medication';
      case OrderType.lab:
        return 'science';
      case OrderType.imaging:
        return 'medical_services';
      case OrderType.procedure:
        return 'healing';
      case OrderType.referral:
        return 'person_add';
      case OrderType.other:
        return 'assignment';
    }
  }

  /// Check if order can be cancelled
  bool get canBeCancelled {
    return status == OrderStatus.draft ||
        status == OrderStatus.pending ||
        status == OrderStatus.approved;
  }

  /// Check if order can be edited
  bool get canBeEdited {
    return status == OrderStatus.draft;
  }
}

/// Order types
enum OrderType { medication, lab, imaging, procedure, referral, other }

/// Order status
enum OrderStatus {
  draft, // Being created
  pending, // Awaiting approval
  approved, // Approved, awaiting execution
  inProgress, // Being executed
  completed, // Completed
  cancelled, // Cancelled
}

/// Medication order details
@freezed
abstract class MedicationOrderDetails with _$MedicationOrderDetails {
  const factory MedicationOrderDetails({
    required String medicationName,
    required String dosage,
    required String route, // oral, IV, topical, etc.
    required String frequency, // Once daily, BID, TID, etc.
    required int durationDays,
    String? instructions,
    String? indication,
    bool? genericAllowed,
    int? refills,
    String? pharmacy,
  }) = _MedicationOrderDetails;

  const MedicationOrderDetails._();

  /// Get frequency display text
  String get frequencyDisplay {
    switch (frequency.toLowerCase()) {
      case 'qd':
      case 'once daily':
        return 'Once daily';
      case 'bid':
      case 'twice daily':
        return 'Twice daily';
      case 'tid':
      case 'three times daily':
        return 'Three times daily';
      case 'qid':
      case 'four times daily':
        return 'Four times daily';
      case 'prn':
        return 'As needed';
      default:
        return frequency;
    }
  }
}

/// Lab order details
@freezed
abstract class LabOrderDetails with _$LabOrderDetails {
  const factory LabOrderDetails({
    required List<String> tests,
    String? specimenType,
    bool? fasting,
    String? clinicalNotes,
    DateTime? collectionTime,
    String? labName,
  }) = _LabOrderDetails;
}

/// Procedure order details
@freezed
abstract class ProcedureOrderDetails with _$ProcedureOrderDetails {
  const factory ProcedureOrderDetails({
    required String procedureName,
    String? procedureCode,
    String? indication,
    String? specialInstructions,
    String? anesthesiaType,
    String? location,
  }) = _ProcedureOrderDetails;
}

/// Quick order template
@freezed
abstract class OrderTemplate with _$OrderTemplate {
  const factory OrderTemplate({
    required String id,
    required String name,
    required OrderType orderType,
    required String description,
    String? category,
    List<String>? tags,
    // Template data (JSON string or structured data)
    Map<String, dynamic>? templateData,
  }) = _OrderTemplate;
}
