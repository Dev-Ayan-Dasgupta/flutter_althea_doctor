import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/custom_button.dart';
import '../state/scribe_notifier.dart';

class RecordingScreen extends ConsumerStatefulWidget {
  const RecordingScreen({super.key});

  @override
  ConsumerState<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends ConsumerState<RecordingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _pulseController;
  Timer? _timer;
  int _secondsElapsed = 0;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();

    _startRecording();
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _startRecording() async {
    await ref
        .read(ambientScribeProvider.notifier)
        .startRecording('consultation-temp');

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _secondsElapsed++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ambientScribeProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => _showCancelDialog(),
                  ),
                  const Spacer(),
                  Text(
                    'Recording',
                    style: AppTypography.titleLarge(color: Colors.white),
                  ),
                  const Spacer(),
                  const SizedBox(width: 48), // Balance
                ],
              ),
            ),

            const Spacer(),

            // Animated recording indicator
            AnimatedBuilder(
              animation: _pulseController,
              builder: (context, child) {
                return Container(
                  width: 200 + (50 * _pulseController.value),
                  height: 200 + (50 * _pulseController.value),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        AppColors.critical.withValues(
                          alpha: 0.3 * (1 - _pulseController.value),
                        ),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: AppGradients.criticalGradient,
                      ),
                      child: const Icon(
                        Icons.mic,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 32),

            // Duration
            Text(
              _formatDuration(_secondsElapsed),
              style: AppTypography.displaySmall(
                color: Colors.white,
              ).copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(
              'Listening...',
              style: AppTypography.titleMedium(color: Colors.white70),
            ),

            const Spacer(),

            // Info text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Speak clearly. The AI is transcribing and analyzing the conversation in real-time.',
                style: AppTypography.bodyMedium(color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 32),

            // Stop button
            Padding(
              padding: const EdgeInsets.all(24),
              child: CustomButton(
                label: state.isTranscribing
                    ? 'Processing...'
                    : 'Stop & Generate Note',
                onPressed: state.isTranscribing ? null : _stopRecording,
                variant: ButtonVariant.primary,
                size: ButtonSize.large,
                isExpanded: true,
                icon: state.isTranscribing
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ),
                      )
                    : const Icon(Icons.stop),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  Future<void> _stopRecording() async {
    _timer?.cancel();
    _pulseController.stop();

    await ref
        .read(ambientScribeProvider.notifier)
        .stopRecordingAndTranscribe('consultation-temp');

    // Wait for transcription
    await Future.delayed(const Duration(seconds: 1));

    // Generate note
    await ref
        .read(ambientScribeProvider.notifier)
        .generateNoteFromTranscript(
          consultationId: 'consultation-temp',
          patientId: 'patient-temp',
          patientName: 'Test Patient',
        );

    if (mounted) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Clinical note generated successfully'),
          backgroundColor: AppColors.success,
        ),
      );
    }
  }

  Future<void> _showCancelDialog() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Cancel Recording', style: AppTypography.titleLarge()),
        content: Text(
          'Are you sure you want to cancel this recording? All data will be lost.',
          style: AppTypography.bodyMedium(),
        ),
        actions: [
          CustomButton(
            label: 'Continue Recording',
            onPressed: () => Navigator.pop(context, false),
            variant: ButtonVariant.outlined,
          ),
          CustomButton(
            label: 'Cancel Recording',
            onPressed: () => Navigator.pop(context, true),
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );

    if (confirm == true && mounted) {
      _timer?.cancel();
      Navigator.pop(context);
    }
  }
}
