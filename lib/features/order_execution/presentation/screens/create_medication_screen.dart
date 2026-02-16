import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/utils/responsive.dart';
import '../../domain/entities/clinical_order.dart';
import '../state/order_notifier.dart';

class CreateMedicationScreen extends ConsumerStatefulWidget {
  final String patientId;
  final String patientName;

  const CreateMedicationScreen({
    super.key,
    required this.patientId,
    required this.patientName,
  });

  @override
  ConsumerState<CreateMedicationScreen> createState() =>
      _CreateMedicationScreenState();
}

class _CreateMedicationScreenState
    extends ConsumerState<CreateMedicationScreen> {
  final _formKey = GlobalKey<FormState>();

  final _medicationController = TextEditingController();
  final _dosageController = TextEditingController();
  final _instructionsController = TextEditingController();
  final _indicationController = TextEditingController();

  String _selectedRoute = 'Oral';
  String _selectedFrequency = 'Once daily';
  int _durationDays = 30;
  bool _genericAllowed = true;
  int _refills = 0;
  bool _isUrgent = false;

  final _routes = ['Oral', 'IV', 'IM', 'Subcutaneous', 'Topical', 'Sublingual'];
  final _frequencies = [
    'Once daily',
    'Twice daily',
    'Three times daily',
    'Four times daily',
    'Every 6 hours',
    'Every 8 hours',
    'As needed',
  ];

  @override
  void dispose() {
    _medicationController.dispose();
    _dosageController.dispose();
    _instructionsController.dispose();
    _indicationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Medication Order')),
      body: SingleChildScrollView(
        padding: Responsive.padding(context),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Patient info
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.info.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.person, color: AppColors.info),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Patient',
                            style: AppTypography.labelSmall(
                              color: AppColors.info,
                            ),
                          ),
                          Text(
                            widget.patientName,
                            style: AppTypography.titleMedium(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Medication name
              TextFormField(
                controller: _medicationController,
                decoration: const InputDecoration(
                  labelText: 'Medication Name *',
                  hintText: 'e.g., Amlodipine',
                  prefixIcon: Icon(Icons.medication),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Medication name is required';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Dosage
              TextFormField(
                controller: _dosageController,
                decoration: const InputDecoration(
                  labelText: 'Dosage *',
                  hintText: 'e.g., 5mg',
                  prefixIcon: Icon(Icons.colorize),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Dosage is required';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Route
              DropdownButtonFormField<String>(
                value: _selectedRoute,
                decoration: const InputDecoration(
                  labelText: 'Route *',
                  prefixIcon: Icon(Icons.route),
                ),
                items: _routes.map((route) {
                  return DropdownMenuItem(value: route, child: Text(route));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedRoute = value!;
                  });
                },
              ),

              const SizedBox(height: 16),

              // Frequency
              DropdownButtonFormField<String>(
                value: _selectedFrequency,
                decoration: const InputDecoration(
                  labelText: 'Frequency *',
                  prefixIcon: Icon(Icons.schedule),
                ),
                items: _frequencies.map((freq) {
                  return DropdownMenuItem(value: freq, child: Text(freq));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedFrequency = value!;
                  });
                },
              ),

              const SizedBox(height: 16),

              // Duration
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Duration: $_durationDays days',
                      style: AppTypography.titleSmall(),
                    ),
                  ),
                ],
              ),
              Slider(
                value: _durationDays.toDouble(),
                min: 7,
                max: 90,
                divisions: 83,
                label: '$_durationDays days',
                onChanged: (value) {
                  setState(() {
                    _durationDays = value.toInt();
                  });
                },
              ),

              const SizedBox(height: 16),

              // Instructions
              TextFormField(
                controller: _instructionsController,
                decoration: const InputDecoration(
                  labelText: 'Instructions',
                  hintText: 'e.g., Take with food',
                  prefixIcon: Icon(Icons.info_outline),
                ),
                maxLines: 2,
              ),

              const SizedBox(height: 16),

              // Indication
              TextFormField(
                controller: _indicationController,
                decoration: const InputDecoration(
                  labelText: 'Indication',
                  hintText: 'e.g., Hypertension',
                  prefixIcon: Icon(Icons.local_hospital),
                ),
              ),

              const SizedBox(height: 16),

              // Refills
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Refills: $_refills',
                      style: AppTypography.titleSmall(),
                    ),
                  ),
                ],
              ),
              Slider(
                value: _refills.toDouble(),
                min: 0,
                max: 5,
                divisions: 5,
                label: '$_refills refills',
                onChanged: (value) {
                  setState(() {
                    _refills = value.toInt();
                  });
                },
              ),

              const SizedBox(height: 16),

              // Switches
              SwitchListTile(
                title: Text(
                  'Allow generic substitution',
                  style: AppTypography.bodyMedium(),
                ),
                value: _genericAllowed,
                onChanged: (value) {
                  setState(() {
                    _genericAllowed = value;
                  });
                },
              ),

              SwitchListTile(
                title: Text('Urgent', style: AppTypography.bodyMedium()),
                subtitle: Text(
                  'Mark this order as urgent',
                  style: AppTypography.bodySmall(),
                ),
                value: _isUrgent,
                onChanged: (value) {
                  setState(() {
                    _isUrgent = value;
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
                      label: 'Create Order',
                      onPressed: _submitOrder,
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

  Future<void> _submitOrder() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final order = ClinicalOrder(
      id: '', // Will be generated
      patientId: widget.patientId,
      patientName: widget.patientName,
      orderType: OrderType.medication,
      status: OrderStatus.draft,
      orderedBy: 'doc-001', // TODO: Get from auth
      orderedByName: 'Dr. Rajesh Kumar', // TODO: Get from auth
      orderedAt: DateTime.now(),
      title: _medicationController.text,
      description: _indicationController.text.isNotEmpty
          ? 'For ${_indicationController.text}'
          : null,
      urgent: _isUrgent,
      medicationDetails: MedicationOrderDetails(
        medicationName: _medicationController.text,
        dosage: _dosageController.text,
        route: _selectedRoute,
        frequency: _selectedFrequency,
        durationDays: _durationDays,
        instructions: _instructionsController.text.isNotEmpty
            ? _instructionsController.text
            : null,
        indication: _indicationController.text.isNotEmpty
            ? _indicationController.text
            : null,
        genericAllowed: _genericAllowed,
        refills: _refills,
      ),
    );

    final success = await ref
        .read(orderExecutionProvider(widget.patientId).notifier)
        .createOrder(order);

    if (success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Medication order created successfully'),
          backgroundColor: AppColors.success,
        ),
      );
      Navigator.pop(context);
    }
  }
}
