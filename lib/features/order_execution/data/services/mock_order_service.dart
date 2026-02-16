import 'dart:math';
import '../../domain/entities/clinical_order.dart';

/// Mock service for order management
class MockOrderService {
  static final _random = Random(42);

  /// Generate mock orders for a patient
  static List<ClinicalOrder> generateOrders(
    String patientId,
    String patientName,
  ) {
    return [
      // Recent medication order
      ClinicalOrder(
        id: 'order-001',
        patientId: patientId,
        patientName: patientName,
        orderType: OrderType.medication,
        status: OrderStatus.approved,
        orderedBy: 'doc-001',
        orderedByName: 'Dr. Rajesh Kumar',
        orderedAt: DateTime.now().subtract(const Duration(hours: 3)),
        title: 'Amlodipine 5mg',
        description: 'For blood pressure management',
        urgent: false,
        medicationDetails: const MedicationOrderDetails(
          medicationName: 'Amlodipine',
          dosage: '5mg',
          route: 'Oral',
          frequency: 'Once daily',
          durationDays: 30,
          instructions: 'Take in the morning with food',
          indication: 'Hypertension',
          genericAllowed: true,
          refills: 2,
          pharmacy: 'Apollo Pharmacy',
        ),
      ),

      // Lab order
      ClinicalOrder(
        id: 'order-002',
        patientId: patientId,
        patientName: patientName,
        orderType: OrderType.lab,
        status: OrderStatus.pending,
        orderedBy: 'doc-001',
        orderedByName: 'Dr. Rajesh Kumar',
        orderedAt: DateTime.now().subtract(const Duration(hours: 1)),
        title: 'Lipid Profile',
        description: 'Routine monitoring for cardiovascular risk',
        scheduledFor: DateTime.now().add(const Duration(days: 1)),
        urgent: false,
        labDetails: const LabOrderDetails(
          tests: [
            'Total Cholesterol',
            'LDL Cholesterol',
            'HDL Cholesterol',
            'Triglycerides',
          ],
          specimenType: 'Blood',
          fasting: true,
          clinicalNotes: 'Patient on statin therapy',
          labName: 'PathLab',
        ),
      ),

      // Completed medication
      ClinicalOrder(
        id: 'order-003',
        patientId: patientId,
        patientName: patientName,
        orderType: OrderType.medication,
        status: OrderStatus.completed,
        orderedBy: 'doc-001',
        orderedByName: 'Dr. Rajesh Kumar',
        orderedAt: DateTime.now().subtract(const Duration(days: 7)),
        completedAt: DateTime.now().subtract(const Duration(days: 6)),
        completedBy: 'Nurse Priya',
        title: 'Metformin 500mg',
        description: 'Diabetes management',
        medicationDetails: const MedicationOrderDetails(
          medicationName: 'Metformin',
          dosage: '500mg',
          route: 'Oral',
          frequency: 'Twice daily',
          durationDays: 30,
          instructions: 'Take with meals',
          indication: 'Type 2 Diabetes',
          genericAllowed: true,
          refills: 3,
        ),
      ),
    ];
  }

  /// Get common order templates
  static List<OrderTemplate> getOrderTemplates() {
    return [
      // Medication templates
      const OrderTemplate(
        id: 'template-001',
        name: 'Hypertension - Standard',
        orderType: OrderType.medication,
        description: 'Standard hypertension medication regimen',
        category: 'Cardiovascular',
        tags: ['hypertension', 'common'],
        templateData: {
          'medicationName': 'Amlodipine',
          'dosage': '5mg',
          'route': 'Oral',
          'frequency': 'Once daily',
          'durationDays': 30,
        },
      ),
      const OrderTemplate(
        id: 'template-002',
        name: 'Diabetes - Metformin',
        orderType: OrderType.medication,
        description: 'First-line diabetes medication',
        category: 'Endocrine',
        tags: ['diabetes', 'common'],
        templateData: {
          'medicationName': 'Metformin',
          'dosage': '500mg',
          'route': 'Oral',
          'frequency': 'Twice daily',
          'durationDays': 30,
        },
      ),

      // Lab templates
      const OrderTemplate(
        id: 'template-003',
        name: 'Basic Metabolic Panel',
        orderType: OrderType.lab,
        description: 'Basic blood chemistry tests',
        category: 'Laboratory',
        tags: ['lab', 'routine'],
        templateData: {
          'tests': [
            'Sodium',
            'Potassium',
            'Chloride',
            'CO2',
            'BUN',
            'Creatinine',
            'Glucose',
          ],
          'fasting': false,
        },
      ),
      const OrderTemplate(
        id: 'template-004',
        name: 'Lipid Profile',
        orderType: OrderType.lab,
        description: 'Cardiovascular risk assessment',
        category: 'Laboratory',
        tags: ['lab', 'cardiovascular'],
        templateData: {
          'tests': ['Total Cholesterol', 'LDL', 'HDL', 'Triglycerides'],
          'fasting': true,
        },
      ),

      // Imaging templates
      const OrderTemplate(
        id: 'template-005',
        name: 'Chest X-Ray',
        orderType: OrderType.imaging,
        description: 'Standard chest radiograph',
        category: 'Imaging',
        tags: ['imaging', 'respiratory'],
      ),
    ];
  }

  /// Create order (mock)
  static Future<ClinicalOrder> createOrder(ClinicalOrder order) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));

    return order.copyWith(
      id: 'order-${DateTime.now().millisecondsSinceEpoch}',
      orderedAt: DateTime.now(),
      status: OrderStatus.pending,
    );
  }

  /// Update order status (mock)
  static Future<ClinicalOrder> updateOrderStatus(
    String orderId,
    OrderStatus newStatus,
  ) async {
    await Future.delayed(const Duration(milliseconds: 300));

    // In real implementation, fetch and update from backend
    return ClinicalOrder(
      id: orderId,
      patientId: 'mock-patient',
      patientName: 'Mock Patient',
      orderType: OrderType.medication,
      status: newStatus,
      orderedBy: 'doc-001',
      orderedByName: 'Dr. Kumar',
      orderedAt: DateTime.now(),
      title: 'Updated Order',
    );
  }

  /// Cancel order (mock)
  static Future<bool> cancelOrder(String orderId, String reason) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return true;
  }
}
