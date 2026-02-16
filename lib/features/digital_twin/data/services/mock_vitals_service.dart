import 'dart:math';
import '../../domain/entities/vitals_timeline.dart';

/// Mock service for generating vitals timeline data
class MockVitalsService {
  static final _random = Random(42);

  static final _medications = [
    {'name': 'Amlodipine', 'dosage': '5mg'},
    {'name': 'Metformin', 'dosage': '500mg'},
    {'name': 'Aspirin', 'dosage': '75mg'},
    {'name': 'Atorvastatin', 'dosage': '20mg'},
  ];

  static final _noteTemplates = {
    CaregiverNoteType.observation: [
      'Patient appears comfortable and alert',
      'Patient reports feeling well today',
      'Complained of mild headache, resolved after rest',
      'Good appetite, ate full breakfast',
    ],
    CaregiverNoteType.activity: [
      'Walked 10 minutes in corridor with assistance',
      'Participated in physiotherapy session',
      'Completed daily exercises',
      'Remained in bed most of the day, encouraged mobility',
    ],
    CaregiverNoteType.feeding: [
      'Ate 100% of lunch',
      'Poor appetite at dinner, ate 50%',
      'Requested extra fluids, provided water',
      'Special diet adhered to',
    ],
  };

  /// Generate complete vitals timeline for 7 days
  static VitalsTimeline generateTimeline({int days = 7}) {
    final now = DateTime.now();
    final startDate = now.subtract(Duration(days: days));

    // Generate vitals with 3-4 readings per day
    final bloodPressure = <BloodPressureDataPoint>[];
    final heartRate = <VitalsDataPoint>[];
    final spO2 = <VitalsDataPoint>[];
    final glucose = <VitalsDataPoint>[];
    final medications = <MedicationMarker>[];
    final notes = <CaregiverNote>[];

    for (int day = 0; day < days; day++) {
      final date = startDate.add(Duration(days: day));
      final readingsPerDay = 3 + _random.nextInt(2); // 3-4 readings

      for (int reading = 0; reading < readingsPerDay; reading++) {
        final time = date.add(
          Duration(
            hours: 6 + (reading * (12 ~/ readingsPerDay)),
            minutes: _random.nextInt(30),
          ),
        );

        // Blood Pressure (with some trend)
        final baseSystolic = 125 + (day * 2); // Slight upward trend
        final systolic = baseSystolic + _random.nextInt(20) - 10;
        final diastolic = systolic - 40 - _random.nextInt(10);

        bloodPressure.add(
          BloodPressureDataPoint(
            timestamp: time,
            systolic: systolic.toDouble(),
            diastolic: diastolic.toDouble(),
            isAbnormal: systolic > 160 || systolic < 90,
          ),
        );

        // Heart Rate
        final baseHR = 75 - (day * 0.5); // Slight downward trend (improvement)
        final hr = baseHR + _random.nextInt(20) - 10;

        heartRate.add(
          VitalsDataPoint(
            timestamp: time,
            value: hr.clamp(50, 120),
            unit: 'bpm',
            isAbnormal: hr < 60 || hr > 100,
          ),
        );

        // SpO2
        final baseSpO2 = 95 + (day * 0.3); // Improving trend
        final spo2 = baseSpO2 + _random.nextInt(4);

        spO2.add(
          VitalsDataPoint(
            timestamp: time,
            value: spo2.clamp(88, 100).toDouble(),
            unit: '%',
            isAbnormal: spo2 < 94,
          ),
        );

        // Glucose (1-2 times per day)
        if (reading == 0 || reading == readingsPerDay - 1) {
          final baseGlucose = 120 - (day * 2); // Improving control
          final glucose_val = baseGlucose + _random.nextInt(40) - 20;

          glucose.add(
            VitalsDataPoint(
              timestamp: time,
              value: glucose_val.clamp(70, 250).toDouble(),
              unit: 'mg/dL',
              isAbnormal: glucose_val < 80 || glucose_val > 180,
            ),
          );
        }
      }

      // Medication markers (2-3 times per day)
      for (int i = 0; i < 3; i++) {
        final med = _medications[i % _medications.length];
        final medTime = date.add(Duration(hours: 8 + (i * 6)));

        medications.add(
          MedicationMarker(
            timestamp: medTime,
            medicationName: med['name']!,
            dosage: med['dosage']!,
            administered: _random.nextDouble() > 0.1, // 90% adherence
            administeredBy: 'Nurse ${_random.nextBool() ? 'Priya' : 'Amit'}',
          ),
        );
      }

      // Caregiver notes (1-2 per day)
      final noteCount = 1 + _random.nextInt(2);
      for (int i = 0; i < noteCount; i++) {
        final type = CaregiverNoteType
            .values[_random.nextInt(CaregiverNoteType.values.length)];

        final templates = _noteTemplates[type] ?? ['Standard note'];
        final content = templates[_random.nextInt(templates.length)];

        notes.add(
          CaregiverNote(
            id: 'note-${day * 10 + i}',
            timestamp: date.add(Duration(hours: 10 + (i * 6))),
            authorName: 'Nurse ${_random.nextBool() ? 'Priya' : 'Amit'}',
            content: content,
            type: type,
            tags: _getTagsForType(type),
          ),
        );
      }
    }

    // Calculate baselines
    final bpBaseline = _calculateBaseline(
      bloodPressure.map((p) => p.systolic).toList(),
    );
    final hrBaseline = _calculateBaseline(
      heartRate.map((p) => p.value).toList(),
    );
    final spO2Baseline = _calculateBaseline(spO2.map((p) => p.value).toList());
    final glucoseBaseline = _calculateBaseline(
      glucose.map((p) => p.value).toList(),
    );

    return VitalsTimeline(
      bloodPressure: bloodPressure,
      heartRate: heartRate,
      spO2: spO2,
      glucose: glucose,
      medications: medications,
      notes: notes,
      bpBaseline: bpBaseline,
      hrBaseline: hrBaseline,
      spO2Baseline: spO2Baseline,
      glucoseBaseline: glucoseBaseline,
    );
  }

  static VitalBaseline _calculateBaseline(List<double> values) {
    if (values.isEmpty) {
      return const VitalBaseline(mean: 0, min: 0, max: 0, stdDev: 0);
    }

    final mean = values.reduce((a, b) => a + b) / values.length;
    final min = values.reduce((a, b) => a < b ? a : b);
    final max = values.reduce((a, b) => a > b ? a : b);

    final variance =
        values.map((v) => pow(v - mean, 2)).reduce((a, b) => a + b) /
        values.length;
    final stdDev = sqrt(variance);

    return VitalBaseline(mean: mean, min: min, max: max, stdDev: stdDev);
  }

  static List<String> _getTagsForType(CaregiverNoteType type) {
    switch (type) {
      case CaregiverNoteType.observation:
        return ['vitals', 'general'];
      case CaregiverNoteType.activity:
        return ['mobility', 'exercise'];
      case CaregiverNoteType.feeding:
        return ['nutrition', 'diet'];
      case CaregiverNoteType.hygiene:
        return ['adl', 'care'];
      case CaregiverNoteType.medication:
        return ['meds', 'adherence'];
      case CaregiverNoteType.incident:
        return ['safety', 'alert'];
      case CaregiverNoteType.communication:
        return ['family', 'contact'];
    }
  }
}
