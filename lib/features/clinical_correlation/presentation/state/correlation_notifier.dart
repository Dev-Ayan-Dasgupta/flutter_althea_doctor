import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../shared/models/clinical/clinical_insight.dart';
import '../../../digital_twin/presentation/state/digital_twin_notifier.dart';
import '../../data/services/correlation_detector.dart';

part 'correlation_notifier.g.dart';

/// Clinical correlation state
class CorrelationState {
  final List<ClinicalInsight> insights;
  final bool isLoading;
  final String? error;
  final InsightSeverity? filterSeverity;

  CorrelationState({
    this.insights = const [],
    this.isLoading = false,
    this.error,
    this.filterSeverity,
  });

  CorrelationState copyWith({
    List<ClinicalInsight>? insights,
    bool? isLoading,
    String? error,
    InsightSeverity? filterSeverity,
    bool clearError = false,
    bool clearFilter = false,
  }) {
    return CorrelationState(
      insights: insights ?? this.insights,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
      filterSeverity: clearFilter
          ? null
          : (filterSeverity ?? this.filterSeverity),
    );
  }

  /// Get filtered insights
  List<ClinicalInsight> get filteredInsights {
    if (filterSeverity == null) return insights;
    return insights.where((i) => i.severity == filterSeverity).toList();
  }

  /// Get insights count by severity
  Map<InsightSeverity, int> get severityCounts {
    final counts = <InsightSeverity, int>{};
    for (final severity in InsightSeverity.values) {
      counts[severity] = insights.where((i) => i.severity == severity).length;
    }
    return counts;
  }
}

/// Clinical correlation notifier
@riverpod
class ClinicalCorrelation extends _$ClinicalCorrelation {
  @override
  CorrelationState build(String patientId) {
    _analyzeCorrelations(patientId);
    return CorrelationState(isLoading: true);
  }

  /// Analyze correlations from timeline
  Future<void> _analyzeCorrelations(String patientId) async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      // Get timeline from digital twin
      final digitalTwinState = ref.read(digitalTwinProvider(patientId));

      if (digitalTwinState.timeline == null) {
        state = state.copyWith(
          isLoading: false,
          error: 'No timeline data available',
        );
        return;
      }

      // Simulate analysis delay
      await Future.delayed(const Duration(milliseconds: 500));

      // Run correlation detection
      final insights = CorrelationDetector.analyzeTimeline(
        digitalTwinState.timeline!,
      );

      state = state.copyWith(insights: insights, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to analyze correlations: $e',
      );
    }
  }

  /// Refresh analysis
  Future<void> refresh() async {
    await _analyzeCorrelations(patientId);
  }

  /// Filter by severity
  void filterBySeverity(InsightSeverity? severity) {
    state = state.copyWith(filterSeverity: severity);
  }

  /// Clear filter
  void clearFilter() {
    state = state.copyWith(clearFilter: true);
  }

  /// Acknowledge insight
  void acknowledgeInsight(String insightId) {
    final updatedInsights = state.insights.map((insight) {
      if (insight.id == insightId) {
        return insight.copyWith(acknowledged: true);
      }
      return insight;
    }).toList();

    state = state.copyWith(insights: updatedInsights);
  }
}
