import 'dart:math';
import '../../domain/entities/portfolio_summary.dart';

class MockPortfolioService {
  static final _random = Random(42);

  static PortfolioSummary generatePortfolioSummary(String doctorId) {
    return PortfolioSummary(
      doctorId: doctorId,
      generatedAt: DateTime.now(),
      metrics: const PortfolioMetrics(
        totalPatients: 156,
        activePatients: 142,
        criticalPatients: 8,
        stablePatients: 98,
        averageCSI: 78.5,
        consultationsThisMonth: 45,
        patientSatisfaction: 4.7,
      ),
      outcomes: [
        const ClinicalOutcome(
          category: 'Hypertension',
          total: 45,
          improved: 28,
          stable: 14,
          declined: 3,
          improvementRate: 62.2,
        ),
        const ClinicalOutcome(
          category: 'Diabetes',
          total: 38,
          improved: 22,
          stable: 12,
          declined: 4,
          improvementRate: 57.9,
        ),
        const ClinicalOutcome(
          category: 'Heart Disease',
          total: 32,
          improved: 19,
          stable: 10,
          declined: 3,
          improvementRate: 59.4,
        ),
      ],
      insights: [
        const AIInsight(
          id: 'insight-001',
          category: InsightCategory.riskManagement,
          title: '8 patients require immediate attention',
          description:
              'Critical CSI scores detected. Prioritize review of high-risk patients.',
          priority: InsightPriority.high,
          actionItems: [
            'Review patient vitals',
            'Schedule urgent consultations',
            'Update care plans',
          ],
          affectedPatientCount: 8,
        ),
        const AIInsight(
          id: 'insight-002',
          category: InsightCategory.clinicalQuality,
          title: '62% improvement rate in hypertension management',
          description:
              'Your hypertension patients show strong outcomes. Consider sharing best practices.',
          priority: InsightPriority.medium,
          actionItems: [
            'Document successful interventions',
            'Share protocols with team',
          ],
          affectedPatientCount: 28,
        ),
        const AIInsight(
          id: 'insight-003',
          category: InsightCategory.patientEngagement,
          title: 'Medication adherence trending down',
          description:
              '12 patients showing declining adherence. Intervention recommended.',
          priority: InsightPriority.high,
          actionItems: [
            'Schedule adherence counseling',
            'Review medication regimens',
            'Set up reminders',
          ],
          affectedPatientCount: 12,
        ),
      ],
      riskDistribution: const RiskDistribution(
        critical: 8,
        high: 18,
        medium: 28,
        low: 48,
        stable: 54,
      ),
      topConditions: [
        const TopCondition(
          name: 'Hypertension',
          patientCount: 45,
          averageCSI: 75.2,
          trend: 'improving',
        ),
        const TopCondition(
          name: 'Type 2 Diabetes',
          patientCount: 38,
          averageCSI: 72.8,
          trend: 'stable',
        ),
        const TopCondition(
          name: 'Coronary Artery Disease',
          patientCount: 32,
          averageCSI: 68.5,
          trend: 'improving',
        ),
      ],
    );
  }
}
