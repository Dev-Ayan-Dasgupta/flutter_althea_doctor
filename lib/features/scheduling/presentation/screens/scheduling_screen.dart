import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../domain/entities/schedule.dart';
import '../state/scheduling_notifier.dart';

class SchedulingScreen extends ConsumerWidget {
  const SchedulingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      schedulingProvider('doc-001'),
    ); // TODO: Get from auth
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (state.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      body: Column(
        children: [
          _buildHeader(context, state, isDark),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await ref
                    .read(schedulingProvider('doc-001').notifier)
                    .refresh();
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildCalendar(context, ref, state, isDark),
                    _buildTodayAppointments(context, state, isDark),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // TODO: Add new appointment
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('New appointment coming soon')),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('New'),
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    SchedulingState state,
    bool isDark,
  ) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      padding: EdgeInsets.all(isMobile ? 16 : 20),
      decoration: BoxDecoration(
        gradient: isDark
            ? AppGradients.darkSurfaceGradient
            : AppGradients.lightSurfaceGradient,
        border: Border(
          bottom: BorderSide(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.calendar_today,
            size: isMobile ? 24 : 32,
            color: AppColors.primary,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Schedule',
                  style: isMobile
                      ? AppTypography.titleLarge()
                      : AppTypography.headlineSmall(),
                ),
                const SizedBox(height: 4),
                Text(
                  '${state.todayAppointments.length} appointments today',
                  style: AppTypography.bodyMedium(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar(
    BuildContext context,
    WidgetRef ref,
    SchedulingState state,
    bool isDark,
  ) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
        ),
      ),
      child: TableCalendar(
        firstDay: DateTime.now().subtract(const Duration(days: 365)),
        lastDay: DateTime.now().add(const Duration(days: 365)),
        focusedDay: state.selectedDate,
        selectedDayPredicate: (day) => isSameDay(day, state.selectedDate),
        onDaySelected: (selectedDay, focusedDay) {
          ref
              .read(schedulingProvider('doc-001').notifier)
              .selectDate(selectedDay);
        },
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          selectedDecoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
        ),
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
        ),
      ),
    );
  }

  Widget _buildTodayAppointments(
    BuildContext context,
    SchedulingState state,
    bool isDark,
  ) {
    if (state.todayAppointments.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.event_available,
                size: 64,
                color: isDark
                    ? AppColors.darkOnSurfaceVariant
                    : AppColors.lightOnSurfaceVariant,
              ),
              const SizedBox(height: 16),
              Text('No appointments today', style: AppTypography.titleMedium()),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "Today's Appointments",
            style: AppTypography.titleLarge(),
          ),
        ),
        ...state.todayAppointments.map(
          (appointment) => _buildAppointmentCard(appointment, isDark),
        ),
      ],
    );
  }

  Widget _buildAppointmentCard(Appointment appointment, bool isDark) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _getStatusColor(appointment.status).withOpacity(0.3),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 60,
            decoration: BoxDecoration(
              color: _getStatusColor(appointment.status),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appointment.patientName,
                  style: AppTypography.titleMedium(),
                ),
                const SizedBox(height: 4),
                Text(
                  '${_formatTime(appointment.scheduledTime)} - ${_formatTime(appointment.endTime)}',
                  style: AppTypography.bodyMedium(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
                if (appointment.reason != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    appointment.reason!,
                    style: AppTypography.bodySmall(
                      color: isDark
                          ? AppColors.darkOnSurfaceVariant
                          : AppColors.lightOnSurfaceVariant,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: _getStatusColor(appointment.status).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              appointment.status.name,
              style: AppTypography.labelSmall(
                color: _getStatusColor(appointment.status),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(AppointmentStatus status) {
    switch (status) {
      case AppointmentStatus.scheduled:
        return AppColors.info;
      case AppointmentStatus.confirmed:
        return AppColors.primary;
      case AppointmentStatus.checkedIn:
        return AppColors.warning;
      case AppointmentStatus.inProgress:
        return AppColors.success;
      case AppointmentStatus.completed:
        return AppColors.stable;
      case AppointmentStatus.cancelled:
        return AppColors.critical;
      case AppointmentStatus.noShow:
        return AppColors.critical;
    }
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
