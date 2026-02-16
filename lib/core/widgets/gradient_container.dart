import 'package:flutter/material.dart';
import '../theme/color_palette.dart';

/// Container with gradient background
class GradientContainer extends StatelessWidget {
  final Widget? child;
  final Gradient? gradient;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final Border? border;
  final List<BoxShadow>? boxShadow;

  const GradientContainer({
    super.key,
    this.child,
    this.gradient,
    this.borderRadius,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.alignment,
    this.border,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveGradient = gradient ?? AppGradients.primaryGradient;

    return Container(
      width: width,
      height: height,
      alignment: alignment,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        gradient: effectiveGradient,
        borderRadius: borderRadius ?? BorderRadius.circular(16),
        border: border,
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
