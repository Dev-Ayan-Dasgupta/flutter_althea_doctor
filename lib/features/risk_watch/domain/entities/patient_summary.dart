import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../shared/models/clinical/clinical_stability_index.dart';

part 'patient_summary.freezed.dart';

/// Patient summary for risk watch list
@freezed
abstract class PatientSummary with _$PatientSummary {
  const factory PatientSummary({
    required String id,
    required String name,
    required int age,
    required String gender,
    String? roomNumber,
    String? facilityId,
    String? facilityName,
    String? avatarUrl,
    required ClinicalStabilityIndex csi,
    required List<String> activeAlerts,
    required Map<String, double> latestVitals,
    required List<String> activeConditions,
    DateTime? lastReviewedAt,
    String? lastReviewedBy,
    @Default(false) bool hasUnreadNotes,
    @Default(false) bool hasPendingOrders,
    DateTime? updatedAt,
  }) = _PatientSummary;

  const PatientSummary._();

  /// Get patient initials
  String get initials {
    final parts = name.split(' ');
    if (parts.isEmpty) return '';
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts[parts.length - 1][0]}'.toUpperCase();
  }

  /// Get time since last review
  String get timeSinceReview {
    if (lastReviewedAt == null) return 'Never reviewed';

    final difference = DateTime.now().difference(lastReviewedAt!);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h ago';
    } else {
      return '${difference.inDays}d ago';
    }
  }

  /// Check if needs urgent review
  bool get needsUrgentReview {
    if (csi.riskLevel == ClinicalRiskLevel.critical) return true;
    if (activeAlerts.isNotEmpty) return true;
    if (lastReviewedAt == null) return true;

    final hoursSinceReview = DateTime.now().difference(lastReviewedAt!).inHours;
    if (csi.riskLevel == ClinicalRiskLevel.high && hoursSinceReview > 2)
      return true;

    return false;
  }
}
