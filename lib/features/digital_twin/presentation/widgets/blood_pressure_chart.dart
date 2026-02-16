import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../domain/entities/vitals_timeline.dart';

/// Chart displaying blood pressure (systolic + diastolic)
class BloodPressureChart extends StatelessWidget {
  final List<BloodPressureDataPoint> dataPoints;
  final List<MedicationMarker>? medicationMarkers;
  final VitalBaseline? baseline;

  const BloodPressureChart({
    super.key,
    required this.dataPoints,
    this.medicationMarkers,
    this.baseline,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (dataPoints.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 48,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            const SizedBox(height: 8),
            Text(
              'No blood pressure data available',
              style: AppTypography.bodyMedium(
                color: isDark
                    ? AppColors.darkOnSurfaceVariant
                    : AppColors.lightOnSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Chart title and info
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.favorite, color: AppColors.critical),
                  const SizedBox(width: 8),
                  Text('Blood Pressure', style: AppTypography.titleMedium()),
                ],
              ),
              if (baseline != null) ...[
                const SizedBox(height: 4),
                Text(
                  'Baseline: ${baseline!.mean.toStringAsFixed(0)} mmHg (Systolic)',
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
              const SizedBox(height: 8),
              // Legend
              Row(
                children: [
                  _buildLegendItem('Systolic', AppColors.critical),
                  const SizedBox(width: 16),
                  _buildLegendItem('Diastolic', AppColors.info),
                ],
              ),
            ],
          ),
        ),

        // Chart
        SizedBox(
          height: 220,
          child: Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: LineChart(
              LineChartData(
                minY: 40,
                maxY: 200,
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 20,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color:
                          (isDark
                                  ? AppColors.darkDivider
                                  : AppColors.lightDivider)
                              .withOpacity(0.3),
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      interval: 40,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toInt().toString(),
                          style: AppTypography.labelSmall(
                            color: isDark
                                ? AppColors.darkOnSurfaceVariant
                                : AppColors.lightOnSurfaceVariant,
                          ),
                        );
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      interval: 24,
                      getTitlesWidget: (value, meta) {
                        final timestamp = DateTime.fromMillisecondsSinceEpoch(
                          (value * 3600000).toInt(),
                        );
                        return Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            '${timestamp.month}/${timestamp.day}',
                            style: AppTypography.labelSmall(
                              color: isDark
                                  ? AppColors.darkOnSurfaceVariant
                                  : AppColors.lightOnSurfaceVariant,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  // Systolic line
                  LineChartBarData(
                    spots: dataPoints
                        .map(
                          (point) =>
                              FlSpot(point.hoursSinceEpoch, point.systolic),
                        )
                        .toList(),
                    isCurved: true,
                    color: AppColors.critical,
                    barWidth: 3,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        final point = dataPoints[index];
                        return FlDotCirclePainter(
                          radius: point.isAbnormal == true ? 6 : 4,
                          color: point.isAbnormal == true
                              ? AppColors.warning
                              : AppColors.critical,
                          strokeWidth: 2,
                          strokeColor: Colors.white,
                        );
                      },
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      color: AppColors.critical.withOpacity(0.1),
                    ),
                  ),

                  // Diastolic line
                  LineChartBarData(
                    spots: dataPoints
                        .map(
                          (point) =>
                              FlSpot(point.hoursSinceEpoch, point.diastolic),
                        )
                        .toList(),
                    isCurved: true,
                    color: AppColors.info,
                    barWidth: 3,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        return FlDotCirclePainter(
                          radius: 4,
                          color: AppColors.info,
                          strokeWidth: 2,
                          strokeColor: Colors.white,
                        );
                      },
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      color: AppColors.info.withOpacity(0.05),
                    ),
                  ),

                  // Baseline line (systolic)
                  if (baseline != null)
                    LineChartBarData(
                      spots: dataPoints.length >= 2
                          ? [
                              FlSpot(
                                dataPoints.first.hoursSinceEpoch,
                                baseline!.mean,
                              ),
                              FlSpot(
                                dataPoints.last.hoursSinceEpoch,
                                baseline!.mean,
                              ),
                            ]
                          : [],
                      isCurved: false,
                      color: AppColors.success.withOpacity(0.5),
                      barWidth: 2,
                      dashArray: [5, 5],
                      dotData: const FlDotData(show: false),
                    ),
                ],
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((spot) {
                        if (spot.barIndex == 0) {
                          // Systolic
                          final point = dataPoints[spot.spotIndex];
                          return LineTooltipItem(
                            'BP: ${point.systolic.toInt()}/${point.diastolic.toInt()} mmHg\n${_formatTime(point.timestamp)}',
                            AppTypography.labelSmall(color: Colors.white),
                          );
                        }
                        return null;
                      }).toList();
                    },
                  ),
                ),
                extraLinesData: ExtraLinesData(
                  horizontalLines: [
                    // Critical thresholds
                    HorizontalLine(
                      y: 180,
                      color: AppColors.critical.withOpacity(0.3),
                      strokeWidth: 1,
                      dashArray: [5, 5],
                      label: HorizontalLineLabel(
                        show: true,
                        alignment: Alignment.topRight,
                        style: AppTypography.labelSmall(
                          color: AppColors.critical,
                        ),
                        labelResolver: (line) => 'Critical High',
                      ),
                    ),
                    HorizontalLine(
                      y: 90,
                      color: AppColors.warning.withOpacity(0.3),
                      strokeWidth: 1,
                      dashArray: [5, 5],
                      label: HorizontalLineLabel(
                        show: true,
                        alignment: Alignment.bottomRight,
                        style: AppTypography.labelSmall(
                          color: AppColors.warning,
                        ),
                        labelResolver: (line) => 'Critical Low',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        // Medication markers
        if (medicationMarkers != null && medicationMarkers!.isNotEmpty)
          _buildMedicationMarkers(medicationMarkers!, isDark),
      ],
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 16,
          height: 3,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 6),
        Text(label, style: AppTypography.labelSmall()),
      ],
    );
  }

  Widget _buildMedicationMarkers(List<MedicationMarker> markers, bool isDark) {
    // Group medications by name
    final medGroups = <String, List<MedicationMarker>>{};
    for (final marker in markers) {
      medGroups.putIfAbsent(marker.medicationName, () => []).add(marker);
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Medications', style: AppTypography.titleSmall()),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: medGroups.entries.map((entry) {
              final adherenceRate =
                  entry.value.where((m) => m.administered).length /
                  entry.value.length;

              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color:
                      (isDark
                              ? AppColors.darkSurfaceVariant
                              : AppColors.lightSurfaceVariant)
                          .withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: adherenceRate >= 0.8
                        ? AppColors.success
                        : AppColors.warning,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.medication,
                      size: 16,
                      color: adherenceRate >= 0.8
                          ? AppColors.success
                          : AppColors.warning,
                    ),
                    const SizedBox(width: 6),
                    Text(entry.key, style: AppTypography.labelSmall()),
                    const SizedBox(width: 4),
                    Text(
                      '${(adherenceRate * 100).toInt()}%',
                      style: AppTypography.labelSmall(
                        color: adherenceRate >= 0.8
                            ? AppColors.success
                            : AppColors.warning,
                      ).copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime time) {
    return '${time.month}/${time.day} ${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
