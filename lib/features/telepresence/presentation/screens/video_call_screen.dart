import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../domain/entities/consultation.dart';
import '../state/telepresence_notifier.dart';

class VideoCallScreen extends ConsumerStatefulWidget {
  final Consultation consultation;

  const VideoCallScreen({super.key, required this.consultation});

  @override
  ConsumerState<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends ConsumerState<VideoCallScreen> {
  bool _isMuted = false;
  bool _isVideoOff = false;
  bool _isSpeakerOn = true;
  bool _isScreenSharing = false;
  final _notesController = TextEditingController();

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(telepresenceProvider('doc-001'));

    return WillPopScope(
      onWillPop: () async {
        final shouldEnd = await _showEndCallDialog();
        return shouldEnd ?? false;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              // Video grid (placeholder)
              _buildVideoGrid(context, state),

              // Top bar
              _buildTopBar(context),

              // Bottom controls
              _buildBottomControls(context),

              // Participants sidebar (if needed)
              if (state.participants.length > 2)
                _buildParticipantsSidebar(context, state),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideoGrid(BuildContext context, TelepresenceState state) {
    // Placeholder for WebRTC video streams
    // In production, this would render actual video tracks
    return Column(
      children: [
        // Main video (remote participant)
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.grey[900],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: AppColors.primary,
                    child: Text(
                      widget.consultation.patientName[0].toUpperCase(),
                      style: AppTypography.displaySmall(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.consultation.patientName,
                    style: AppTypography.titleLarge(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.success.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: AppColors.success,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Connected',
                          style: AppTypography.labelMedium(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    '🎥 WebRTC Video Stream Placeholder',
                    style: AppTypography.bodySmall(color: Colors.white70),
                  ),
                  Text(
                    'Production: Integrate with agora_rtc_engine or flutter_webrtc',
                    style: AppTypography.bodySmall(color: Colors.white54),
                  ),
                ],
              ),
            ),
          ),
        ),

        // Self video (local participant - picture-in-picture)
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.primary, width: 2),
            ),
            child: Stack(
              children: [
                Center(
                  child: _isVideoOff
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.videocam_off,
                              color: Colors.white70,
                              size: 32,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Camera Off',
                              style: AppTypography.bodySmall(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        )
                      : CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.primary,
                          child: Text(
                            'You',
                            style: AppTypography.labelMedium(
                              color: Colors.white,
                            ),
                          ),
                        ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'You',
                      style: AppTypography.labelSmall(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black.withOpacity(0.7), Colors.transparent],
          ),
        ),
        child: Row(
          children: [
            // Back button
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () async {
                final shouldEnd = await _showEndCallDialog();
                if (shouldEnd == true && context.mounted) {
                  Navigator.pop(context);
                }
              },
            ),

            const SizedBox(width: 16),

            // Call info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.consultation.patientName,
                    style: AppTypography.titleMedium(color: Colors.white),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    _getCallDuration(),
                    style: AppTypography.bodySmall(color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Recording indicator
            if (widget.consultation.recordingEnabled == true)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.critical.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.critical, width: 1),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: AppColors.critical,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'REC',
                      style: AppTypography.labelSmall(
                        color: Colors.white,
                      ).copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomControls(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.black.withOpacity(0.8), Colors.transparent],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Mute/Unmute
            _buildControlButton(
              icon: _isMuted ? Icons.mic_off : Icons.mic,
              label: _isMuted ? 'Unmute' : 'Mute',
              isActive: !_isMuted,
              onPressed: () {
                setState(() {
                  _isMuted = !_isMuted;
                });
              },
            ),

            // Video on/off
            _buildControlButton(
              icon: _isVideoOff ? Icons.videocam_off : Icons.videocam,
              label: _isVideoOff ? 'Video On' : 'Video Off',
              isActive: !_isVideoOff,
              onPressed: () {
                setState(() {
                  _isVideoOff = !_isVideoOff;
                });
              },
            ),

            // Screen share
            _buildControlButton(
              icon: _isScreenSharing
                  ? Icons.stop_screen_share
                  : Icons.screen_share,
              label: _isScreenSharing ? 'Stop Share' : 'Share',
              isActive: _isScreenSharing,
              onPressed: () {
                setState(() {
                  _isScreenSharing = !_isScreenSharing;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      _isScreenSharing
                          ? 'Screen sharing started'
                          : 'Screen sharing stopped',
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
            ),

            // Speaker
            _buildControlButton(
              icon: _isSpeakerOn ? Icons.volume_up : Icons.volume_off,
              label: _isSpeakerOn ? 'Speaker' : 'Speaker Off',
              isActive: _isSpeakerOn,
              onPressed: () {
                setState(() {
                  _isSpeakerOn = !_isSpeakerOn;
                });
              },
            ),

            // Notes
            _buildControlButton(
              icon: Icons.note_add,
              label: 'Notes',
              isActive: false,
              onPressed: () => _showNotesDialog(context),
            ),

            // End call
            _buildControlButton(
              icon: Icons.call_end,
              label: 'End',
              isActive: false,
              isDestructive: true,
              onPressed: () async {
                final shouldEnd = await _showEndCallDialog();
                if (shouldEnd == true && context.mounted) {
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required String label,
    required bool isActive,
    required VoidCallback onPressed,
    bool isDestructive = false,
  }) {
    final color = isDestructive
        ? AppColors.critical
        : (isActive ? AppColors.primary : Colors.white70);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: isActive
                ? color.withOpacity(0.2)
                : Colors.white.withOpacity(0.1),
            shape: BoxShape.circle,
            border: Border.all(color: color.withOpacity(0.5), width: 2),
          ),
          child: IconButton(
            icon: Icon(icon, color: color),
            onPressed: onPressed,
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: AppTypography.labelSmall(color: Colors.white)),
      ],
    );
  }

  Widget _buildParticipantsSidebar(
    BuildContext context,
    TelepresenceState state,
  ) {
    return Positioned(
      right: 0,
      top: 80,
      bottom: 120,
      child: Container(
        width: 80,
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: state.participants.length,
          itemBuilder: (context, index) {
            final participant = state.participants[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.primary,
                child: Text(
                  participant.name[0].toUpperCase(),
                  style: AppTypography.titleMedium(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showNotesDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Consultation Notes', style: AppTypography.titleLarge()),
        content: TextField(
          controller: _notesController,
          decoration: const InputDecoration(
            hintText: 'Enter consultation notes...',
            border: OutlineInputBorder(),
          ),
          maxLines: 8,
        ),
        actions: [
          CustomButton(
            label: 'Close',
            onPressed: () => Navigator.pop(context),
            variant: ButtonVariant.outlined,
          ),
          CustomButton(
            label: 'Save',
            onPressed: () {
              // TODO: Save notes
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Notes saved'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );
  }

  Future<bool?> _showEndCallDialog() async {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('End Consultation', style: AppTypography.titleLarge()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Are you sure you want to end this consultation?',
              style: AppTypography.bodyMedium(),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _notesController,
              decoration: const InputDecoration(
                labelText: 'Consultation Summary (Optional)',
                hintText: 'Enter notes...',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          CustomButton(
            label: 'Continue Call',
            onPressed: () => Navigator.pop(context, false),
            variant: ButtonVariant.outlined,
          ),
          CustomButton(
            label: 'End Call',
            onPressed: () async {
              // End consultation
              await ref
                  .read(telepresenceProvider('doc-001').notifier)
                  .endConsultation(
                    widget.consultation.id,
                    _notesController.text.isNotEmpty
                        ? _notesController.text
                        : null,
                  );

              if (context.mounted) {
                Navigator.pop(context, true);
              }
            },
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );
  }

  String _getCallDuration() {
    if (widget.consultation.startedAt == null) {
      return 'Connecting...';
    }

    final duration = DateTime.now().difference(widget.consultation.startedAt!);
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;

    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
