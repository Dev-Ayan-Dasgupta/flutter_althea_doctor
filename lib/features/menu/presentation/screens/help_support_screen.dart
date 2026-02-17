import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/faq_expansion_tile.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(title: const Text('Help & Support')),
      body: ListView(
        padding: Responsive.padding(context),
        children: [
          const SizedBox(height: 20),

          // Emergency Contact Banner
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.critical.withValues(alpha: 0.1),
                  AppColors.warning.withValues(alpha: 0.1),
                ],
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.critical.withValues(alpha: 0.3),
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Icon(Icons.support_agent, size: 48, color: AppColors.critical),
                const SizedBox(height: 12),
                Text(
                  'Need Immediate Help?',
                  style: AppTypography.titleLarge(color: AppColors.critical),
                ),
                const SizedBox(height: 8),
                Text(
                  'Our support team is available 24/7',
                  style: AppTypography.bodyMedium(),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        label: 'Call Support',
                        onPressed: () => _makePhoneCall('+91-1800-123-4567'),
                        variant: ButtonVariant.primary,
                        icon: const Icon(Icons.phone),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: CustomButton(
                        label: 'Email Us',
                        onPressed: () => _sendEmail('support@altheacare.com'),
                        variant: ButtonVariant.outlined,
                        icon: const Icon(Icons.email),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),

          // Contact Methods
          Text('Contact Us', style: AppTypography.titleLarge()),
          const SizedBox(height: 16),

          _buildContactCard(
            context,
            Icons.phone,
            'Phone Support',
            '+91-1800-123-4567',
            'Available 24/7',
            () => _makePhoneCall('+91-1800-123-4567'),
            isDark,
          ),
          const SizedBox(height: 12),

          _buildContactCard(
            context,
            Icons.email,
            'Email Support',
            'support@altheacare.com',
            'Response within 24 hours',
            () => _sendEmail('support@altheacare.com'),
            isDark,
          ),
          const SizedBox(height: 12),

          _buildContactCard(
            context,
            Icons.chat,
            'Live Chat',
            'Chat with our team',
            'Available Mon-Fri, 9 AM - 6 PM',
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Live chat coming soon')),
              );
            },
            isDark,
          ),

          const SizedBox(height: 32),

          // FAQ Section
          Text('Frequently Asked Questions', style: AppTypography.titleLarge()),
          const SizedBox(height: 16),

          const FaqExpansionTile(
            question: 'How do I reset my password?',
            answer:
                'You can reset your password by going to Settings > Privacy & Security > Change Password. You will receive a verification code on your registered email.',
          ),

          const FaqExpansionTile(
            question: 'How do I add a new patient?',
            answer:
                'Navigate to Risk Watch and tap the "+" button. Fill in the patient details and initial vitals to create a new patient profile.',
          ),

          const FaqExpansionTile(
            question: 'Can I access patient data offline?',
            answer:
                'Yes, patient data is cached locally for offline access. However, real-time updates require an internet connection. Enable Offline Mode in Settings for better offline experience.',
          ),

          const FaqExpansionTile(
            question: 'How does the AI clinical documentation work?',
            answer:
                'The Ambient Scribe uses speech-to-text technology to transcribe consultations. It then uses AI to generate SOAP notes, extract diagnoses, and suggest ICD codes automatically.',
          ),

          const FaqExpansionTile(
            question: 'Is my patient data secure?',
            answer:
                'Yes, AltheaCare is HIPAA-compliant. All data is encrypted in transit and at rest. We follow industry-standard security practices to protect patient information.',
          ),

          const FaqExpansionTile(
            question: 'How do I schedule a video consultation?',
            answer:
                'Go to Telepresence > Schedule. Select the patient, date, and time. The patient will receive a notification 30 minutes before the consultation.',
          ),

          const FaqExpansionTile(
            question: 'Can I export patient data?',
            answer:
                'Yes, you can export patient data in PDF or CSV format. Go to Settings > Data & Privacy > Download My Data.',
          ),

          const FaqExpansionTile(
            question: 'How do I enable biometric login?',
            answer:
                'Go to Settings > Privacy & Security > Biometric Login. Toggle it on and authenticate with your fingerprint or face ID.',
          ),

          const SizedBox(height: 32),

          // Additional Resources
          Text('Additional Resources', style: AppTypography.titleLarge()),
          const SizedBox(height: 16),

          _buildResourceCard(
            context,
            Icons.video_library,
            'Video Tutorials',
            'Watch step-by-step guides',
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Video tutorials coming soon')),
              );
            },
            isDark,
          ),
          const SizedBox(height: 12),

          _buildResourceCard(
            context,
            Icons.description,
            'User Manual',
            'Download comprehensive guide',
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('User manual coming soon')),
              );
            },
            isDark,
          ),
          const SizedBox(height: 12),

          _buildResourceCard(
            context,
            Icons.forum,
            'Community Forum',
            'Connect with other healthcare professionals',
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Community forum coming soon')),
              );
            },
            isDark,
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildContactCard(
    BuildContext context,
    IconData icon,
    String title,
    String value,
    String subtitle,
    VoidCallback onTap,
    bool isDark,
  ) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: AppColors.primary, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTypography.titleSmall()),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: AppTypography.bodyMedium(color: AppColors.primary),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: AppTypography.bodySmall(
                      color: isDark
                          ? AppColors.darkOnSurfaceVariant
                          : AppColors.lightOnSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResourceCard(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap,
    bool isDark,
  ) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.info, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTypography.titleSmall()),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: AppTypography.bodySmall(
                      color: isDark
                          ? AppColors.darkOnSurfaceVariant
                          : AppColors.lightOnSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final uri = Uri.parse('tel:$phoneNumber');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Future<void> _sendEmail(String email) async {
    final uri = Uri.parse('mailto:$email?subject=AltheaCare Support Request');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
