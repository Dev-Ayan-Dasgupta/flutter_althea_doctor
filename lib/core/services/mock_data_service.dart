import 'dart:math';
import '../../shared/models/fhir/patient.dart';
import '../../shared/models/fhir/observation.dart';
import '../utils/constants.dart';

/// Mock data generator for testing
class MockDataService {
  static final _random = Random(AppConstants.mockDataSeed);

  // Sample data pools
  static final _firstNames = [
    'Rajesh',
    'Priya',
    'Amit',
    'Sunita',
    'Vikram',
    'Anjali',
    'Suresh',
    'Meera',
    'Arjun',
    'Lakshmi',
    'Kiran',
    'Deepa',
    'Ramesh',
    'Kavita',
    'Ashok',
    'Neha',
    'Ravi',
    'Pooja',
    'Manoj',
    'Shalini',
    'Vijay',
    'Radha',
    'Anil',
    'Geeta',
  ];

  static final _lastNames = [
    'Kumar',
    'Sharma',
    'Singh',
    'Patel',
    'Reddy',
    'Nair',
    'Iyer',
    'Desai',
    'Mehta',
    'Joshi',
    'Kulkarni',
    'Rao',
    'Gupta',
    'Verma',
    'Agarwal',
    'Shah',
  ];

  static final _cities = [
    'Mumbai',
    'Delhi',
    'Bangalore',
    'Kolkata',
    'Chennai',
    'Hyderabad',
    'Pune',
    'Ahmedabad',
    'Jaipur',
    'Lucknow',
    'Chandigarh',
    'Indore',
  ];

  static final _states = [
    'Maharashtra',
    'Delhi',
    'Karnataka',
    'West Bengal',
    'Tamil Nadu',
    'Telangana',
    'Gujarat',
    'Rajasthan',
    'Uttar Pradesh',
    'Punjab',
    'Madhya Pradesh',
  ];

  static final _conditions = [
    'Hypertension',
    'Type 2 Diabetes',
    'Chronic Kidney Disease',
    'Coronary Artery Disease',
    'Osteoarthritis',
    'COPD',
    'Post-Stroke Care',
    'Dementia',
    'Parkinson\'s Disease',
    'Heart Failure',
  ];

  /// Generate mock patient
  static FhirPatient generatePatient({String? id}) {
    final patientId = id ?? 'patient-${_random.nextInt(10000)}';
    final firstName = _firstNames[_random.nextInt(_firstNames.length)];
    final lastName = _lastNames[_random.nextInt(_lastNames.length)];
    final gender = _random.nextBool() ? 'male' : 'female';
    final age = 65 + _random.nextInt(30); // Age 65-95
    final birthYear = DateTime.now().year - age;
    final city = _cities[_random.nextInt(_cities.length)];
    final state = _states[_random.nextInt(_states.length)];

    return FhirPatient(
      id: patientId,
      resourceType: 'Patient',
      identifier: [
        FhirIdentifier(
          system: 'https://ndhm.gov.in/abha',
          value: 'ABHA-${_random.nextInt(1000000000)}',
          type: const FhirCodeableConcept(
            coding: [
              FhirCoding(
                system: 'http://terminology.hl7.org/CodeSystem/v2-0203',
                code: 'MR',
                display: 'Medical Record Number',
              ),
            ],
          ),
        ),
      ],
      active: true,
      name: [
        FhirHumanName(
          use: 'official',
          text: '$firstName $lastName',
          family: lastName,
          given: [firstName],
          prefix: gender == 'male' ? ['Mr.'] : ['Mrs.'],
        ),
      ],
      telecom: [
        FhirContactPoint(
          system: 'phone',
          value: '+91-${9000000000 + _random.nextInt(999999999)}',
          use: 'mobile',
        ),
        FhirContactPoint(
          system: 'email',
          value:
              '${firstName.toLowerCase()}.${lastName.toLowerCase()}@example.com',
          use: 'home',
        ),
      ],
      gender: gender,
      birthDate: '$birthYear-${_randomMonth()}-${_randomDay()}',
      address: [
        FhirAddress(
          use: 'home',
          type: 'physical',
          line: ['${_random.nextInt(500) + 1}, ${_randomStreetName()}'],
          city: city,
          state: state,
          postalCode: '${100000 + _random.nextInt(899999)}',
          country: 'India',
        ),
      ],
      contact: [
        FhirPatientContact(
          relationship: [
            const FhirCodeableConcept(
              coding: [
                FhirCoding(
                  system: 'http://terminology.hl7.org/CodeSystem/v2-0131',
                  code: 'C',
                  display: 'Emergency Contact',
                ),
              ],
            ),
          ],
          name: FhirHumanName(
            text:
                '${_firstNames[_random.nextInt(_firstNames.length)]} ${_lastNames[_random.nextInt(_lastNames.length)]}',
          ),
          telecom: [
            FhirContactPoint(
              system: 'phone',
              value: '+91-${9000000000 + _random.nextInt(999999999)}',
              use: 'mobile',
            ),
          ],
        ),
      ],
      meta: FhirMeta(
        lastUpdated: DateTime.now().toIso8601String(),
        source: 'AltheaCare-MockData',
        profile: ['http://hl7.org/fhir/StructureDefinition/Patient'],
      ),
    );
  }

  /// Generate blood pressure observation
  static FhirObservation generateBloodPressure({
    required String patientId,
    DateTime? effectiveDateTime,
  }) {
    final systolic = 110.0 + _random.nextInt(60);
    final diastolic = 70.0 + _random.nextInt(30);
    final dateTime = effectiveDateTime ?? DateTime.now();

    return FhirObservation(
      id: 'obs-bp-${_random.nextInt(100000)}',
      resourceType: 'Observation',
      status: 'final',
      category: [
        const FhirCodeableConcept(
          coding: [
            FhirCoding(
              system:
                  'http://terminology.hl7.org/CodeSystem/observation-category',
              code: 'vital-signs',
              display: 'Vital Signs',
            ),
          ],
        ),
      ],
      code: const FhirCodeableConcept(
        coding: [
          FhirCoding(
            system: 'http://loinc.org',
            code: VitalSignCodes.bloodPressure,
            display: 'Blood Pressure',
          ),
        ],
        text: 'Blood Pressure',
      ),
      subject: FhirReference(reference: 'Patient/$patientId'),
      effectiveDateTime: dateTime.toIso8601String(),
      issued: dateTime.toIso8601String(),
      component: [
        FhirObservationComponent(
          code: const FhirCodeableConcept(
            coding: [
              FhirCoding(
                system: 'http://loinc.org',
                code: VitalSignCodes.systolicBP,
                display: 'Systolic Blood Pressure',
              ),
            ],
          ),
          valueQuantity: FhirQuantity(
            value: systolic,
            unit: 'mmHg',
            system: 'http://unitsofmeasure.org',
            code: 'mm[Hg]',
          ),
        ),
        FhirObservationComponent(
          code: const FhirCodeableConcept(
            coding: [
              FhirCoding(
                system: 'http://loinc.org',
                code: VitalSignCodes.diastolicBP,
                display: 'Diastolic Blood Pressure',
              ),
            ],
          ),
          valueQuantity: FhirQuantity(
            value: diastolic,
            unit: 'mmHg',
            system: 'http://unitsofmeasure.org',
            code: 'mm[Hg]',
          ),
        ),
      ],
      meta: FhirMeta(
        lastUpdated: dateTime.toIso8601String(),
        source: 'AltheaCare-AltheaLens',
      ),
    );
  }

  /// Generate heart rate observation
  static FhirObservation generateHeartRate({
    required String patientId,
    DateTime? effectiveDateTime,
  }) {
    final heartRate = 60.0 + _random.nextInt(60);
    final dateTime = effectiveDateTime ?? DateTime.now();

    return FhirObservation(
      id: 'obs-hr-${_random.nextInt(100000)}',
      resourceType: 'Observation',
      status: 'final',
      category: [
        const FhirCodeableConcept(
          coding: [
            FhirCoding(
              system:
                  'http://terminology.hl7.org/CodeSystem/observation-category',
              code: 'vital-signs',
              display: 'Vital Signs',
            ),
          ],
        ),
      ],
      code: const FhirCodeableConcept(
        coding: [
          FhirCoding(
            system: 'http://loinc.org',
            code: VitalSignCodes.heartRate,
            display: 'Heart Rate',
          ),
        ],
        text: 'Heart Rate',
      ),
      subject: FhirReference(reference: 'Patient/$patientId'),
      effectiveDateTime: dateTime.toIso8601String(),
      issued: dateTime.toIso8601String(),
      valueQuantity: FhirQuantity(
        value: heartRate,
        unit: 'beats/min',
        system: 'http://unitsofmeasure.org',
        code: '/min',
      ),
      meta: FhirMeta(
        lastUpdated: dateTime.toIso8601String(),
        source: 'AltheaCare-Wearable',
      ),
    );
  }

  /// Generate SpO2 observation
  static FhirObservation generateSpO2({
    required String patientId,
    DateTime? effectiveDateTime,
  }) {
    final spO2 = 90.0 + _random.nextInt(10);
    final dateTime = effectiveDateTime ?? DateTime.now();

    return FhirObservation(
      id: 'obs-spo2-${_random.nextInt(100000)}',
      resourceType: 'Observation',
      status: 'final',
      category: [
        const FhirCodeableConcept(
          coding: [
            FhirCoding(
              system:
                  'http://terminology.hl7.org/CodeSystem/observation-category',
              code: 'vital-signs',
              display: 'Vital Signs',
            ),
          ],
        ),
      ],
      code: const FhirCodeableConcept(
        coding: [
          FhirCoding(
            system: 'http://loinc.org',
            code: VitalSignCodes.oxygenSaturation,
            display: 'Oxygen Saturation',
          ),
        ],
        text: 'SpO2',
      ),
      subject: FhirReference(reference: 'Patient/$patientId'),
      effectiveDateTime: dateTime.toIso8601String(),
      issued: dateTime.toIso8601String(),
      valueQuantity: FhirQuantity(
        value: spO2,
        unit: '%',
        system: 'http://unitsofmeasure.org',
        code: '%',
      ),
      meta: FhirMeta(
        lastUpdated: dateTime.toIso8601String(),
        source: 'AltheaCare-Wearable',
      ),
    );
  }

  /// Generate blood glucose observation
  static FhirObservation generateBloodGlucose({
    required String patientId,
    DateTime? effectiveDateTime,
  }) {
    final glucose = 80.0 + _random.nextInt(100);
    final dateTime = effectiveDateTime ?? DateTime.now();

    return FhirObservation(
      id: 'obs-glucose-${_random.nextInt(100000)}',
      resourceType: 'Observation',
      status: 'final',
      category: [
        const FhirCodeableConcept(
          coding: [
            FhirCoding(
              system:
                  'http://terminology.hl7.org/CodeSystem/observation-category',
              code: 'laboratory',
              display: 'Laboratory',
            ),
          ],
        ),
      ],
      code: const FhirCodeableConcept(
        coding: [
          FhirCoding(
            system: 'http://loinc.org',
            code: VitalSignCodes.bloodGlucose,
            display: 'Blood Glucose',
          ),
        ],
        text: 'Blood Glucose',
      ),
      subject: FhirReference(reference: 'Patient/$patientId'),
      effectiveDateTime: dateTime.toIso8601String(),
      issued: dateTime.toIso8601String(),
      valueQuantity: FhirQuantity(
        value: glucose,
        unit: 'mg/dL',
        system: 'http://unitsofmeasure.org',
        code: 'mg/dL',
      ),
      meta: FhirMeta(
        lastUpdated: dateTime.toIso8601String(),
        source: 'AltheaCare-Glucometer',
      ),
    );
  }

  /// Generate list of patients
  static List<FhirPatient> generatePatientList(int count) {
    return List.generate(count, (index) => generatePatient());
  }

  /// Generate 7-day vitals history for a patient
  static List<FhirObservation> generateVitalsHistory({
    required String patientId,
    int days = 7,
  }) {
    final observations = <FhirObservation>[];
    final now = DateTime.now();

    for (int i = 0; i < days; i++) {
      final date = now.subtract(Duration(days: days - i - 1));

      // Generate 2-4 readings per day
      final readingsPerDay = 2 + _random.nextInt(3);
      for (int j = 0; j < readingsPerDay; j++) {
        final time = date.add(Duration(hours: 6 + j * (12 ~/ readingsPerDay)));

        observations.add(
          generateBloodPressure(patientId: patientId, effectiveDateTime: time),
        );
        observations.add(
          generateHeartRate(patientId: patientId, effectiveDateTime: time),
        );
        observations.add(
          generateSpO2(patientId: patientId, effectiveDateTime: time),
        );

        // Glucose 1-2 times per day
        if (j == 0 || j == readingsPerDay - 1) {
          observations.add(
            generateBloodGlucose(patientId: patientId, effectiveDateTime: time),
          );
        }
      }
    }

    return observations;
  }

  // Helper methods
  static String _randomMonth() {
    return (1 + _random.nextInt(12)).toString().padLeft(2, '0');
  }

  static String _randomDay() {
    return (1 + _random.nextInt(28)).toString().padLeft(2, '0');
  }

  static String _randomStreetName() {
    final streets = [
      'MG Road',
      'Brigade Road',
      'Residency Road',
      'Richmond Road',
      'Koramangala',
      'Indiranagar',
      'Whitefield',
      'HSR Layout',
      'Jayanagar',
      'Malleswaram',
      'Rajajinagar',
      'Basavanagudi',
    ];
    return streets[_random.nextInt(streets.length)];
  }
}
