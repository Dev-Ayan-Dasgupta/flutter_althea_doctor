import 'dart:math';
import '../../domain/entities/schedule.dart';

class MockSchedulingService {
  static final _random = Random(42);

  static List<Appointment> generateAppointments(String doctorId, int count) {
    return List.generate(count, (i) => _generateAppointment(doctorId, i));
  }

  static Appointment _generateAppointment(String doctorId, int index) {
    final now = DateTime.now();
    final scheduledTime = now.add(
      Duration(days: index - 5, hours: 9 + (index % 8)),
    );

    return Appointment(
      id: 'appt-$index',
      patientId: 'patient-$index',
      patientName: 'Patient ${String.fromCharCode(65 + index)}',
      doctorId: doctorId,
      doctorName: 'Dr. Rajesh Kumar',
      scheduledTime: scheduledTime,
      durationMinutes: 30,
      type: _randomAppointmentType(),
      status: _randomAppointmentStatus(scheduledTime),
      reason: 'Routine consultation',
      location: 'Clinic Room ${1 + (index % 3)}',
      isFollowUp: _random.nextBool(),
      createdAt: now.subtract(Duration(days: 10)),
    );
  }

  static DoctorSchedule generateScheduleForDate(
    String doctorId,
    DateTime date,
  ) {
    final slots = <TimeSlot>[];
    final startHour = 9;
    final endHour = 17;

    for (int hour = startHour; hour < endHour; hour++) {
      for (int minute = 0; minute < 60; minute += 30) {
        final slotTime = DateTime(
          date.year,
          date.month,
          date.day,
          hour,
          minute,
        );
        slots.add(
          TimeSlot(
            startTime: slotTime,
            durationMinutes: 30,
            isAvailable:
                _random.nextBool() || _random.nextBool(), // 75% available
          ),
        );
      }
    }

    final appointments = generateAppointments(doctorId, 5)
        .where(
          (a) =>
              a.scheduledTime.year == date.year &&
              a.scheduledTime.month == date.month &&
              a.scheduledTime.day == date.day,
        )
        .toList();

    return DoctorSchedule(
      doctorId: doctorId,
      date: date,
      slots: slots,
      appointments: appointments,
    );
  }

  static AppointmentType _randomAppointmentType() {
    final types = [
      AppointmentType.consultation,
      AppointmentType.followUp,
      AppointmentType.checkup,
    ];
    return types[_random.nextInt(types.length)];
  }

  static AppointmentStatus _randomAppointmentStatus(DateTime scheduledTime) {
    if (scheduledTime.isAfter(DateTime.now())) {
      return AppointmentStatus.scheduled;
    }
    final statuses = [
      AppointmentStatus.completed,
      AppointmentStatus.noShow,
      AppointmentStatus.cancelled,
    ];
    return statuses[_random.nextInt(statuses.length)];
  }
}
