import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../domain/entities/vitals_timeline.dart';

/// Chart displaying vital signs over time
class VitalsChart extends StatelessWidget {
  final String title;
  final List<VitalsDataPoint> dataPoints;
  final List<MedicationMarker>? medicationMarkers;
  final VitalBaseline? baseline;
  final Color lineColor;
  final String unit;
  final double minY;
  final double maxY;

  const VitalsChart({
    super.key,
    required this.title,
    required this.dataPoints,
    this.medicationMarkers,
    this.baseline,
    required this.lineColor,
    required this.unit,
    required this.minY,
    required this.maxY,
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
              Icons.show_chart,
              size: 48,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            const SizedBox(height: 8),
            Text(
              'No data available',
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
        // Chart title and baseline info
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTypography.titleMedium()),
              if (baseline != null) ...[
                const SizedBox(height: 4),
                Text(
                  'Baseline: ${baseline!.mean.toStringAsFixed(1)} $unit (±${baseline!.stdDev.toStringAsFixed(1)})',
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ],
          ),
        ),

        // Chart
        SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: LineChart(
              LineChartData(
                minY: minY,
                maxY: maxY,
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: (maxY - minY) / 4,
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
                      interval: 24, // Every 24 hours
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
                  // Main data line
                  LineChartBarData(
                    spots: dataPoints
                        .map(
                          (point) => FlSpot(point.hoursSinceEpoch, point.value),
                        )
                        .toList(),
                    isCurved: true,
                    color: lineColor,
                    barWidth: 3,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        final point = dataPoints[index];
                        return FlDotCirclePainter(
                          radius: point.isAbnormal == true ? 6 : 4,
                          color: point.isAbnormal == true
                              ? AppColors.critical
                              : lineColor,
                          strokeWidth: 2,
                          strokeColor: Colors.white,
                        );
                      },
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      color: lineColor.withOpacity(0.1),
                    ),
                  ),

                  // Baseline line
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
                      color: AppColors.info.withOpacity(0.5),
                      barWidth: 2,
                      dashArray: [5, 5],
                      dotData: const FlDotData(show: false),
                    ),
                ],
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((spot) {
                        final point = dataPoints[spot.spotIndex];
                        return LineTooltipItem(
                          '${point.value.toStringAsFixed(1)} $unit\n${_formatTime(point.timestamp)}',
                          AppTypography.labelSmall(color: Colors.white),
                        );
                      }).toList();
                    },
                  ),
                ),
              ),
            ),
          ),
        ),

        // Medication markers legend
        if (medicationMarkers != null && medicationMarkers!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: AppColors.success,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  'Medication administered',
                  style: AppTypography.labelSmall(),
                ),
              ],
            ),
          ),
      ],
    );
  }

  String _formatTime(DateTime time) {
    return '${time.month}/${time.day} ${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
