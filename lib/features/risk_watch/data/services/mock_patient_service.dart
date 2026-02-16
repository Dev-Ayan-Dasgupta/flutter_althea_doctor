import 'dart:math';
import '../../../../core/utils/constants.dart';
import '../../../../core/services/mock_data_service.dart';
import '../../../../shared/models/clinical/clinical_stability_index.dart';
import '../../domain/entities/patient_summary.dart';

/// Mock service for generating patient summaries with CSI
class MockPatientService {
  static final _random = Random(AppConstants.mockDataSeed);

  static final _rooms = [
    'A-101',
    'A-102',
    'A-103',
    'B-201',
    'B-202',
    'B-203',
    'C-301',
    'C-302',
    'D-401',
    'D-402',
    'E-501',
    'E-502',
  ];

  static final _facilities = [
    {'id': 'facility-001', 'name': 'Sunrise Senior Living - Rajarhat'},
    {'id': 'facility-002', 'name': 'Golden Years Home - Salt Lake'},
    {'id': 'facility-003', 'name': 'Care Haven - New Town'},
  ];

  static final _conditions = [
    'Hypertension',
    'Type 2 Diabetes',
    'Chronic Kidney Disease',
    'Coronary Artery Disease',
    'Osteoarthritis',
    'COPD',
    'Post-Stroke',
    'Dementia',
    'Parkinson\'s',
    'Heart Failure',
  ];

  static final _alertTypes = [
    'BP spike detected',
    'Missed medication',
    'Low SpO2 alert',
    'Fall risk increased',
    'Glucose abnormal',
    'Heart rate irregular',
    'Activity decreased',
    'Sleep disturbance',
  ];

  /// Generate a list of patient summaries
  static List<PatientSummary> generatePatientList(int count) {
    return List.generate(count, (index) => _generatePatient(index));
  }

  /// Generate a single patient summary
  static PatientSummary _generatePatient(int index) {
    final patient = MockDataService.generatePatient(id: 'patient-$index');
    final facility = _facilities[_random.nextInt(_facilities.length)];

    // Generate realistic vitals
    final vitals = _generateVitals();

    // Select random conditions
    final conditionCount = 1 + _random.nextInt(4);
    final activeConditions = List.generate(
      conditionCount,
      (_) => _conditions[_random.nextInt(_conditions.length)],
    ).toSet().toList();

    // Calculate CSI
    final csi = CSICalculator.calculate(
      currentVitals: vitals,
      medications: [],
      medicationAdherent:
          _random.nextBool() || _random.nextBool(), // 75% adherent
      activeConditions: activeConditions,
      daysSinceLastIncident: _random.nextBool() ? _random.nextInt(30) : null,
    );

    // Generate alerts based on risk level
    final alertCount = csi.riskLevel == ClinicalRiskLevel.critical
        ? 2 + _random.nextInt(2)
        : csi.riskLevel == ClinicalRiskLevel.high
        ? 1 + _random.nextInt(2)
        : _random.nextBool()
        ? 1
        : 0;

    final activeAlerts = List.generate(
      alertCount,
      (_) => _alertTypes[_random.nextInt(_alertTypes.length)],
    ).toSet().toList();

    // Last reviewed timing
    final lastReviewedAt = _random.nextBool()
        ? DateTime.now().subtract(Duration(hours: _random.nextInt(48)))
        : null;

    return PatientSummary(
      id: patient.id,
      name: patient.name.first.text ?? 'Unknown',
      age: DateTime.now().year - DateTime.parse(patient.birthDate!).year,
      gender: patient.gender ?? 'unknown',
      roomNumber: _rooms[_random.nextInt(_rooms.length)],
      facilityId: facility['id'],
      facilityName: facility['name'],
      csi: csi,
      activeAlerts: activeAlerts,
      latestVitals: vitals,
      activeConditions: activeConditions,
      lastReviewedAt: lastReviewedAt,
      lastReviewedBy: lastReviewedAt != null ? 'Dr. Kumar' : null,
      hasUnreadNotes: _random.nextBool(),
      hasPendingOrders: _random.nextBool(),
      updatedAt: DateTime.now(),
    );
  }

  /// Generate realistic vitals
  static Map<String, double> _generateVitals() {
    // Create realistic vital ranges (some abnormal for demo)
    final isAbnormal = _random.nextDouble() < 0.3; // 30% abnormal

    double systolic;
    double heartRate;
    double spO2;
    double glucose;

    if (isAbnormal) {
      // Generate abnormal vitals
      systolic = _random.nextBool()
          ? 160 + _random.nextInt(40).toDouble()
          : 85 + _random.nextInt(10).toDouble();
      heartRate = _random.nextBool()
          ? 100 + _random.nextInt(30).toDouble()
          : 45 + _random.nextInt(10).toDouble();
      spO2 = 88 + _random.nextInt(7).toDouble();
      glucose = _random.nextBool()
          ? 200 + _random.nextInt(80).toDouble()
          : 60 + _random.nextInt(15).toDouble();
    } else {
      // Generate normal vitals
      systolic = 110 + _random.nextInt(30).toDouble();
      heartRate = 65 + _random.nextInt(25).toDouble();
      spO2 = 95 + _random.nextInt(5).toDouble();
      glucose = 90 + _random.nextInt(50).toDouble();
    }

    return {
      'systolic': systolic,
      'diastolic': systolic - 30 - _random.nextInt(20).toDouble(),
      'heartRate': heartRate,
      'spO2': spO2,
      'glucose': glucose,
    };
  }

  /// Refresh patient data (simulate real-time updates)
  static PatientSummary refreshPatient(PatientSummary patient) {
    final vitals = _generateVitals();

    final csi = CSICalculator.calculate(
      currentVitals: vitals,
      medications: [],
      medicationAdherent: _random.nextBool() || _random.nextBool(),
      activeConditions: patient.activeConditions,
      daysSinceLastIncident: _random.nextBool() ? _random.nextInt(30) : null,
    );

    return patient.copyWith(
      csi: csi,
      latestVitals: vitals,
      updatedAt: DateTime.now(),
    );
  }
}
