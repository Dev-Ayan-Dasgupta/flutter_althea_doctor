import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vitals_timeline.freezed.dart';

/// Vitals timeline data point
@freezed
abstract class VitalsDataPoint with _$VitalsDataPoint {
  const factory VitalsDataPoint({
    required DateTime timestamp,
    required double value,
    String? unit,
    bool? isAbnormal,
    String? note,
  }) = _VitalsDataPoint;

  const VitalsDataPoint._();

  /// Get hours since epoch (for charting)
  double get hoursSinceEpoch {
    return timestamp.millisecondsSinceEpoch / 3600000;
  }
}

/// Blood pressure data point (composite)
@freezed
abstract class BloodPressureDataPoint with _$BloodPressureDataPoint {
  const factory BloodPressureDataPoint({
    required DateTime timestamp,
    required double systolic,
    required double diastolic,
    bool? isAbnormal,
    String? note,
  }) = _BloodPressureDataPoint;

  const BloodPressureDataPoint._();

  double get hoursSinceEpoch {
    return timestamp.millisecondsSinceEpoch / 3600000;
  }
}

/// Medication event marker
@freezed
abstract class MedicationMarker with _$MedicationMarker {
  const factory MedicationMarker({
    required DateTime timestamp,
    required String medicationName,
    required String dosage,
    required bool administered,
    String? administeredBy,
  }) = _MedicationMarker;

  const MedicationMarker._();

  double get hoursSinceEpoch {
    return timestamp.millisecondsSinceEpoch / 3600000;
  }
}

/// Caregiver note
@freezed
abstract class CaregiverNote with _$CaregiverNote {
  const factory CaregiverNote({
    required String id,
    required DateTime timestamp,
    required String authorName,
    required String content,
    required CaregiverNoteType type,
    List<String>? tags,
  }) = _CaregiverNote;
}

/// Caregiver note types
enum CaregiverNoteType {
  observation,
  activity,
  feeding,
  hygiene,
  medication,
  incident,
  communication,
}

/// Baseline statistics for a vital
@freezed
abstract class VitalBaseline with _$VitalBaseline {
  const factory VitalBaseline({
    required double mean,
    required double min,
    required double max,
    required double stdDev,
  }) = _VitalBaseline;

  const VitalBaseline._();

  /// Check if value is outside baseline range (mean ± 2*stdDev)
  bool isOutsideBaseline(double value) {
    final lowerBound = mean - (2 * stdDev);
    final upperBound = mean + (2 * stdDev);
    return value < lowerBound || value > upperBound;
  }

  /// Get deviation percentage from mean
  double getDeviationPercentage(double value) {
    if (mean == 0) return 0;
    return ((value - mean) / mean) * 100;
  }
}

/// Complete vitals timeline
@freezed
abstract class VitalsTimeline with _$VitalsTimeline {
  const factory VitalsTimeline({
    required List<BloodPressureDataPoint> bloodPressure,
    required List<VitalsDataPoint> heartRate,
    required List<VitalsDataPoint> spO2,
    required List<VitalsDataPoint> glucose,
    required List<MedicationMarker> medications,
    required List<CaregiverNote> notes,
    VitalBaseline? bpBaseline,
    VitalBaseline? hrBaseline,
    VitalBaseline? spO2Baseline,
    VitalBaseline? glucoseBaseline,
  }) = _VitalsTimeline;

  const VitalsTimeline._();

  /// Get date range of timeline
  DateTimeRange get dateRange {
    final allTimestamps = [
      ...bloodPressure.map((p) => p.timestamp),
      ...heartRate.map((p) => p.timestamp),
      ...spO2.map((p) => p.timestamp),
      ...glucose.map((p) => p.timestamp),
    ];

    if (allTimestamps.isEmpty) {
      return DateTimeRange(
        start: DateTime.now().subtract(const Duration(days: 7)),
        end: DateTime.now(),
      );
    }

    allTimestamps.sort();
    return DateTimeRange(start: allTimestamps.first, end: allTimestamps.last);
  }
}
