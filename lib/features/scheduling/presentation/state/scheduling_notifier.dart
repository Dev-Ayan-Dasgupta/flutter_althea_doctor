import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/schedule.dart';
import '../../data/services/mock_scheduling_service.dart';

part 'scheduling_notifier.g.dart';

class SchedulingState {
  final List<Appointment> appointments;
  final DoctorSchedule? selectedDaySchedule;
  final DateTime selectedDate;
  final bool isLoading;
  final String? error;

  SchedulingState({
    this.appointments = const [],
    this.selectedDaySchedule,
    DateTime? selectedDate,
    this.isLoading = false,
    this.error,
  }) : selectedDate = selectedDate ?? DateTime.now();

  SchedulingState copyWith({
    List<Appointment>? appointments,
    DoctorSchedule? selectedDaySchedule,
    DateTime? selectedDate,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return SchedulingState(
      appointments: appointments ?? this.appointments,
      selectedDaySchedule: selectedDaySchedule ?? this.selectedDaySchedule,
      selectedDate: selectedDate ?? this.selectedDate,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }

  List<Appointment> get todayAppointments {
    return appointments.where((a) => a.isToday).toList();
  }

  List<Appointment> get upcomingAppointments {
    final now = DateTime.now();
    return appointments.where((a) => a.scheduledTime.isAfter(now)).toList()
      ..sort((a, b) => a.scheduledTime.compareTo(b.scheduledTime));
  }
}

@riverpod
class Scheduling extends _$Scheduling {
  @override
  SchedulingState build(String doctorId) {
    _loadSchedule(doctorId);
    return SchedulingState(isLoading: true);
  }

  Future<void> _loadSchedule(String doctorId) async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final appointments = MockSchedulingService.generateAppointments(
        doctorId,
        30,
      );
      final daySchedule = MockSchedulingService.generateScheduleForDate(
        doctorId,
        state.selectedDate,
      );

      state = state.copyWith(
        appointments: appointments,
        selectedDaySchedule: daySchedule,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load schedule: $e',
      );
    }
  }

  void selectDate(DateTime date) {
    state = state.copyWith(selectedDate: date);
    final daySchedule = MockSchedulingService.generateScheduleForDate(
      doctorId,
      date,
    );
    state = state.copyWith(selectedDaySchedule: daySchedule);
  }

  Future<void> refresh() async => _loadSchedule(doctorId);
}
