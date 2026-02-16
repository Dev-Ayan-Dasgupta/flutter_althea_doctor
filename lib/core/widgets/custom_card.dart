import 'package:flutter/material.dart';
import '../theme/color_palette.dart';
import '../utils/responsive.dart';

/// Custom card widget with Apple-like design
class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final Color? color;
  final Gradient? gradient;
  final double? elevation;
  final BorderRadius? borderRadius;
  final Border? border;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const CustomCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.color,
    this.gradient,
    this.elevation,
    this.borderRadius,
    this.border,
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Responsive padding
    final effectivePadding =
        padding ??
        (Responsive.isMobile(context)
            ? const EdgeInsets.all(16)
            : const EdgeInsets.all(20));

    final effectiveMargin =
        margin ??
        (Responsive.isMobile(context)
            ? const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
            : const EdgeInsets.symmetric(horizontal: 20, vertical: 10));

    final effectiveBorderRadius = borderRadius ?? BorderRadius.circular(16);

    final effectiveColor =
        color ?? (isDark ? AppColors.darkSurface : AppColors.lightSurface);

    final effectiveElevation = elevation ?? 2;

    final shadowColor = isDark ? AppColors.darkShadow : AppColors.lightShadow;

    Widget cardContent = Container(
      width: width,
      height: height,
      padding: effectivePadding,
      decoration: BoxDecoration(
        color: gradient == null ? effectiveColor : null,
        gradient: gradient,
        borderRadius: effectiveBorderRadius,
        border: border,
        boxShadow: effectiveElevation > 0
            ? [
                BoxShadow(
                  color: shadowColor,
                  blurRadius: effectiveElevation * 4,
                  offset: Offset(0, effectiveElevation),
                  spreadRadius: 0,
                ),
              ]
            : null,
      ),
      child: child,
    );

    // Add interaction if onTap or onLongPress is provided
    if (onTap != null || onLongPress != null) {
      cardContent = Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          onLongPress: onLongPress,
          borderRadius: effectiveBorderRadius,
          child: cardContent,
        ),
      );
    }

    return Padding(padding: effectiveMargin, child: cardContent);
  }
}

/// Card with surface gradient for subtle depth
class SurfaceCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;

  const SurfaceCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return CustomCard(
      padding: padding,
      margin: margin,
      onTap: onTap,
      gradient: isDark
          ? AppGradients.darkSurfaceGradient
          : AppGradients.lightSurfaceGradient,
      child: child,
    );
  }
}

/// Card with status-based gradient (for alerts/notifications)
class StatusCard extends StatelessWidget {
  final Widget child;
  final String status; // 'critical', 'warning', 'success', 'stable'
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;

  const StatusCard({
    super.key,
    required this.child,
    required this.status,
    this.padding,
    this.margin,
    this.onTap,
  });

  Gradient _getGradient() {
    switch (status.toLowerCase()) {
      case 'critical':
        return AppGradients.criticalGradient;
      case 'warning':
        return AppGradients.warningGradient;
      case 'success':
        return AppGradients.successGradient;
      case 'stable':
        return AppGradients.stableGradient;
      default:
        return AppGradients.primaryGradient;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: padding,
      margin: margin,
      onTap: onTap,
      gradient: _getGradient(),
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.white),
        child: IconTheme(
          data: const IconThemeData(color: Colors.white),
          child: child,
        ),
      ),
    );
  }
}
