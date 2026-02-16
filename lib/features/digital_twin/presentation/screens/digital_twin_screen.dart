import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../risk_watch/presentation/widgets/csi_badge.dart';
import '../state/digital_twin_notifier.dart';
import '../widgets/blood_pressure_chart.dart';
import '../widgets/vitals_chart.dart';
import '../widgets/caregiver_notes_list.dart';

class DigitalTwinScreen extends ConsumerWidget {
  final String patientId;

  const DigitalTwinScreen({super.key, required this.patientId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(digitalTwinProvider(patientId));
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isMobile = Responsive.isMobile(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Digital Twin'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(digitalTwinProvider(patientId).notifier).refresh();
            },
          ),
        ],
      ),
      body: _buildBody(context, ref, state, isDark, isMobile),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    DigitalTwinState state,
    bool isDark,
    bool isMobile,
  ) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: AppColors.critical,
            ),
            const SizedBox(height: 16),
            Text('Error', style: AppTypography.titleLarge()),
            const SizedBox(height: 8),
            Text(
              state.error!,
              style: AppTypography.bodyMedium(
                color: isDark
                    ? AppColors.darkOnSurfaceVariant
                    : AppColors.lightOnSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Retry',
              onPressed: () {
                ref.read(digitalTwinProvider(patientId).notifier).refresh();
              },
              variant: ButtonVariant.primary,
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      );
    }

    if (state.patient == null || state.timeline == null) {
      return const Center(child: Text('No data available'));
    }

    return Column(
      children: [
        // Patient header
        _buildPatientHeader(context, state, isDark, isMobile),

        // Tab bar
        _buildTabBar(context, ref, state, isDark),

        // Content
        Expanded(child: _buildTabContent(context, state, isDark)),
      ],
    );
  }

  Widget _buildPatientHeader(
    BuildContext context,
    DigitalTwinState state,
    bool isDark,
    bool isMobile,
  ) {
    final patient = state.patient!;

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
          // Avatar
          CircleAvatar(
            radius: isMobile ? 30 : 40,
            backgroundColor: AppColors.primary,
            child: Text(
              patient.initials,
              style: AppTypography.titleLarge(color: Colors.white),
            ),
          ),

          const SizedBox(width: 16),

          // Patient info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  patient.name,
                  style: isMobile
                      ? AppTypography.titleLarge()
                      : AppTypography.headlineSmall(),
                ),
                const SizedBox(height: 4),
                Text(
                  '${patient.age}y • ${patient.gender.toUpperCase()} • Room ${patient.roomNumber ?? 'N/A'}',
                  style: AppTypography.bodyMedium(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  patient.facilityName ?? 'Unknown facility',
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),

          // CSI Badge
          CSIBadge(csi: patient.csi, size: isMobile ? 50 : 60),
        ],
      ),
    );
  }

  Widget _buildTabBar(
    BuildContext context,
    WidgetRef ref,
    DigitalTwinState state,
    bool isDark,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        border: Border(
          bottom: BorderSide(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ),
      ),
      child: TabBar(
        isScrollable: true,
        tabs: const [
          Tab(text: 'Blood Pressure', icon: Icon(Icons.favorite, size: 20)),
          Tab(text: 'Heart Rate', icon: Icon(Icons.monitor_heart, size: 20)),
          Tab(text: 'SpO2', icon: Icon(Icons.air, size: 20)),
          Tab(text: 'Glucose', icon: Icon(Icons.water_drop, size: 20)),
          Tab(text: 'Notes', icon: Icon(Icons.note, size: 20)),
        ],
        onTap: (index) {
          ref.read(digitalTwinProvider(patientId).notifier).selectTab(index);
        },
      ),
    );
  }

  Widget _buildTabContent(
    BuildContext context,
    DigitalTwinState state,
    bool isDark,
  ) {
    final timeline = state.timeline!;

    return TabBarView(
      children: [
        // Blood Pressure
        SingleChildScrollView(
          child: BloodPressureChart(
            dataPoints: timeline.bloodPressure,
            medicationMarkers: timeline.medications,
            baseline: timeline.bpBaseline,
          ),
        ),

        // Heart Rate
        SingleChildScrollView(
          child: VitalsChart(
            title: 'Heart Rate',
            dataPoints: timeline.heartRate,
            medicationMarkers: timeline.medications,
            baseline: timeline.hrBaseline,
            lineColor: AppColors.critical,
            unit: 'bpm',
            minY: 40,
            maxY: 140,
          ),
        ),

        // SpO2
        SingleChildScrollView(
          child: VitalsChart(
            title: 'Oxygen Saturation (SpO2)',
            dataPoints: timeline.spO2,
            baseline: timeline.spO2Baseline,
            lineColor: AppColors.info,
            unit: '%',
            minY: 85,
            maxY: 100,
          ),
        ),

        // Glucose
        SingleChildScrollView(
          child: VitalsChart(
            title: 'Blood Glucose',
            dataPoints: timeline.glucose,
            baseline: timeline.glucoseBaseline,
            lineColor: AppColors.warning,
            unit: 'mg/dL',
            minY: 60,
            maxY: 300,
          ),
        ),

        // Caregiver Notes
        CaregiverNotesList(notes: timeline.notes),
      ],
    );
  }
}
