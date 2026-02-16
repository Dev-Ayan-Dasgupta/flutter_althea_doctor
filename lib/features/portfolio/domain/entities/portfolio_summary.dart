import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_summary.freezed.dart';

/// AI-generated portfolio summary
@freezed
abstract class PortfolioSummary with _$PortfolioSummary {
  const factory PortfolioSummary({
    required String doctorId,
    required DateTime generatedAt,
    required PortfolioMetrics metrics,
    required List<ClinicalOutcome> outcomes,
    required List<AIInsight> insights,
    required RiskDistribution riskDistribution,
    required List<TopCondition> topConditions,
  }) = _PortfolioSummary;
}

/// Portfolio metrics
@freezed
abstract class PortfolioMetrics with _$PortfolioMetrics {
  const factory PortfolioMetrics({
    required int totalPatients,
    required int activePatients,
    required int criticalPatients,
    required int stablePatients,
    required double averageCSI,
    required int consultationsThisMonth,
    required double patientSatisfaction,
  }) = _PortfolioMetrics;
}

/// Clinical outcome
@freezed
abstract class ClinicalOutcome with _$ClinicalOutcome {
  const factory ClinicalOutcome({
    required String category,
    required int total,
    required int improved,
    required int stable,
    required int declined,
    required double improvementRate,
  }) = _ClinicalOutcome;
}

/// AI-generated insight
@freezed
abstract class AIInsight with _$AIInsight {
  const factory AIInsight({
    required String id,
    required InsightCategory category,
    required String title,
    required String description,
    required InsightPriority priority,
    required List<String> actionItems,
    int? affectedPatientCount,
  }) = _AIInsight;
}

/// Insight categories
enum InsightCategory {
  riskManagement,
  clinicalQuality,
  efficiency,
  patientEngagement,
  financialPerformance,
}

/// Insight priority
enum InsightPriority { high, medium, low }

/// Risk distribution
@freezed
abstract class RiskDistribution with _$RiskDistribution {
  const factory RiskDistribution({
    required int critical,
    required int high,
    required int medium,
    required int low,
    required int stable,
  }) = _RiskDistribution;

  const RiskDistribution._();

  int get total => critical + high + medium + low + stable;
}

/// Top conditions
@freezed
abstract class TopCondition with _$TopCondition {
  const factory TopCondition({
    required String name,
    required int patientCount,
    required double averageCSI,
    required String trend, // improving, stable, declining
  }) = _TopCondition;
}
