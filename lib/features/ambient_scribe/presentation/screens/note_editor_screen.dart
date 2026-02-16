import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/export.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../domain/entities/clinical_note.dart';
import '../state/scribe_notifier.dart';

class NoteEditorScreen extends ConsumerStatefulWidget {
  final ClinicalNote note;

  const NoteEditorScreen({super.key, required this.note});

  @override
  ConsumerState<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends ConsumerState<NoteEditorScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _subjectiveController;
  late TextEditingController _objectiveController;
  late TextEditingController _assessmentController;
  late TextEditingController _planController;

  bool _hasChanges = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);

    _subjectiveController = TextEditingController(text: widget.note.subjective);
    _objectiveController = TextEditingController(text: widget.note.objective);
    _assessmentController = TextEditingController(text: widget.note.assessment);
    _planController = TextEditingController(text: widget.note.plan);

    _subjectiveController.addListener(_markAsChanged);
    _objectiveController.addListener(_markAsChanged);
    _assessmentController.addListener(_markAsChanged);
    _planController.addListener(_markAsChanged);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _subjectiveController.dispose();
    _objectiveController.dispose();
    _assessmentController.dispose();
    _planController.dispose();
    super.dispose();
  }

  void _markAsChanged() {
    if (!_hasChanges) {
      setState(() {
        _hasChanges = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return WillPopScope(
      onWillPop: () async {
        if (_hasChanges) {
          return await _showUnsavedChangesDialog();
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Clinical Note'),
          actions: [
            if (_hasChanges)
              TextButton(
                onPressed: _saveNote,
                child: Text(
                  'Save',
                  style: AppTypography.labelLarge(color: AppColors.primary),
                ),
              ),
            if (widget.note.isEditable)
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () => _showOptionsMenu(context),
              ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: const [
              Tab(text: 'Subjective'),
              Tab(text: 'Objective'),
              Tab(text: 'Assessment'),
              Tab(text: 'Plan'),
              Tab(text: 'Summary'),
            ],
          ),
        ),
        body: Column(
          children: [
            // Patient info banner
            _buildPatientBanner(isDark),

            // Content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildSectionEditor(
                    'Subjective',
                    _subjectiveController,
                    'Chief complaint, history of present illness, review of systems...',
                    isDark,
                  ),
                  _buildSectionEditor(
                    'Objective',
                    _objectiveController,
                    'Vital signs, physical examination findings...',
                    isDark,
                  ),
                  _buildSectionEditor(
                    'Assessment',
                    _assessmentController,
                    'Diagnosis, differential diagnosis...',
                    isDark,
                  ),
                  _buildSectionEditor(
                    'Plan',
                    _planController,
                    'Treatment plan, medications, follow-up...',
                    isDark,
                  ),
                  _buildSummaryTab(isDark),
                ],
              ),
            ),

            // Footer with metadata
            _buildFooter(isDark),
          ],
        ),
      ),
    );
  }

  Widget _buildPatientBanner(bool isDark) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.info.withValues(alpha: 0.1),
        border: Border(
          bottom: BorderSide(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.primary,
            child: Text(
              widget.note.patientName[0].toUpperCase(),
              style: AppTypography.titleSmall(color: Colors.white),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.note.patientName,
                  style: AppTypography.titleMedium(),
                ),
                Text(
                  'Created: ${widget.note.createdAt.toFormattedDateTime()}',
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: widget.note.isEditable
                  ? AppColors.warning.withValues(alpha: 0.2)
                  : AppColors.success.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              widget.note.isEditable ? 'Editable' : 'Read-Only',
              style: AppTypography.labelSmall(
                color: widget.note.isEditable
                    ? AppColors.warning
                    : AppColors.success,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionEditor(
    String title,
    TextEditingController controller,
    String hint,
    bool isDark,
  ) {
    return SingleChildScrollView(
      padding: Responsive.padding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(title, style: AppTypography.headlineSmall()),
          const SizedBox(height: 8),
          Text(
            hint,
            style: AppTypography.bodySmall(
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: controller,
            enabled: widget.note.isEditable,
            maxLines: null,
            minLines: 15,
            decoration: InputDecoration(
              hintText: 'Enter $title section...',
              border: const OutlineInputBorder(),
            ),
            style: AppTypography.bodyMedium(),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildSummaryTab(bool isDark) {
    return SingleChildScrollView(
      padding: Responsive.padding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),

          // Full SOAP note preview
          Text('Complete SOAP Note', style: AppTypography.headlineSmall()),
          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color:
                  (isDark
                          ? AppColors.darkSurfaceVariant
                          : AppColors.lightSurfaceVariant)
                      .withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
              ),
            ),
            child: SelectableText(
              _getFormattedSOAP(),
              style: AppTypography.bodyMedium(),
            ),
          ),

          const SizedBox(height: 24),

          // Extracted information
          if (widget.note.symptoms != null &&
              widget.note.symptoms!.isNotEmpty) ...[
            Text('Symptoms', style: AppTypography.titleMedium()),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: widget.note.symptoms!
                  .map((s) => _buildChip(s, AppColors.warning, isDark))
                  .toList(),
            ),
            const SizedBox(height: 16),
          ],

          if (widget.note.diagnoses != null &&
              widget.note.diagnoses!.isNotEmpty) ...[
            Text('Diagnoses', style: AppTypography.titleMedium()),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: widget.note.diagnoses!
                  .map((d) => _buildChip(d, AppColors.critical, isDark))
                  .toList(),
            ),
            const SizedBox(height: 16),
          ],

          if (widget.note.medications != null &&
              widget.note.medications!.isNotEmpty) ...[
            Text('Medications', style: AppTypography.titleMedium()),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: widget.note.medications!
                  .map((m) => _buildChip(m, AppColors.info, isDark))
                  .toList(),
            ),
            const SizedBox(height: 16),
          ],

          // Clinical codes
          if (widget.note.icdCodes != null &&
              widget.note.icdCodes!.isNotEmpty) ...[
            Text('ICD-11 Codes', style: AppTypography.titleMedium()),
            const SizedBox(height: 8),
            ...widget.note.icdCodes!.map(
              (code) => _buildCodeCard(code, isDark),
            ),
            const SizedBox(height: 16),
          ],

          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildChip(String label, Color color, bool isDark) {
    return Chip(
      label: Text(label),
      backgroundColor: color.withValues(alpha: 0.1),
      side: BorderSide(color: color.withValues(alpha: 0.3)),
    );
  }

  Widget _buildCodeCard(ClinicalCode code, bool isDark) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color:
            (isDark
                    ? AppColors.darkSurfaceVariant
                    : AppColors.lightSurfaceVariant)
                .withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.success.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.success.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              code.code,
              style: AppTypography.labelMedium(
                color: AppColors.success,
              ).copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(code.description, style: AppTypography.bodyMedium()),
          ),
          if (code.confidence != null)
            Text(
              '${code.confidence}%',
              style: AppTypography.labelSmall(color: AppColors.success),
            ),
        ],
      ),
    );
  }

  Widget _buildFooter(bool isDark) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        border: Border(
          top: BorderSide(
            color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
          ),
        ),
      ),
      child: Row(
        children: [
          if (widget.note.wordCount != null)
            Text(
              '${widget.note.wordCount} words',
              style: AppTypography.bodySmall(
                color: isDark
                    ? AppColors.darkOnSurfaceVariant
                    : AppColors.lightOnSurfaceVariant,
              ),
            ),
          if (widget.note.confidence != null) ...[
            const SizedBox(width: 16),
            Icon(
              Icons.psychology,
              size: 16,
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
            const SizedBox(width: 4),
            Text(
              '${widget.note.confidence}% AI Confidence',
              style: AppTypography.bodySmall(
                color: isDark
                    ? AppColors.darkOnSurfaceVariant
                    : AppColors.lightOnSurfaceVariant,
              ),
            ),
          ],
          const Spacer(),
          if (_hasChanges)
            Text(
              'Unsaved changes',
              style: AppTypography.bodySmall(color: AppColors.warning),
            ),
        ],
      ),
    );
  }

  String _getFormattedSOAP() {
    final buffer = StringBuffer();

    if (_subjectiveController.text.isNotEmpty) {
      buffer.writeln('SUBJECTIVE:');
      buffer.writeln(_subjectiveController.text);
      buffer.writeln();
    }

    if (_objectiveController.text.isNotEmpty) {
      buffer.writeln('OBJECTIVE:');
      buffer.writeln(_objectiveController.text);
      buffer.writeln();
    }

    if (_assessmentController.text.isNotEmpty) {
      buffer.writeln('ASSESSMENT:');
      buffer.writeln(_assessmentController.text);
      buffer.writeln();
    }

    if (_planController.text.isNotEmpty) {
      buffer.writeln('PLAN:');
      buffer.writeln(_planController.text);
    }

    return buffer.toString();
  }

  Future<void> _saveNote() async {
    final updatedNote = widget.note.copyWith(
      subjective: _subjectiveController.text,
      objective: _objectiveController.text,
      assessment: _assessmentController.text,
      plan: _planController.text,
      updatedAt: DateTime.now(),
    );

    await ref.read(ambientScribeProvider.notifier).updateNote(updatedNote);

    setState(() {
      _hasChanges = false;
    });

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Note saved successfully'),
          backgroundColor: AppColors.success,
        ),
      );
    }
  }

  Future<bool> _showUnsavedChangesDialog() async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Unsaved Changes', style: AppTypography.titleLarge()),
        content: Text(
          'You have unsaved changes. Do you want to save before leaving?',
          style: AppTypography.bodyMedium(),
        ),
        actions: [
          CustomButton(
            label: 'Discard',
            onPressed: () => Navigator.pop(context, true),
            variant: ButtonVariant.text,
          ),
          CustomButton(
            label: 'Cancel',
            onPressed: () => Navigator.pop(context, false),
            variant: ButtonVariant.outlined,
          ),
          CustomButton(
            label: 'Save',
            onPressed: () async {
              await _saveNote();
              if (context.mounted) {
                Navigator.pop(context, true);
              }
            },
            variant: ButtonVariant.primary,
          ),
        ],
      ),
    );

    return result ?? false;
  }

  void _showOptionsMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.copy),
            title: const Text('Copy to Clipboard'),
            onTap: () {
              // TODO: Copy note to clipboard
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () {
              // TODO: Share note
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.print),
            title: const Text('Print'),
            onTap: () {
              // TODO: Print note
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.delete, color: AppColors.critical),
            title: const Text(
              'Delete',
              style: TextStyle(color: AppColors.critical),
            ),
            onTap: () {
              // TODO: Delete note
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
