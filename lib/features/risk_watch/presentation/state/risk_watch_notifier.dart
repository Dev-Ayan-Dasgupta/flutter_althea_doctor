import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/patient_summary.dart';
import '../../data/services/mock_patient_service.dart';
import '../../../../shared/models/clinical/clinical_stability_index.dart';

part 'risk_watch_notifier.g.dart';

/// Risk watch state
class RiskWatchState {
  final List<PatientSummary> patients;
  final bool isLoading;
  final String? error;
  final String searchQuery;
  final ClinicalRiskLevel? filterRiskLevel;
  final String? filterFacility;

  RiskWatchState({
    this.patients = const [],
    this.isLoading = false,
    this.error,
    this.searchQuery = '',
    this.filterRiskLevel,
    this.filterFacility,
  });

  RiskWatchState copyWith({
    List<PatientSummary>? patients,
    bool? isLoading,
    String? error,
    String? searchQuery,
    ClinicalRiskLevel? filterRiskLevel,
    String? filterFacility,
    bool clearError = false,
    bool clearFilters = false,
  }) {
    return RiskWatchState(
      patients: patients ?? this.patients,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
      searchQuery: clearFilters ? '' : (searchQuery ?? this.searchQuery),
      filterRiskLevel: clearFilters
          ? null
          : (filterRiskLevel ?? this.filterRiskLevel),
      filterFacility: clearFilters
          ? null
          : (filterFacility ?? this.filterFacility),
    );
  }

  /// Get filtered patients
  List<PatientSummary> get filteredPatients {
    var filtered = patients;

    // Search filter
    if (searchQuery.isNotEmpty) {
      filtered = filtered
          .where(
            (p) =>
                p.name.toLowerCase().contains(searchQuery.toLowerCase()) ||
                p.roomNumber?.toLowerCase().contains(
                      searchQuery.toLowerCase(),
                    ) ==
                    true,
          )
          .toList();
    }

    // Risk level filter
    if (filterRiskLevel != null) {
      filtered = filtered
          .where((p) => p.csi.riskLevel == filterRiskLevel)
          .toList();
    }

    // Facility filter
    if (filterFacility != null) {
      filtered = filtered.where((p) => p.facilityId == filterFacility).toList();
    }

    return filtered;
  }

  /// Get sorted patients by CSI (critical first)
  List<PatientSummary> get sortedPatients {
    final sorted = List<PatientSummary>.from(filteredPatients);
    sorted.sort((a, b) {
      // First by risk level
      final riskCompare = a.csi.riskLevel.index.compareTo(
        b.csi.riskLevel.index,
      );
      if (riskCompare != 0) return riskCompare;

      // Then by CSI score (lower = higher priority)
      return a.csi.score.compareTo(b.csi.score);
    });
    return sorted;
  }

  /// Get risk level counts
  Map<ClinicalRiskLevel, int> get riskLevelCounts {
    final counts = <ClinicalRiskLevel, int>{};
    for (final level in ClinicalRiskLevel.values) {
      counts[level] = patients.where((p) => p.csi.riskLevel == level).length;
    }
    return counts;
  }
}

/// Risk watch notifier
@riverpod
class RiskWatch extends _$RiskWatch {
  @override
  RiskWatchState build() {
    _loadPatients();
    return RiskWatchState(isLoading: true);
  }

  /// Load patients
  Future<void> _loadPatients() async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 800));

      final patients = MockPatientService.generatePatientList(30);

      state = state.copyWith(patients: patients, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load patients: $e',
      );
    }
  }

  /// Refresh patients
  Future<void> refresh() async {
    await _loadPatients();
  }

  /// Search patients
  void search(String query) {
    state = state.copyWith(searchQuery: query);
  }

  /// Filter by risk level
  void filterByRiskLevel(ClinicalRiskLevel? level) {
    state = state.copyWith(filterRiskLevel: level);
  }

  /// Filter by facility
  void filterByFacility(String? facilityId) {
    state = state.copyWith(filterFacility: facilityId);
  }

  /// Clear filters
  void clearFilters() {
    state = state.copyWith(clearFilters: true);
  }

  /// Mark patient as reviewed
  void markAsReviewed(String patientId) {
    final updatedPatients = state.patients.map((p) {
      if (p.id == patientId) {
        return p.copyWith(
          lastReviewedAt: DateTime.now(),
          lastReviewedBy: 'Dr. Kumar', // TODO: Get from auth
        );
      }
      return p;
    }).toList();

    state = state.copyWith(patients: updatedPatients);
  }
}
