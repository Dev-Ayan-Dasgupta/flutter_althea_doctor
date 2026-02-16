import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinical_stability_index.freezed.dart';

/// Clinical Stability Index (CSI) - Risk scoring system
@freezed
abstract class ClinicalStabilityIndex with _$ClinicalStabilityIndex {
  const factory ClinicalStabilityIndex({
    required double score, // 0-100 (0 = critical, 100 = stable)
    required ClinicalRiskLevel riskLevel,
    required List<RiskFactor> riskFactors,
    required DateTime calculatedAt,
    String? primaryConcern,
  }) = _ClinicalStabilityIndex;

  const ClinicalStabilityIndex._();

  /// Get risk level color
  String get riskColor {
    switch (riskLevel) {
      case ClinicalRiskLevel.critical:
        return 'critical';
      case ClinicalRiskLevel.high:
        return 'warning';
      case ClinicalRiskLevel.medium:
        return 'info';
      case ClinicalRiskLevel.low:
        return 'success';
      case ClinicalRiskLevel.stable:
        return 'stable';
    }
  }

  /// Get risk level label
  String get riskLabel {
    switch (riskLevel) {
      case ClinicalRiskLevel.critical:
        return 'Critical';
      case ClinicalRiskLevel.high:
        return 'High Risk';
      case ClinicalRiskLevel.medium:
        return 'Medium Risk';
      case ClinicalRiskLevel.low:
        return 'Low Risk';
      case ClinicalRiskLevel.stable:
        return 'Stable';
    }
  }
}

/// Clinical risk levels
enum ClinicalRiskLevel {
  critical, // Requires immediate attention
  high, // Needs review within 1 hour
  medium, // Review within 4 hours
  low, // Routine monitoring
  stable, // No immediate concerns
}

/// Risk factor contributing to CSI
@freezed
abstract class RiskFactor with _$RiskFactor {
  const factory RiskFactor({
    required String type, // 'vital', 'medication', 'activity', 'trend'
    required String description,
    required double impactScore, // -50 to 0 (negative impact on stability)
    DateTime? detectedAt,
  }) = _RiskFactor;
}

/// CSI calculation service
abstract class CSICalculator {
  /// Calculate CSI from patient vitals and history
  static ClinicalStabilityIndex calculate({
    required Map<String, double?> currentVitals,
    required List<String> medications,
    required bool medicationAdherent,
    required List<String> activeConditions,
    int? daysSinceLastIncident,
  }) {
    double score = 100.0; // Start with perfect stability
    final riskFactors = <RiskFactor>[];

    // Vital signs risk assessment
    final vitalRisks = _assessVitals(currentVitals);
    for (final risk in vitalRisks) {
      score += risk.impactScore;
      riskFactors.add(risk);
    }

    // Medication adherence
    if (!medicationAdherent) {
      score -= 15;
      riskFactors.add(
        const RiskFactor(
          type: 'medication',
          description: 'Medication non-adherence detected',
          impactScore: -15,
        ),
      );
    }

    // Recent incidents
    if (daysSinceLastIncident != null && daysSinceLastIncident < 7) {
      final impact = -10.0 * (7 - daysSinceLastIncident) / 7;
      score += impact;
      riskFactors.add(
        RiskFactor(
          type: 'trend',
          description: 'Recent incident ($daysSinceLastIncident days ago)',
          impactScore: impact,
        ),
      );
    }

    // Chronic conditions
    if (activeConditions.length > 3) {
      score -= 5;
      riskFactors.add(
        RiskFactor(
          type: 'condition',
          description:
              'Multiple chronic conditions (${activeConditions.length})',
          impactScore: -5,
        ),
      );
    }

    // Clamp score between 0-100
    score = score.clamp(0, 100);

    // Determine risk level
    final riskLevel = _determineRiskLevel(score);

    // Get primary concern
    final primaryConcern = riskFactors.isNotEmpty
        ? riskFactors
              .reduce((a, b) => a.impactScore < b.impactScore ? a : b)
              .description
        : null;

    return ClinicalStabilityIndex(
      score: score,
      riskLevel: riskLevel,
      riskFactors: riskFactors,
      calculatedAt: DateTime.now(),
      primaryConcern: primaryConcern,
    );
  }

  /// Assess vitals for risk factors
  static List<RiskFactor> _assessVitals(Map<String, double?> vitals) {
    final risks = <RiskFactor>[];

    // Blood Pressure (Systolic)
    final systolic = vitals['systolic'];
    if (systolic != null) {
      if (systolic >= 180 || systolic < 90) {
        risks.add(
          RiskFactor(
            type: 'vital',
            description: 'Critical BP: $systolic mmHg',
            impactScore: -30,
            detectedAt: DateTime.now(),
          ),
        );
      } else if (systolic >= 160 || systolic < 100) {
        risks.add(
          RiskFactor(
            type: 'vital',
            description: 'Elevated BP: $systolic mmHg',
            impactScore: -15,
            detectedAt: DateTime.now(),
          ),
        );
      }
    }

    // Heart Rate
    final heartRate = vitals['heartRate'];
    if (heartRate != null) {
      if (heartRate >= 120 || heartRate < 50) {
        risks.add(
          RiskFactor(
            type: 'vital',
            description: 'Abnormal HR: ${heartRate.toInt()} bpm',
            impactScore: -25,
            detectedAt: DateTime.now(),
          ),
        );
      } else if (heartRate >= 100 || heartRate < 60) {
        risks.add(
          RiskFactor(
            type: 'vital',
            description: 'Borderline HR: ${heartRate.toInt()} bpm',
            impactScore: -10,
            detectedAt: DateTime.now(),
          ),
        );
      }
    }

    // SpO2
    final spO2 = vitals['spO2'];
    if (spO2 != null) {
      if (spO2 < 92) {
        risks.add(
          RiskFactor(
            type: 'vital',
            description: 'Low SpO2: ${spO2.toInt()}%',
            impactScore: -35,
            detectedAt: DateTime.now(),
          ),
        );
      } else if (spO2 < 95) {
        risks.add(
          RiskFactor(
            type: 'vital',
            description: 'Borderline SpO2: ${spO2.toInt()}%',
            impactScore: -15,
            detectedAt: DateTime.now(),
          ),
        );
      }
    }

    // Blood Glucose
    final glucose = vitals['glucose'];
    if (glucose != null) {
      if (glucose < 70 || glucose > 250) {
        risks.add(
          RiskFactor(
            type: 'vital',
            description: 'Critical glucose: ${glucose.toInt()} mg/dL',
            impactScore: -25,
            detectedAt: DateTime.now(),
          ),
        );
      } else if (glucose < 80 || glucose > 180) {
        risks.add(
          RiskFactor(
            type: 'vital',
            description: 'Abnormal glucose: ${glucose.toInt()} mg/dL',
            impactScore: -10,
            detectedAt: DateTime.now(),
          ),
        );
      }
    }

    return risks;
  }

  /// Determine risk level from score
  static ClinicalRiskLevel _determineRiskLevel(double score) {
    if (score < 40) return ClinicalRiskLevel.critical;
    if (score < 60) return ClinicalRiskLevel.high;
    if (score < 75) return ClinicalRiskLevel.medium;
    if (score < 85) return ClinicalRiskLevel.low;
    return ClinicalRiskLevel.stable;
  }
}
