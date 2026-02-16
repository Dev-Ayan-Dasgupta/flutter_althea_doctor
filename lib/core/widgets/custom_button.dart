import 'package:flutter/material.dart';
import '../theme/color_palette.dart';
import '../theme/typography.dart';
import 'gradient_container.dart';

/// Button variants
enum ButtonVariant { primary, secondary, outlined, text, gradient }

/// Button sizes
enum ButtonSize { small, medium, large }

/// Custom button widget with Apple-like design
class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final ButtonSize size;
  final Widget? icon;
  final bool isLoading;
  final bool isExpanded;
  final Gradient? gradient;

  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant = ButtonVariant.primary,
    this.size = ButtonSize.medium,
    this.icon,
    this.isLoading = false,
    this.isExpanded = false,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Size configurations
    final double height;
    final EdgeInsets padding;
    final TextStyle textStyle;

    switch (size) {
      case ButtonSize.small:
        height = 36;
        padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
        textStyle = AppTypography.labelMedium();
        break;
      case ButtonSize.medium:
        height = 48;
        padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
        textStyle = AppTypography.labelLarge();
        break;
      case ButtonSize.large:
        height = 56;
        padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 16);
        textStyle = AppTypography.titleMedium();
        break;
    }

    Widget child = isLoading
        ? SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                variant == ButtonVariant.primary ||
                        variant == ButtonVariant.gradient
                    ? Colors.white
                    : theme.colorScheme.primary,
              ),
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[icon!, const SizedBox(width: 8)],
              Text(label, style: textStyle),
            ],
          );

    // Gradient variant
    if (variant == ButtonVariant.gradient) {
      return GradientContainer(
        height: height,
        width: isExpanded ? double.infinity : null,
        gradient: gradient ?? AppGradients.primaryGradient,
        borderRadius: BorderRadius.circular(12),
        padding: padding,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: isLoading ? null : onPressed,
            borderRadius: BorderRadius.circular(12),
            child: Center(
              child: DefaultTextStyle(
                style: textStyle.copyWith(color: Colors.white),
                child: child,
              ),
            ),
          ),
        ),
      );
    }

    // Primary variant
    if (variant == ButtonVariant.primary) {
      return SizedBox(
        height: height,
        width: isExpanded ? double.infinity : null,
        child: FilledButton(
          onPressed: isLoading ? null : onPressed,
          style: FilledButton.styleFrom(
            backgroundColor: theme.colorScheme.primary,
            foregroundColor: Colors.white,
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
          ),
          child: child,
        ),
      );
    }

    // Secondary variant
    if (variant == ButtonVariant.secondary) {
      return SizedBox(
        height: height,
        width: isExpanded ? double.infinity : null,
        child: FilledButton(
          onPressed: isLoading ? null : onPressed,
          style: FilledButton.styleFrom(
            backgroundColor: isDark
                ? AppColors.darkSurfaceVariant
                : AppColors.lightSurfaceVariant,
            foregroundColor: theme.colorScheme.onSurface,
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
          ),
          child: child,
        ),
      );
    }

    // Outlined variant
    if (variant == ButtonVariant.outlined) {
      return SizedBox(
        height: height,
        width: isExpanded ? double.infinity : null,
        child: OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
            padding: padding,
            side: BorderSide(color: theme.colorScheme.outline, width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: child,
        ),
      );
    }

    // Text variant
    return SizedBox(
      height: height,
      width: isExpanded ? double.infinity : null,
      child: TextButton(
        onPressed: isLoading ? null : onPressed,
        style: TextButton.styleFrom(
          foregroundColor: theme.colorScheme.primary,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child,
      ),
    );
  }
}
