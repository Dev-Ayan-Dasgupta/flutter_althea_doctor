import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _version = 'Loading...';
  String _buildNumber = 'Loading...';

  @override
  void initState() {
    super.initState();
    _loadAppInfo();
  }

  Future<void> _loadAppInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _version = packageInfo.version;
      _buildNumber = packageInfo.buildNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isMobile = Responsive.isMobile(context);

    return Scaffold(
      appBar: AppBar(title: const Text('About AltheaCare')),
      body: SingleChildScrollView(
        padding: Responsive.padding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            // App Logo
            Container(
              width: isMobile ? 120 : 150,
              height: isMobile ? 120 : 150,
              decoration: BoxDecoration(
                gradient: AppGradients.primaryGradient,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.favorite,
                  size: isMobile ? 60 : 80,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // App Name
            Text(
              'AltheaCare',
              style:
                  (isMobile
                          ? AppTypography.displaySmall()
                          : AppTypography.displayMedium())
                      .copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
            ),

            const SizedBox(height: 8),

            // Tagline
            Text(
              'AI-Powered Geriatric Care Platform',
              style: AppTypography.titleMedium(
                color: isDark
                    ? AppColors.darkOnSurfaceVariant
                    : AppColors.lightOnSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 32),

            // About Description
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: isDark
                      ? AppColors.darkDivider
                      : AppColors.lightDivider,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Us', style: AppTypography.titleLarge()),
                  const SizedBox(height: 12),
                  Text(
                    'AltheaCare is a comprehensive healthcare platform designed to revolutionize geriatric care through artificial intelligence and digital innovation.',
                    style: AppTypography.bodyMedium(),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Our platform empowers healthcare professionals with:',
                    style: AppTypography.bodyMedium(),
                  ),
                  const SizedBox(height: 8),
                  ...[
                    '🎯 Real-time patient risk monitoring',
                    '📊 AI-powered clinical insights',
                    '🎥 Integrated telepresence',
                    '📝 Automated clinical documentation',
                    '💊 Smart prescription management',
                    '👥 Collaborative care coordination',
                  ].map(
                    (feature) => Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(feature, style: AppTypography.bodyMedium()),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Mission & Vision
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primaryLight.withValues(alpha: 0.1),
                    AppColors.primaryDark.withValues(alpha: 0.1),
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.primary.withValues(alpha: 0.3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.lightbulb, color: AppColors.primary, size: 24),
                      const SizedBox(width: 12),
                      Text(
                        'Our Mission',
                        style: AppTypography.titleMedium(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'To improve the quality of elderly care by providing healthcare professionals with intelligent, data-driven tools that enable proactive, personalized, and compassionate care.',
                    style: AppTypography.bodyMedium(),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Version Information
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isDark
                    ? AppColors.darkSurfaceVariant.withValues(alpha: 0.3)
                    : AppColors.lightSurfaceVariant.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _buildInfoRow('Version', _version, isDark),
                  const SizedBox(height: 8),
                  _buildInfoRow('Build', _buildNumber, isDark),
                  const SizedBox(height: 8),
                  _buildInfoRow('Platform', 'Flutter', isDark),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Made with Love
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Made with ',
                  style: AppTypography.bodyMedium(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
                const Icon(Icons.favorite, color: AppColors.critical, size: 16),
                Text(
                  ' in Kolkata, India',
                  style: AppTypography.bodyMedium(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // Copyright
            Text(
              '© 2024 AltheaCare. All rights reserved.',
              style: AppTypography.bodySmall(
                color: isDark
                    ? AppColors.darkOnSurfaceVariant
                    : AppColors.lightOnSurfaceVariant,
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, bool isDark) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTypography.bodyMedium(
            color: isDark
                ? AppColors.darkOnSurfaceVariant
                : AppColors.lightOnSurfaceVariant,
          ),
        ),
        Text(
          value,
          style: AppTypography.bodyMedium().copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
