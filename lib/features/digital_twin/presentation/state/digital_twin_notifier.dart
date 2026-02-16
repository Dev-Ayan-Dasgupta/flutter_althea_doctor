import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../shared/models/fhir/patient.dart';
import '../../../../core/services/mock_data_service.dart';
import '../../../risk_watch/data/services/mock_patient_service.dart';
import '../../../risk_watch/domain/entities/patient_summary.dart';
import '../../domain/entities/vitals_timeline.dart';
import '../../data/services/mock_vitals_service.dart';

part 'digital_twin_notifier.g.dart';

/// Digital twin state
class DigitalTwinState {
  final PatientSummary? patient;
  final FhirPatient? fhirPatient;
  final VitalsTimeline? timeline;
  final bool isLoading;
  final String? error;
  final int selectedTabIndex;

  DigitalTwinState({
    this.patient,
    this.fhirPatient,
    this.timeline,
    this.isLoading = false,
    this.error,
    this.selectedTabIndex = 0,
  });

  DigitalTwinState copyWith({
    PatientSummary? patient,
    FhirPatient? fhirPatient,
    VitalsTimeline? timeline,
    bool? isLoading,
    String? error,
    int? selectedTabIndex,
    bool clearError = false,
  }) {
    return DigitalTwinState(
      patient: patient ?? this.patient,
      fhirPatient: fhirPatient ?? this.fhirPatient,
      timeline: timeline ?? this.timeline,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
    );
  }
}

/// Digital twin notifier
@riverpod
class DigitalTwin extends _$DigitalTwin {
  @override
  DigitalTwinState build(String patientId) {
    _loadPatientData(patientId);
    return DigitalTwinState(isLoading: true);
  }

  /// Load patient data
  Future<void> _loadPatientData(String patientId) async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 800));

      // Generate patient summary
      final patients = MockPatientService.generatePatientList(50);
      final patient = patients.firstWhere(
        (p) => p.id == patientId,
        orElse: () => patients.first,
      );

      // Generate FHIR patient
      final fhirPatient = MockDataService.generatePatient(id: patientId);

      // Generate vitals timeline
      final timeline = MockVitalsService.generateTimeline(days: 7);

      state = state.copyWith(
        patient: patient,
        fhirPatient: fhirPatient,
        timeline: timeline,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load patient data: $e',
      );
    }
  }

  /// Refresh data
  Future<void> refresh() async {
    final patientId = state.patient?.id;
    if (patientId != null) {
      await _loadPatientData(patientId);
    }
  }

  /// Change selected tab
  void selectTab(int index) {
    state = state.copyWith(selectedTabIndex: index);
  }
}
