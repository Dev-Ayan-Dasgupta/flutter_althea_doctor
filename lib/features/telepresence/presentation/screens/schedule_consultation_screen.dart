import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/utils/responsive.dart';
import '../../domain/entities/consultation.dart';
import '../state/telepresence_notifier.dart';

class ScheduleConsultationScreen extends ConsumerStatefulWidget {
  const ScheduleConsultationScreen({super.key});

  @override
  ConsumerState<ScheduleConsultationScreen> createState() =>
      _ScheduleConsultationScreenState();
}

class _ScheduleConsultationScreenState
    extends ConsumerState<ScheduleConsultationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _patientNameController = TextEditingController();
  final _reasonController = TextEditingController();

  DateTime _selectedDate = DateTime.now().add(const Duration(days: 1));
  TimeOfDay _selectedTime = const TimeOfDay(hour: 10, minute: 0);
  ConsultationType _selectedType = ConsultationType.routine;
  bool _recordingEnabled = false;

  @override
  void dispose() {
    _patientNameController.dispose();
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schedule Consultation')),
      body: SingleChildScrollView(
        padding: Responsive.padding(context),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Info card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.info.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.info.withOpacity(0.3)),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline, color: AppColors.info),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Schedule a video consultation with your patient',
                        style: AppTypography.bodyMedium(),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Patient name (in production, use patient selector)
              TextFormField(
                controller: _patientNameController,
                decoration: const InputDecoration(
                  labelText: 'Patient Name *',
                  hintText: 'Enter patient name',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Patient name is required';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Consultation type
              DropdownButtonFormField<ConsultationType>(
                value: _selectedType,
                decoration: const InputDecoration(
                  labelText: 'Consultation Type *',
                  prefixIcon: Icon(Icons.category),
                ),
                items: ConsultationType.values.map((type) {
                  return DropdownMenuItem(
                    value: type,
                    child: Text(_getTypeLabel(type)),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedType = value!;
                  });
                },
              ),

              const SizedBox(height: 16),

              // Date picker
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.calendar_today),
                title: Text('Date', style: AppTypography.labelLarge()),
                subtitle: Text(
                  '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                  style: AppTypography.bodyMedium(),
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _selectDate(context),
              ),

              const Divider(),

              // Time picker
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.access_time),
                title: Text('Time', style: AppTypography.labelLarge()),
                subtitle: Text(
                  _selectedTime.format(context),
                  style: AppTypography.bodyMedium(),
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _selectTime(context),
              ),

              const Divider(),

              const SizedBox(height: 16),

              // Reason
              TextFormField(
                controller: _reasonController,
                decoration: const InputDecoration(
                  labelText: 'Reason for Consultation',
                  hintText: 'e.g., Follow-up for hypertension',
                  prefixIcon: Icon(Icons.note),
                ),
                maxLines: 3,
              ),

              const SizedBox(height: 16),

              // Recording toggle
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Enable Recording',
                  style: AppTypography.bodyMedium(),
                ),
                subtitle: Text(
                  'Record consultation for medical records (requires patient consent)',
                  style: AppTypography.bodySmall(),
                ),
                value: _recordingEnabled,
                onChanged: (value) {
                  setState(() {
                    _recordingEnabled = value;
                  });
                },
              ),

              const SizedBox(height: 24),

              // Action buttons
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      label: 'Cancel',
                      onPressed: () => Navigator.pop(context),
                      variant: ButtonVariant.outlined,
                      size: ButtonSize.large,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: CustomButton(
                      label: 'Schedule',
                      onPressed: _scheduleConsultation,
                      variant: ButtonVariant.gradient,
                      size: ButtonSize.large,
                      icon: const Icon(Icons.check),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 90)),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  Future<void> _scheduleConsultation() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final scheduledDateTime = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
      _selectedTime.hour,
      _selectedTime.minute,
    );

    final success = await ref
        .read(telepresenceProvider('doc-001').notifier)
        .scheduleConsultation(
          patientId: 'patient-temp', // TODO: Get from patient selector
          patientName: _patientNameController.text,
          scheduledAt: scheduledDateTime,
          type: _selectedType,
          reason: _reasonController.text.isNotEmpty
              ? _reasonController.text
              : null,
          recordingEnabled: _recordingEnabled,
        );

    if (success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Consultation scheduled successfully'),
          backgroundColor: AppColors.success,
        ),
      );
      Navigator.pop(context);
    }
  }

  String _getTypeLabel(ConsultationType type) {
    switch (type) {
      case ConsultationType.routine:
        return 'Routine';
      case ConsultationType.urgent:
        return 'Urgent';
      case ConsultationType.followUp:
        return 'Follow-up';
      case ConsultationType.emergency:
        return 'Emergency';
      case ConsultationType.specialist:
        return 'Specialist';
    }
  }
}
