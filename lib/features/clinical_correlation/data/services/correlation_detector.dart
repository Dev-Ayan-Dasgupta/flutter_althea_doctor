import 'dart:math';
import '../../../../shared/models/clinical/clinical_insight.dart';
import '../../../digital_twin/domain/entities/vitals_timeline.dart';

/// Service for detecting clinical correlations
class CorrelationDetector {
  /// Analyze timeline and generate insights
  static List<ClinicalInsight> analyzeTimeline(VitalsTimeline timeline) {
    final insights = <ClinicalInsight>[];

    // 1. Detect medication-vital correlations
    insights.addAll(_detectMedicationCorrelations(timeline));

    // 2. Detect baseline deviations
    insights.addAll(_detectBaselineDeviations(timeline));

    // 3. Detect trends
    insights.addAll(_detectTrends(timeline));

    // 4. Predict risks
    insights.addAll(_generateRiskPredictions(timeline));

    // 5. Detect activity-vital correlations
    insights.addAll(_detectActivityCorrelations(timeline));

    // Sort by severity and confidence
    insights.sort((a, b) {
      final severityCompare = a.severity.index.compareTo(b.severity.index);
      if (severityCompare != 0) return severityCompare;
      return (b.confidenceScore ?? 0).compareTo(a.confidenceScore ?? 0);
    });

    return insights;
  }

  /// Detect correlations between medications and vitals
  static List<ClinicalInsight> _detectMedicationCorrelations(
    VitalsTimeline timeline,
  ) {
    final insights = <ClinicalInsight>[];

    // Find missed medications
    final missedMeds = timeline.medications
        .where((m) => !m.administered)
        .toList();

    for (final missedMed in missedMeds) {
      // Check if BP spiked after missed medication
      final bpAfterMissed = timeline.bloodPressure
          .where((bp) => bp.timestamp.isAfter(missedMed.timestamp))
          .take(3)
          .toList();

      if (bpAfterMissed.isNotEmpty) {
        final avgSystolic =
            bpAfterMissed.map((bp) => bp.systolic).reduce((a, b) => a + b) /
            bpAfterMissed.length;

        if (timeline.bpBaseline != null &&
            avgSystolic > timeline.bpBaseline!.mean + 20) {
          insights.add(
            ClinicalInsight(
              id: 'corr-med-${missedMed.timestamp.millisecondsSinceEpoch}',
              type: InsightType.correlation,
              severity: InsightSeverity.warning,
              title: 'BP spike correlated with missed medication',
              description:
                  'Blood pressure increased by ${(avgSystolic - timeline.bpBaseline!.mean).toInt()} mmHg within 2 hours of missing ${missedMed.medicationName}.',
              evidencePoints: [
                'Missed ${missedMed.medicationName} at ${_formatTime(missedMed.timestamp)}',
                'BP rose from ${timeline.bpBaseline!.mean.toInt()} to ${avgSystolic.toInt()} mmHg',
                'Pattern detected across ${bpAfterMissed.length} subsequent readings',
              ],
              detectedAt: DateTime.now(),
              recommendation:
                  'Ensure medication adherence. Consider setting reminders.',
              affectedVitals: ['Blood Pressure'],
              relatedMedications: [missedMed.medicationName],
              confidenceScore: 0.75,
              acknowledged: false,
            ),
          );
        }
      }
    }

    // Check medication effectiveness
    final administeredMeds = timeline.medications
        .where((m) => m.administered)
        .toList();

    if (administeredMeds.isNotEmpty && timeline.bpBaseline != null) {
      final medTimes = administeredMeds.map((m) => m.timestamp).toList();
      final bpAfterMeds = timeline.bloodPressure
          .where(
            (bp) => medTimes.any(
              (mt) =>
                  bp.timestamp.isAfter(mt) &&
                  bp.timestamp.difference(mt).inHours < 4,
            ),
          )
          .toList();

      if (bpAfterMeds.isNotEmpty) {
        final avgBpAfterMed =
            bpAfterMeds.map((bp) => bp.systolic).reduce((a, b) => a + b) /
            bpAfterMeds.length;

        if (avgBpAfterMed < timeline.bpBaseline!.mean - 10) {
          insights.add(
            ClinicalInsight(
              id: 'corr-med-effective',
              type: InsightType.medication,
              severity: InsightSeverity.info,
              title: 'Medication showing positive effect',
              description:
                  'Blood pressure consistently lower (avg ${avgBpAfterMed.toInt()} mmHg) within 4 hours of medication administration.',
              evidencePoints: [
                'Baseline BP: ${timeline.bpBaseline!.mean.toInt()} mmHg',
                'Post-medication BP: ${avgBpAfterMed.toInt()} mmHg',
                'Improvement: ${(timeline.bpBaseline!.mean - avgBpAfterMed).toInt()} mmHg',
              ],
              detectedAt: DateTime.now(),
              recommendation: 'Current medication regimen appears effective.',
              affectedVitals: ['Blood Pressure'],
              relatedMedications: administeredMeds
                  .map((m) => m.medicationName)
                  .toSet()
                  .toList(),
              confidenceScore: 0.85,
              acknowledged: false,
            ),
          );
        }
      }
    }

    return insights;
  }

  /// Detect baseline deviations
  static List<ClinicalInsight> _detectBaselineDeviations(
    VitalsTimeline timeline,
  ) {
    final insights = <ClinicalInsight>[];

    // Heart rate deviation
    if (timeline.hrBaseline != null && timeline.heartRate.isNotEmpty) {
      final recentHR = timeline.heartRate
          .where(
            (hr) => hr.timestamp.isAfter(
              DateTime.now().subtract(const Duration(days: 2)),
            ),
          )
          .toList();

      if (recentHR.isNotEmpty) {
        final avgRecentHR =
            recentHR.map((hr) => hr.value).reduce((a, b) => a + b) /
            recentHR.length;

        final deviation = timeline.hrBaseline!.getDeviationPercentage(
          avgRecentHR,
        );

        if (deviation.abs() > 15) {
          insights.add(
            ClinicalInsight(
              id: 'dev-hr',
              type: InsightType.deviation,
              severity: deviation > 0
                  ? InsightSeverity.warning
                  : InsightSeverity.info,
              title:
                  'Heart rate ${deviation > 0 ? "elevated" : "decreased"} from baseline',
              description:
                  'Average heart rate over past 2 days is ${deviation.abs().toInt()}% ${deviation > 0 ? "above" : "below"} personal baseline.',
              evidencePoints: [
                'Baseline: ${timeline.hrBaseline!.mean.toInt()} bpm',
                'Recent average: ${avgRecentHR.toInt()} bpm',
                'Deviation: ${deviation.abs().toInt()}%',
              ],
              detectedAt: DateTime.now(),
              recommendation: deviation > 0
                  ? 'Monitor for signs of infection or stress. Check medication adherence.'
                  : 'Monitor for lethargy or bradycardia symptoms.',
              affectedVitals: ['Heart Rate'],
              confidenceScore: 0.8,
              acknowledged: false,
            ),
          );
        }
      }
    }

    // SpO2 deviation
    if (timeline.spO2Baseline != null && timeline.spO2.isNotEmpty) {
      final recentSpO2 = timeline.spO2
          .where(
            (sp) => sp.timestamp.isAfter(
              DateTime.now().subtract(const Duration(days: 2)),
            ),
          )
          .toList();

      if (recentSpO2.isNotEmpty) {
        final avgRecentSpO2 =
            recentSpO2.map((sp) => sp.value).reduce((a, b) => a + b) /
            recentSpO2.length;

        if (avgRecentSpO2 < 94) {
          insights.add(
            ClinicalInsight(
              id: 'dev-spo2',
              type: InsightType.deviation,
              severity: InsightSeverity.critical,
              title: 'Oxygen saturation consistently low',
              description:
                  'SpO2 averaging ${avgRecentSpO2.toInt()}% over past 2 days, below safe threshold.',
              evidencePoints: [
                'Average SpO2: ${avgRecentSpO2.toInt()}%',
                'Safe threshold: 94%',
                'Number of readings: ${recentSpO2.length}',
              ],
              detectedAt: DateTime.now(),
              recommendation:
                  'Consider oxygen therapy. Evaluate for respiratory infection or COPD exacerbation.',
              affectedVitals: ['SpO2'],
              confidenceScore: 0.9,
              acknowledged: false,
            ),
          );
        }
      }
    }

    return insights;
  }

  /// Detect trends
  static List<ClinicalInsight> _detectTrends(VitalsTimeline timeline) {
    final insights = <ClinicalInsight>[];

    // Glucose trend
    if (timeline.glucose.length > 5) {
      final sortedGlucose = List<VitalsDataPoint>.from(timeline.glucose)
        ..sort((a, b) => a.timestamp.compareTo(b.timestamp));

      // Calculate trend (simple linear regression)
      final trend = _calculateTrend(sortedGlucose.map((g) => g.value).toList());

      if (trend.abs() > 2) {
        // Significant trend
        insights.add(
          ClinicalInsight(
            id: 'trend-glucose',
            type: InsightType.trend,
            severity: trend > 0
                ? InsightSeverity.warning
                : InsightSeverity.info,
            title:
                'Blood glucose ${trend > 0 ? "increasing" : "decreasing"} trend',
            description:
                'Glucose levels showing ${trend > 0 ? "upward" : "downward"} trend over the past week.',
            evidencePoints: [
              'Trend: ${trend.toStringAsFixed(1)} mg/dL per day',
              'First reading: ${sortedGlucose.first.value.toInt()} mg/dL',
              'Recent reading: ${sortedGlucose.last.value.toInt()} mg/dL',
            ],
            detectedAt: DateTime.now(),
            recommendation: trend > 0
                ? 'Review diet and medication regimen. Consider adjusting diabetes management.'
                : 'Monitor for hypoglycemia. Review medication dosing.',
            affectedVitals: ['Glucose'],
            confidenceScore: 0.7,
            acknowledged: false,
          ),
        );
      }
    }

    return insights;
  }

  /// Generate risk predictions
  static List<ClinicalInsight> _generateRiskPredictions(
    VitalsTimeline timeline,
  ) {
    final insights = <ClinicalInsight>[];

    // Fall risk prediction
    final fallRiskFactors = <String>[];
    double fallRiskScore = 0.0;

    // Check mobility from notes
    final mobilityNotes = timeline.notes
        .where((n) => n.type == CaregiverNoteType.activity)
        .toList();

    if (mobilityNotes.any(
      (n) =>
          n.content.toLowerCase().contains('assist') ||
          n.content.toLowerCase().contains('walker'),
    )) {
      fallRiskFactors.add('Requires assistance with mobility');
      fallRiskScore += 0.3;
    }

    // Check for BP variability
    if (timeline.bloodPressure.length > 3) {
      final bpValues = timeline.bloodPressure.map((bp) => bp.systolic).toList();
      final stdDev = _calculateStdDev(bpValues);

      if (stdDev > 20) {
        fallRiskFactors.add(
          'Blood pressure variability (±${stdDev.toInt()} mmHg)',
        );
        fallRiskScore += 0.25;
      }
    }

    // Check for medication that increases fall risk
    if (timeline.medications.any(
      (m) =>
          m.medicationName.toLowerCase().contains('amlodipine') ||
          m.medicationName.toLowerCase().contains('atorvastatin'),
    )) {
      fallRiskFactors.add('On medications that may affect balance');
      fallRiskScore += 0.15;
    }

    if (fallRiskScore > 0.4) {
      insights.add(
        ClinicalInsight(
          id: 'pred-fall',
          type: InsightType.prediction,
          severity: fallRiskScore > 0.6
              ? InsightSeverity.critical
              : InsightSeverity.warning,
          title: 'Elevated fall risk detected',
          description:
              'Patient shows ${(fallRiskScore * 100).toInt()}% probability of fall risk based on multiple factors.',
          evidencePoints: fallRiskFactors,
          detectedAt: DateTime.now(),
          recommendation:
              'Implement fall prevention protocol. Consider physical therapy evaluation. Ensure call bell accessibility.',
          confidenceScore: fallRiskScore,
          acknowledged: false,
        ),
      );
    }

    // Infection risk prediction
    if (timeline.hrBaseline != null && timeline.heartRate.isNotEmpty) {
      final recentHR = timeline.heartRate
          .where(
            (hr) => hr.timestamp.isAfter(
              DateTime.now().subtract(const Duration(days: 1)),
            ),
          )
          .toList();

      if (recentHR.isNotEmpty) {
        final avgRecentHR =
            recentHR.map((hr) => hr.value).reduce((a, b) => a + b) /
            recentHR.length;

        // Elevated HR + low SpO2 = possible infection
        final recentSpO2 = timeline.spO2
            .where(
              (sp) => sp.timestamp.isAfter(
                DateTime.now().subtract(const Duration(days: 1)),
              ),
            )
            .toList();

        if (recentSpO2.isNotEmpty) {
          final avgSpO2 =
              recentSpO2.map((sp) => sp.value).reduce((a, b) => a + b) /
              recentSpO2.length;

          if (avgRecentHR > timeline.hrBaseline!.mean + 15 && avgSpO2 < 95) {
            insights.add(
              ClinicalInsight(
                id: 'pred-infection',
                type: InsightType.prediction,
                severity: InsightSeverity.warning,
                title: 'Possible infection indicators',
                description:
                    'Elevated heart rate with decreased oxygen saturation may indicate infection.',
                evidencePoints: [
                  'HR elevated by ${(avgRecentHR - timeline.hrBaseline!.mean).toInt()} bpm',
                  'SpO2 at ${avgSpO2.toInt()}%',
                  'Pattern consistent with infection',
                ],
                detectedAt: DateTime.now(),
                recommendation:
                    'Monitor temperature. Consider labs (WBC, CRP). Evaluate for respiratory or urinary infection.',
                affectedVitals: ['Heart Rate', 'SpO2'],
                confidenceScore: 0.65,
                acknowledged: false,
              ),
            );
          }
        }
      }
    }

    return insights;
  }

  /// Detect activity-vital correlations
  static List<ClinicalInsight> _detectActivityCorrelations(
    VitalsTimeline timeline,
  ) {
    final insights = <ClinicalInsight>[];

    // Find activity notes
    final activityNotes = timeline.notes
        .where((n) => n.type == CaregiverNoteType.activity)
        .toList();

    for (final note in activityNotes) {
      // Check vitals after activity
      final vitalsAfter = timeline.heartRate
          .where(
            (hr) =>
                hr.timestamp.isAfter(note.timestamp) &&
                hr.timestamp.difference(note.timestamp).inMinutes < 60,
          )
          .toList();

      if (vitalsAfter.isNotEmpty && timeline.hrBaseline != null) {
        final avgHR =
            vitalsAfter.map((hr) => hr.value).reduce((a, b) => a + b) /
            vitalsAfter.length;

        if (avgHR > timeline.hrBaseline!.mean + 30) {
          insights.add(
            ClinicalInsight(
              id: 'corr-activity-${note.timestamp.millisecondsSinceEpoch}',
              type: InsightType.activity,
              severity: InsightSeverity.info,
              title: 'Activity causing elevated heart rate',
              description:
                  'Heart rate increased to ${avgHR.toInt()} bpm following activity.',
              evidencePoints: [
                'Activity: ${note.content}',
                'Baseline HR: ${timeline.hrBaseline!.mean.toInt()} bpm',
                'Post-activity HR: ${avgHR.toInt()} bpm',
              ],
              detectedAt: DateTime.now(),
              recommendation:
                  'Monitor exercise tolerance. Consider gradual activity progression.',
              affectedVitals: ['Heart Rate'],
              confidenceScore: 0.7,
              acknowledged: false,
            ),
          );
        }
      }
    }

    return insights;
  }

  // Helper methods
  static double _calculateTrend(List<double> values) {
    if (values.length < 2) return 0;

    final n = values.length;
    final xMean = (n - 1) / 2;
    final yMean = values.reduce((a, b) => a + b) / n;

    double numerator = 0;
    double denominator = 0;

    for (int i = 0; i < n; i++) {
      numerator += (i - xMean) * (values[i] - yMean);
      denominator += pow(i - xMean, 2);
    }

    return denominator != 0 ? numerator / denominator : 0;
  }

  static double _calculateStdDev(List<double> values) {
    if (values.isEmpty) return 0;

    final mean = values.reduce((a, b) => a + b) / values.length;
    final variance =
        values.map((v) => pow(v - mean, 2)).reduce((a, b) => a + b) /
        values.length;

    return sqrt(variance);
  }

  static String _formatTime(DateTime time) {
    return '${time.month}/${time.day} ${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
