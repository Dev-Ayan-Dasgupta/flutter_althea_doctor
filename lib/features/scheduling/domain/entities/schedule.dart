import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';

/// Appointment
@freezed
abstract class Appointment with _$Appointment {
  const factory Appointment({
    required String id,
    required String patientId,
    required String patientName,
    required String doctorId,
    required String doctorName,
    required DateTime scheduledTime,
    required int durationMinutes,
    required AppointmentType type,
    required AppointmentStatus status,
    String? reason,
    String? location,
    String? notes,
    bool? isFollowUp,
    DateTime? createdAt,
  }) = _Appointment;

  const Appointment._();

  DateTime get endTime {
    return scheduledTime.add(Duration(minutes: durationMinutes));
  }

  bool get isToday {
    final now = DateTime.now();
    return scheduledTime.year == now.year &&
        scheduledTime.month == now.month &&
        scheduledTime.day == now.day;
  }

  bool get isPast {
    return scheduledTime.isBefore(DateTime.now());
  }
}

/// Appointment types
enum AppointmentType { consultation, followUp, procedure, checkup, emergency }

/// Appointment status
enum AppointmentStatus {
  scheduled,
  confirmed,
  checkedIn,
  inProgress,
  completed,
  cancelled,
  noShow,
}

/// Available time slot
@freezed
abstract class TimeSlot with _$TimeSlot {
  const factory TimeSlot({
    required DateTime startTime,
    required int durationMinutes,
    required bool isAvailable,
    String? bookedBy,
  }) = _TimeSlot;

  const TimeSlot._();

  DateTime get endTime {
    return startTime.add(Duration(minutes: durationMinutes));
  }
}

/// Doctor schedule
@freezed
abstract class DoctorSchedule with _$DoctorSchedule {
  const factory DoctorSchedule({
    required String doctorId,
    required DateTime date,
    required List<TimeSlot> slots,
    required List<Appointment> appointments,
  }) = _DoctorSchedule;

  const DoctorSchedule._();

  List<TimeSlot> get availableSlots {
    return slots.where((s) => s.isAvailable).toList();
  }

  int get totalAppointments => appointments.length;
}
