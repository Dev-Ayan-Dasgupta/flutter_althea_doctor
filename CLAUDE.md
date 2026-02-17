# Claude AI Development Guide - AltheaCare Ecosystem

This document provides comprehensive context for AI-assisted development across the entire AltheaCare healthcare platform ecosystem.

---

## 📋 Table of Contents

1. [Ecosystem Overview](#ecosystem-overview)
2. [Architecture Principles](#architecture-principles)
3. [Technology Stack](#technology-stack)
4. [Coding Standards](#coding-standards)
5. [Project Structure](#project-structure)
6. [Feature Development Workflow](#feature-development-workflow)
7. [Data Models & Standards](#data-models--standards)
8. [API & Backend Guidelines](#api--backend-guidelines)
9. [Security & Compliance](#security--compliance)
10. [Testing Strategy](#testing-strategy)
11. [App-Specific Guidelines](#app-specific-guidelines)
12. [Common Pitfalls](#common-pitfalls)

---

## 🌍 Ecosystem Overview

### AltheaCare Platform Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                     AltheaCare Ecosystem                        │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  Mobile Apps (Flutter)                    Web Apps              │
│  ├─ Doctor App              ✅ COMPLETE   ├─ Admin Panel       │
│  ├─ Patient App                           ├─ Marketing Website │
│  ├─ Caregiver/Nurse App                   └─ Partner Portal    │
│  ├─ Pharmacist App                                              │
│  ├─ Diagnostics Lab App                                         │
│  ├─ Delivery Partner App                                        │
│  ├─ Ambulance Partner App                                       │
│  ├─ Employer Partner App                                        │
│  ├─ Insurer Partner App                                         │
│  └─ Senior Living Home App                                      │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                      Common Backend                             │
│  ├─ FHIR R4 Server (HAPI FHIR / Google Health Cloud)          │
│  ├─ GraphQL API Gateway                                        │
│  ├─ REST APIs                                                  │
│  ├─ AI/ML Services (OpenAI, Gemini, Claude)                   │
│  ├─ Real-time Services (WebSocket, Firebase)                  │
│  ├─ Video Service (Agora)                                      │
│  ├─ Storage (Cloud Storage, S3)                               │
│  └─ Databases (PostgreSQL, MongoDB, Redis)                     │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                  Integration Layer                              │
│  ├─ ABDM (Ayushman Bharat Digital Mission)                    │
│  ├─ Payment Gateway (Razorpay, Stripe)                        │
│  ├─ SMS/Email (Twilio, SendGrid)                              │
│  ├─ Maps (Google Maps)                                         │
│  └─ Analytics (Firebase, Mixpanel)                            │
└─────────────────────────────────────────────────────────────────┘
```

### App Purpose Matrix

| App                 | Primary User        | Key Features                                           | Status      |
| ------------------- | ------------------- | ------------------------------------------------------ | ----------- |
| **Doctor**          | Physicians          | Patient monitoring, AI documentation, Telepresence     | ✅ Complete |
| **Patient**         | Elderly patients    | Health tracking, Appointments, Medication reminders    | 📋 Planned  |
| **Caregiver/Nurse** | Caregivers/Nurses   | Patient care tasks, Vitals recording, Communication    | 📋 Planned  |
| **Pharmacist**      | Pharmacy staff      | Prescription fulfillment, Inventory, Drug interactions | 📋 Planned  |
| **Diagnostics**     | Lab technicians     | Test orders, Sample collection, Report upload          | 📋 Planned  |
| **Delivery**        | Delivery partners   | Medicine delivery, Route optimization, COD             | 📋 Planned  |
| **Ambulance**       | Ambulance services  | Emergency requests, GPS tracking, Patient handoff      | 📋 Planned  |
| **Employer**        | HR/Benefits teams   | Employee health plans, Analytics, Invoicing            | 📋 Planned  |
| **Insurer**         | Insurance companies | Claims processing, Policy management, Analytics        | 📋 Planned  |
| **Senior Living**   | Facility managers   | Resident management, Staff scheduling, Compliance      | 📋 Planned  |
| **Admin Panel**     | AltheaCare admin    | User management, Analytics, System config              | 📋 Planned  |
| **Website**         | Public              | Marketing, Onboarding, Documentation                   | 📋 Planned  |

---

## 🏗️ Architecture Principles

### 1. **Clean Architecture (All Apps)**

```
┌─────────────────────────────────────────┐
│         Presentation Layer              │
│  (UI, Widgets, State Management)        │
├─────────────────────────────────────────┤
│           Domain Layer                  │
│  (Business Logic, Entities, Use Cases)  │
├─────────────────────────────────────────┤
│            Data Layer                   │
│  (API, Local Storage, Repositories)     │
└─────────────────────────────────────────┘
```

**Key Rules:**

- ✅ Dependencies point inward (Presentation → Domain ← Data)
- ✅ Domain layer has NO dependencies on outer layers
- ✅ Use dependency injection (Riverpod)
- ✅ Repository pattern for data access
- ✅ Use cases encapsulate business logic

### 2. **Feature-First Organization**

```
lib/
├── core/           # Shared infrastructure
├── shared/         # Shared models & services
└── features/       # Feature modules (self-contained)
    ├── auth/
    ├── dashboard/
    └── feature_name/
        ├── data/
        ├── domain/
        └── presentation/
```

### 3. **State Management (Riverpod)**

- Use `riverpod_annotation` for code generation
- Prefer `AsyncNotifier` for async state
- Use `@riverpod` annotation for providers
- Keep state immutable (Freezed)

### 4. **Data Models (FHIR R4 Standard)**

- ALL clinical data MUST follow FHIR R4 standard
- Use FHIR resources: Patient, Observation, MedicationRequest, etc.
- JSON serialization with `json_serializable`
- Immutable models with `freezed`

---

## 💻 Technology Stack

### Mobile Apps (Flutter)

```yaml
# Core Dependencies
flutter_riverpod: ^2.5.1 # State management
freezed_annotation: ^2.4.1 # Immutable models
json_annotation: ^4.8.1 # JSON serialization
go_router: ^13.2.0 # Routing
dio: ^5.4.0 # HTTP client

# Code Generation
riverpod_generator: ^2.4.0
build_runner: ^2.4.8
freezed: ^2.4.7
json_serializable: ^6.7.1

# UI/UX
fl_chart: ^0.66.0 # Charts
table_calendar: ^3.0.9 # Calendar
cached_network_image: ^3.3.1 # Image caching

# Platform Services
shared_preferences: ^2.2.2 # Local storage
connectivity_plus: ^5.0.2 # Network status
package_info_plus: ^5.0.1 # App info
url_launcher: ^6.2.2 # External links

# Feature-Specific
agora_rtc_engine: ^6.3.0 # Video calls (Telepresence)
speech_to_text: ^6.6.0 # Voice (Ambient Scribe)
```

### Backend (Node.js / Python / Go)

```
# To be specified based on backend tech choice
# Common requirements:
- GraphQL API (Apollo Server / Hasura)
- FHIR Server (HAPI FHIR / Google Cloud Healthcare)
- PostgreSQL (primary database)
- Redis (caching)
- MongoDB (logs, analytics)
- WebSocket (real-time)
```

### Web Apps (React / Next.js)

```json
{
  "dependencies": {
    "react": "^18.2.0",
    "next": "^14.0.0",
    "tailwindcss": "^3.4.0",
    "shadcn-ui": "latest",
    "react-query": "^5.0.0"
  }
}
```

---

## 📝 Coding Standards

### Flutter/Dart Standards

#### 1. **File Naming**

```dart
// ✅ Good
patient_details_screen.dart
risk_watch_notifier.dart
custom_button.dart

// ❌ Bad
PatientDetailsScreen.dart
RiskWatchNotifier.dart
CustomButton.dart
```

#### 2. **Class Naming**

```dart
// ✅ Good - PascalCase
class PatientDetailsScreen extends ConsumerWidget {}
class RiskWatchNotifier extends _$RiskWatchNotifier {}

// ❌ Bad
class patientDetailsScreen extends ConsumerWidget {}
class risk_watch_notifier extends _$RiskWatchNotifier {}
```

#### 3. **Widget Structure**

```dart
// ✅ Always use const constructors
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Extract theme info
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isMobile = Responsive.isMobile(context);

    // Build UI
    return Container();
  }
}
```

#### 4. **Never Use Material Widgets Directly**

```dart
// ❌ Bad - Don't use ListTile directly
ListTile(
  leading: Icon(Icons.person),
  title: Text('Profile'),
  onTap: () {},
)

// ✅ Good - Use custom wrapper widgets
SettingsListTile(
  icon: Icons.person,
  title: 'Profile',
  onTap: () {},
)
```

#### 5. **Extract Widgets to /widgets**

```dart
// ❌ Bad - All widgets in screen file (>500 lines)
class MyScreen extends StatelessWidget {
  Widget _buildHeader() { }
  Widget _buildContent() { }
  Widget _buildFooter() { }
}

// ✅ Good - Separate widget files
class MyScreen extends StatelessWidget {
  Widget build(context) {
    return Column([
      MyScreenHeader(),
      MyScreenContent(),
      MyScreenFooter(),
    ]);
  }
}

// In widgets/ folder:
// - my_screen_header.dart
// - my_screen_content.dart
// - my_screen_footer.dart
```

#### 6. **State Management Pattern**

```dart
// ✅ Good - Use Riverpod with code generation
@riverpod
class MyFeature extends _$MyFeature {
  @override
  MyState build(String id) {
    _loadData(id);
    return MyState(isLoading: true);
  }

  Future<void> _loadData(String id) async {
    // Implementation
  }
}
```

#### 7. **Error Handling**

```dart
// ✅ Good - Use Result pattern
sealed class Result<T> {
  const Result();
}

class Success<T> extends Result<T> {
  final T data;
  const Success(this.data);
}

class Failure<T> extends Result<T> {
  final String message;
  const Failure(this.message);
}
```

#### 8. **Immutable Models (Freezed)**

```dart
// ✅ Always use freezed for data models
@freezed
class Patient with _$Patient {
  const factory Patient({
    required String id,
    required String name,
    required DateTime birthDate,
    String? email,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}
```

#### 9. **Repository Pattern**

```dart
// ✅ Good - Abstract repository in domain layer
abstract class PatientRepository {
  Future<Result<Patient>> getPatient(String id);
  Future<Result<List<Patient>>> getPatients();
}

// Implementation in data layer
class PatientRepositoryImpl implements PatientRepository {
  final PatientRemoteDataSource remoteDataSource;
  final PatientLocalDataSource localDataSource;

  @override
  Future<Result<Patient>> getPatient(String id) async {
    try {
      final patient = await remoteDataSource.getPatient(id);
      await localDataSource.cachePatient(patient);
      return Success(patient);
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
```

---

## 📂 Project Structure Template

### Standard Feature Module Structure

```
feature_name/
├── data/
│   ├── datasources/
│   │   ├── feature_remote_datasource.dart    # API calls
│   │   └── feature_local_datasource.dart     # Local cache
│   ├── models/
│   │   └── feature_model.dart                # DTOs with JSON
│   └── repositories/
│       └── feature_repository_impl.dart      # Repository implementation
│
├── domain/
│   ├── entities/
│   │   └── feature_entity.dart               # Business objects (Freezed)
│   ├── repositories/
│   │   └── feature_repository.dart           # Abstract repository
│   └── usecases/
│       ├── get_feature_usecase.dart
│       └── update_feature_usecase.dart
│
└── presentation/
    ├── screens/
    │   ├── feature_list_screen.dart
    │   └── feature_details_screen.dart
    ├── widgets/
    │   ├── feature_card.dart
    │   ├── feature_list_item.dart
    │   └── feature_header.dart
    └── state/
        └── feature_notifier.dart             # Riverpod notifier
```

---

## 🔄 Feature Development Workflow

### Step-by-Step Process

#### 1. **Define Domain Entities** (Start Here)

```dart
// lib/features/appointments/domain/entities/appointment.dart
@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String id,
    required String patientId,
    required DateTime scheduledTime,
    required AppointmentStatus status,
  }) = _Appointment;
}
```

#### 2. **Define Repository Interface**

```dart
// lib/features/appointments/domain/repositories/appointment_repository.dart
abstract class AppointmentRepository {
  Future<Result<List<Appointment>>> getAppointments();
  Future<Result<Appointment>> createAppointment(Appointment appointment);
}
```

#### 3. **Create Data Models (DTOs)**

```dart
// lib/features/appointments/data/models/appointment_model.dart
@freezed
class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    required String id,
    required String patientId,
    required String scheduledTime,
    required String status,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}
```

#### 4. **Implement Data Sources**

```dart
// lib/features/appointments/data/datasources/appointment_remote_datasource.dart
class AppointmentRemoteDataSource {
  final Dio dio;

  Future<List<AppointmentModel>> getAppointments() async {
    final response = await dio.get('/appointments');
    return (response.data as List)
        .map((json) => AppointmentModel.fromJson(json))
        .toList();
  }
}
```

#### 5. **Implement Repository**

```dart
// lib/features/appointments/data/repositories/appointment_repository_impl.dart
class AppointmentRepositoryImpl implements AppointmentRepository {
  final AppointmentRemoteDataSource remoteDataSource;

  @override
  Future<Result<List<Appointment>>> getAppointments() async {
    try {
      final models = await remoteDataSource.getAppointments();
      final appointments = models.map((m) => m.toEntity()).toList();
      return Success(appointments);
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
```

#### 6. **Create State Notifier**

```dart
// lib/features/appointments/presentation/state/appointment_notifier.dart
@riverpod
class AppointmentList extends _$AppointmentList {
  @override
  Future<List<Appointment>> build() async {
    final repository = ref.read(appointmentRepositoryProvider);
    final result = await repository.getAppointments();

    return result.when(
      success: (appointments) => appointments,
      failure: (error) => throw Exception(error),
    );
  }
}
```

#### 7. **Build UI Screen**

```dart
// lib/features/appointments/presentation/screens/appointments_screen.dart
class AppointmentsScreen extends ConsumerWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appointmentsAsync = ref.watch(appointmentListProvider);

    return Scaffold(
      body: appointmentsAsync.when(
        data: (appointments) => AppointmentList(appointments: appointments),
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => ErrorView(error: error),
      ),
    );
  }
}
```

#### 8. **Extract Widgets**

```dart
// lib/features/appointments/presentation/widgets/appointment_card.dart
class AppointmentCard extends StatelessWidget {
  final Appointment appointment;

  const AppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    // Implementation
  }
}
```

#### 9. **Run Code Generation**

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

#### 10. **Add Tests**

```dart
// test/features/appointments/domain/usecases/get_appointments_test.dart
void main() {
  group('GetAppointments', () {
    test('should return appointments on success', () async {
      // Arrange
      // Act
      // Assert
    });
  });
}
```

---

## 🗄️ Data Models & Standards

### FHIR R4 Resources (MUST USE)

#### Patient Resource

```dart
@freezed
class FhirPatient with _$FhirPatient {
  const factory FhirPatient({
    required String id,
    required String resourceType,  // Always "Patient"
    @Default([]) List<FhirIdentifier> identifier,
    required bool active,
    required List<FhirHumanName> name,
    List<FhirContactPoint>? telecom,
    String? gender,
    String? birthDate,
    List<FhirAddress>? address,
  }) = _FhirPatient;

  factory FhirPatient.fromJson(Map<String, dynamic> json) =>
      _$FhirPatientFromJson(json);
}
```

#### Observation (Vitals)

```dart
@freezed
class FhirObservation with _$FhirObservation {
  const factory FhirObservation({
    required String id,
    required String resourceType,  // "Observation"
    required String status,         // registered | preliminary | final
    required FhirCodeableConcept code,
    required FhirReference subject,
    String? effectiveDateTime,
    FhirQuantity? valueQuantity,
  }) = _FhirObservation;
}
```

### Custom Clinical Models

#### Clinical Stability Index (CSI)

```dart
@freezed
class ClinicalStabilityIndex with _$ClinicalStabilityIndex {
  const factory ClinicalStabilityIndex({
    required double score,           // 0-100
    required ClinicalRiskLevel riskLevel,
    required DateTime calculatedAt,
    required List<String> contributors,
  }) = _ClinicalStabilityIndex;
}

enum ClinicalRiskLevel {
  critical,   // CSI < 20
  high,       // CSI 20-40
  moderate,   // CSI 40-60
  low,        // CSI 60-80
  stable,     // CSI > 80
}
```

---

## 🔌 API & Backend Guidelines

### GraphQL Schema Example

```graphql
type Patient {
  id: ID!
  fhirResource: FHIR_Patient!
  csi: ClinicalStabilityIndex
  vitals: [Observation!]!
  prescriptions: [MedicationRequest!]!
  careTeam: [CareTeam!]!
}

type Query {
  patient(id: ID!): Patient
  patients(filter: PatientFilter): [Patient!]!
  riskWatchPatients: [Patient!]!
}

type Mutation {
  createAppointment(input: AppointmentInput!): Appointment!
  updateVitals(patientId: ID!, vitals: VitalsInput!): Observation!
}

type Subscription {
  patientUpdated(patientId: ID!): Patient!
  criticalAlert: CriticalAlert!
}
```

### REST API Conventions

```
# Resource endpoints
GET    /api/v1/patients
GET    /api/v1/patients/:id
POST   /api/v1/patients
PUT    /api/v1/patients/:id
DELETE /api/v1/patients/:id

# Nested resources
GET    /api/v1/patients/:id/vitals
POST   /api/v1/patients/:id/vitals

# Actions
POST   /api/v1/appointments/:id/cancel
POST   /api/v1/prescriptions/:id/fulfill
```

### API Response Format

```json
{
  "success": true,
  "data": {
    "id": "patient-123",
    "name": "John Doe"
  },
  "meta": {
    "timestamp": "2024-01-01T00:00:00Z",
    "version": "1.0"
  }
}

// Error response
{
  "success": false,
  "error": {
    "code": "PATIENT_NOT_FOUND",
    "message": "Patient with ID patient-123 not found",
    "details": {}
  }
}
```

---

## 🔐 Security & Compliance

### HIPAA Compliance Requirements

#### 1. **Audit Logging (MANDATORY)**

```dart
// Every data access must be logged
class AuditLogger {
  static void logAccess({
    required String userId,
    required String resourceType,
    required String resourceId,
    required String action,
  }) {
    // Log to secure backend
  }
}

// Usage
AuditLogger.logAccess(
  userId: currentUser.id,
  resourceType: 'Patient',
  resourceId: patient.id,
  action: 'VIEW_PATIENT_DETAILS',
);
```

#### 2. **Encryption (MANDATORY)**

```dart
// Sensitive data must be encrypted at rest
class EncryptionService {
  String encrypt(String plaintext) {
    // AES-256 encryption
  }

  String decrypt(String ciphertext) {
    // AES-256 decryption
  }
}
```

#### 3. **Data Minimization**

```dart
// ✅ Good - Only fetch required fields
query GetPatientBasicInfo($id: ID!) {
  patient(id: $id) {
    id
    name
    birthDate
  }
}

// ❌ Bad - Fetching all fields unnecessarily
query GetPatient($id: ID!) {
  patient(id: $id) {
    ...AllFields
  }
}
```

### DPDP Act (India) Compliance

- ✅ Explicit user consent for data collection
- ✅ Right to data portability (export feature)
- ✅ Right to erasure (delete account)
- ✅ Data breach notification within 72 hours

---

## 🧪 Testing Strategy

### Unit Tests

```dart
// test/features/appointments/domain/usecases/get_appointments_test.dart
void main() {
  late GetAppointmentsUseCase useCase;
  late MockAppointmentRepository mockRepository;

  setUp(() {
    mockRepository = MockAppointmentRepository();
    useCase = GetAppointmentsUseCase(mockRepository);
  });

  test('should return list of appointments on success', () async {
    // Arrange
    final appointments = [Appointment(/* ... */)];
    when(mockRepository.getAppointments())
        .thenAnswer((_) async => Success(appointments));

    // Act
    final result = await useCase();

    // Assert
    expect(result, isA<Success<List<Appointment>>>());
  });
}
```

### Widget Tests

```dart
void main() {
  testWidgets('AppointmentCard displays appointment info', (tester) async {
    // Arrange
    final appointment = Appointment(/* ... */);

    // Act
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: AppointmentCard(appointment: appointment),
        ),
      ),
    );

    // Assert
    expect(find.text('Appointment Details'), findsOneWidget);
  });
}
```

---

## 📱 App-Specific Guidelines

### 1. **Doctor App** ✅ (Complete - Reference Implementation)

- **Purpose**: Patient monitoring, clinical documentation, telepresence
- **Key Features**: Risk Watch, Digital Twin, Ambient Scribe, Telepresence
- **User Type**: Physicians, Specialists
- **Status**: Production-ready

### 2. **Patient App**

- **Purpose**: Health tracking, appointments, medication management
- **Key Features**:
  - Health vitals self-recording
  - Appointment booking
  - Medication reminders with alerts
  - Video consultation join
  - Medical records access
  - Emergency SOS button
- **User Type**: Elderly patients (65+)
- **UI Considerations**: Large fonts, simple navigation, voice commands

### 3. **Caregiver/Nurse App**

- **Purpose**: Assist patients, record vitals, communicate with doctors
- **Key Features**:
  - Patient task list (medications, meals, exercises)
  - Vitals recording interface
  - Shift handoff notes
  - Emergency alerts
  - Communication hub
- **User Type**: Professional caregivers, nurses, family members

### 4. **Pharmacist App**

- **Purpose**: Prescription fulfillment, inventory management
- **Key Features**:
  - Prescription queue
  - Drug interaction checker
  - Inventory management
  - Barcode scanner
  - Delivery coordination
- **User Type**: Pharmacy staff

### 5. **Diagnostics Lab App**

- **Purpose**: Test orders, sample collection, report upload
- **Key Features**:
  - Test order management
  - Sample collection scheduling
  - Barcode scanning
  - Report upload with OCR
  - Quality control tracking
- **User Type**: Lab technicians

### 6. **Delivery Partner App**

- **Purpose**: Medicine delivery
- **Key Features**:
  - Order list with priority
  - GPS navigation
  - Proof of delivery (photo/signature)
  - COD collection
  - Earnings tracker
- **User Type**: Delivery partners

### 7. **Ambulance Partner App**

- **Purpose**: Emergency medical transport
- **Key Features**:
  - Emergency request acceptance
  - GPS tracking & navigation
  - Patient vitals pre-capture
  - Hospital coordination
  - Trip completion & payment
- **User Type**: Ambulance drivers, paramedics

### 8. **Employer Partner App**

- **Purpose**: Corporate health benefits management
- **Key Features**:
  - Employee health plan management
  - Usage analytics & reports
  - Invoice management
  - Policy configuration
  - Wellness program tracking
- **User Type**: HR teams, benefits managers

### 9. **Insurer Partner App**

- **Purpose**: Health insurance claims & policy management
- **Key Features**:
  - Claims processing
  - Policy management
  - Pre-authorization
  - Fraud detection
  - Analytics dashboard
- **User Type**: Insurance company staff

### 10. **Senior Living Home Partner App**

- **Purpose**: Facility management for senior living homes
- **Key Features**:
  - Resident health tracking
  - Staff scheduling
  - Medication administration records
  - Compliance reporting
  - Family communication
- **User Type**: Facility managers, staff

### 11. **Admin Panel** (Web)

- **Purpose**: Platform administration
- **Key Features**:
  - User management (all roles)
  - System analytics
  - Configuration & settings
  - Audit logs viewer
  - Support ticket management
- **User Type**: AltheaCare administrators

### 12. **Marketing Website** (Web)

- **Purpose**: Public-facing website
- **Key Features**:
  - Landing pages
  - Product information
  - Pricing
  - Blog
  - Contact forms
- **Tech Stack**: Next.js 14, Tailwind CSS, Shadcn UI

---

## ⚠️ Common Pitfalls (AVOID THESE)

### ❌ 1. Using Material Widgets Directly

```dart
// ❌ BAD
ListTile(leading: Icon(Icons.person), title: Text('Profile'))

// ✅ GOOD
SettingsListTile(icon: Icons.person, title: 'Profile')
```

### ❌ 2. Bloated Screen Files

```dart
// ❌ BAD - 800 line screen file
class MyScreen extends StatelessWidget {
  Widget _buildHeader() { /* 100 lines */ }
  Widget _buildContent() { /* 300 lines */ }
  Widget _buildFooter() { /* 100 lines */ }
}

// ✅ GOOD - Extract to widgets/
class MyScreen extends StatelessWidget {
  Widget build(context) => Column([
    MyScreenHeader(),
    MyScreenContent(),
    MyScreenFooter(),
  ]);
}
```

### ❌ 3. Not Following Clean Architecture

```dart
// ❌ BAD - API call in UI
class MyScreen extends StatelessWidget {
  Future<void> loadData() async {
    final response = await http.get('/api/patients');
    // ...
  }
}

// ✅ GOOD - Use repository + notifier
final patients = ref.watch(patientsProvider);
```

### ❌ 4. Ignoring FHIR Standards

```dart
// ❌ BAD - Custom patient model
class Patient {
  String name;
  String dob;
}

// ✅ GOOD - Use FHIR Patient
class FhirPatient {
  List<FhirHumanName> name;
  String birthDate;  // ISO 8601
}
```

### ❌ 5. Missing Error Handling

```dart
// ❌ BAD
final result = await repository.getData();
return result.data;  // Crashes if error

// ✅ GOOD
final result = await repository.getData();
return result.when(
  success: (data) => data,
  failure: (error) => throw Exception(error),
);
```

### ❌ 6. Not Using Code Generation

```dart
// ❌ BAD - Manual JSON parsing
class Patient {
  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      id: json['id'],
      name: json['name'],
      // 50 more lines...
    );
  }
}

// ✅ GOOD - Use json_serializable
@JsonSerializable()
class Patient {
  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}
```

### ❌ 7. Hardcoding Strings

```dart
// ❌ BAD
Text('Welcome to AltheaCare')

// ✅ GOOD
Text(AppStrings.welcomeMessage)
```

### ❌ 8. Not Testing

```dart
// ❌ BAD - No tests

// ✅ GOOD - Comprehensive tests
test('should calculate CSI correctly', () {
  // Arrange
  final vitals = Vitals(/* ... */);

  // Act
  final csi = calculateCSI(vitals);

  // Assert
  expect(csi.score, 75.0);
});
```

---

## 📋 Development Checklist

### Starting a New App

- [ ] Clone Doctor App as template
- [ ] Update `pubspec.yaml` (app name, package name)
- [ ] Update app icons & splash screen
- [ ] Configure Firebase (if needed)
- [ ] Set up CI/CD pipeline
- [ ] Configure environment variables
- [ ] Update FHIR models for app-specific resources
- [ ] Define app-specific features
- [ ] Create wireframes/designs
- [ ] Set up backend endpoints
- [ ] Configure authentication
- [ ] Set up error tracking (Sentry)
- [ ] Configure analytics (Firebase/Mixpanel)

### Adding a New Feature

- [ ] Define domain entities (Freezed)
- [ ] Create repository interface
- [ ] Implement data sources
- [ ] Implement repository
- [ ] Create state notifier (Riverpod)
- [ ] Build UI screens
- [ ] Extract widgets to /widgets
- [ ] Run code generation
- [ ] Add unit tests
- [ ] Add widget tests
- [ ] Update documentation
- [ ] Test on multiple devices
- [ ] Code review
- [ ] Merge to main

---

## 🚀 Quick Start Commands

### Create New App (From Template)

```bash
# Clone Doctor App as template
git clone <doctor-app-repo> patient-app
cd patient-app

# Update package name
# Edit pubspec.yaml, AndroidManifest.xml, Info.plist

# Install dependencies
flutter pub get

# Generate code
flutter pub run build_runner build --delete-conflicting-outputs

# Run
flutter run
```

### Adding a Feature

```bash
# Create feature folder structure
mkdir -p lib/features/my_feature/{data,domain,presentation}/{datasources,models,repositories,entities,usecases,screens,widgets,state}

# Generate code after adding models
flutter pub run build_runner build --delete-conflicting-outputs
```

### Running Tests

```bash
# All tests
flutter test

# Specific test file
flutter test test/features/appointments/domain/usecases/get_appointments_test.dart

# With coverage
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

---

## 📚 Additional Resources

### Documentation

- [FHIR R4 Documentation](https://hl7.org/fhir/R4/)
- [Flutter Documentation](https://flutter.dev/docs)
- [Riverpod Documentation](https://riverpod.dev/)
- [Freezed Documentation](https://pub.dev/packages/freezed)

### Design Resources

- [Material Design 3](https://m3.material.io/)
- [Figma Design File](https://figma.com/altheacare-design)

### Backend Resources

- [GraphQL Best Practices](https://graphql.org/learn/best-practices/)
- [HAPI FHIR Documentation](https://hapifhir.io/)

---

## 🤝 Working with Claude

### Effective Prompts

#### ✅ Good Prompt

```
Create a Patient List screen for the Patient App that:
- Displays a list of appointments
- Shows patient avatar, name, date, time, status
- Includes pull-to-refresh
- Follows Clean Architecture
- Uses Riverpod for state management
- Extracts widgets to separate files
- Includes loading and error states
- Uses custom widgets (no direct Material widgets)
```

#### ❌ Bad Prompt

```
Make a patient screen
```

### Context to Provide

When asking Claude for help, provide:

1. **Which app** (Doctor, Patient, Caregiver, etc.)
2. **Feature name** (Appointments, Prescriptions, etc.)
3. **Specific requirement** (list view, details view, etc.)
4. **Any constraints** (must follow FHIR, offline support, etc.)

### Example Session

```
User: I'm working on the Patient App. I need to create a feature for
      viewing appointment history. It should:
      - Fetch appointments from GraphQL API
      - Display in a scrollable list
      - Show past and upcoming appointments separately
      - Follow our Clean Architecture pattern
      - Use Riverpod for state management

Claude: I'll create a complete Appointments feature following your
        architecture. Here's the structure:
        [Provides complete implementation]
```

---

## 📄 License & Credits

**AltheaCare Platform**  
© 2026 AltheaCare. All rights reserved.

**Made with ❤️ in Kolkata, India**

---

## 🔄 Document Version

**Version**: 1.0  
**Last Updated**: 17-February-2026  
**Maintained By**: AltheaCare Engineering Team

---

**This guide ensures consistency across all 12 apps in the AltheaCare ecosystem. Always refer to this document when starting new development or asking Claude for assistance.**
