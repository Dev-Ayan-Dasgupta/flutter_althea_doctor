import 'package:flutter/material.dart';
import '../theme/color_palette.dart';
import '../theme/typography.dart';
import '../utils/responsive.dart';

/// Custom list item replacing Flutter's ListTile
class CustomListItem extends StatelessWidget {
  final Widget? leading;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Gradient? gradient;
  final bool showDivider;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  const CustomListItem({
    super.key,
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.onLongPress,
    this.padding,
    this.backgroundColor,
    this.gradient,
    this.showDivider = true,
    this.titleStyle,
    this.subtitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Responsive padding
    final effectivePadding =
        padding ??
        (Responsive.isMobile(context)
            ? const EdgeInsets.symmetric(horizontal: 16, vertical: 12)
            : const EdgeInsets.symmetric(horizontal: 20, vertical: 16));

    final effectiveTitleStyle =
        titleStyle ??
        AppTypography.titleMedium(color: theme.colorScheme.onSurface);

    final effectiveSubtitleStyle =
        subtitleStyle ??
        AppTypography.bodyMedium(
          color: isDark
              ? AppColors.darkOnSurfaceVariant
              : AppColors.lightOnSurfaceVariant,
        );

    Widget content = Padding(
      padding: effectivePadding,
      child: Row(
        children: [
          // Leading widget
          if (leading != null) ...[leading!, const SizedBox(width: 16)],

          // Title and subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: effectiveTitleStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle!,
                    style: effectiveSubtitleStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),

          // Trailing widget
          if (trailing != null) ...[const SizedBox(width: 16), trailing!],
        ],
      ),
    );

    // Wrap with gradient if provided
    if (gradient != null) {
      content = Container(
        decoration: BoxDecoration(gradient: gradient),
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: IconTheme(
            data: const IconThemeData(color: Colors.white),
            child: content,
          ),
        ),
      );
    } else if (backgroundColor != null) {
      content = Container(color: backgroundColor, child: content);
    }

    // Add interaction
    if (onTap != null || onLongPress != null) {
      content = Material(
        color: Colors.transparent,
        child: InkWell(onTap: onTap, onLongPress: onLongPress, child: content),
      );
    }

    // Add divider
    if (showDivider) {
      content = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          content,
          Divider(
            height: 1,
            thickness: 1,
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ],
      );
    }

    return content;
  }
}

/// List item with status indicator (for patient lists)
class StatusListItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String status; // 'critical', 'warning', 'success', 'stable'
  final Widget? trailing;
  final VoidCallback? onTap;

  const StatusListItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.status,
    this.trailing,
    this.onTap,
  });

  Color _getStatusColor() {
    switch (status.toLowerCase()) {
      case 'critical':
        return AppColors.critical;
      case 'warning':
        return AppColors.warning;
      case 'success':
        return AppColors.success;
      case 'stable':
        return AppColors.stable;
      default:
        return AppColors.info;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomListItem(
      leading: Container(
        width: 4,
        height: 48,
        decoration: BoxDecoration(
          color: _getStatusColor(),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
    );
  }
}

/// List item with avatar (for patient/doctor lists)
class AvatarListItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? avatarUrl;
  final String? initials;
  final Widget? trailing;
  final VoidCallback? onTap;

  const AvatarListItem({
    super.key,
    required this.title,
    this.subtitle,
    this.avatarUrl,
    this.initials,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListItem(
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null,
        child: avatarUrl == null && initials != null
            ? Text(
                initials!,
                style: AppTypography.titleMedium(color: Colors.white),
              )
            : null,
      ),
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
