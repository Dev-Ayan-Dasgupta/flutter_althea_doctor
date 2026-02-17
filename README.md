# AltheaCare Doctor - AI-Powered Geriatric Care Platform

![Flutter](https://img.shields.io/badge/Flutter-3.19+-blue.svg)
![Dart](https://img.shields.io/badge/Dart-3.3+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

AltheaCare Doctor is a comprehensive, AI-powered mobile application designed to revolutionize geriatric care through intelligent patient monitoring, clinical documentation, and care coordination.

---

## **✨ Features**

### **🎯 Core Features**

- **Risk Watch** - Real-time patient monitoring with Clinical Stability Index (CSI)
- **Digital Twin** - Interactive vitals timeline and trend analysis
- **Clinical Correlation** - AI-powered clinical insights and recommendations
- **Order Execution** - Digital prescription management with drug interactions
- **Telepresence** - Integrated video consultations with note-taking
- **Ambient Scribe** - AI-powered clinical documentation with voice transcription
- **Collaboration Hub** - Multi-disciplinary care team coordination
- **Physician Wallet** - Earnings tracking and billing management

### **🤖 AI-Powered Features**

- Automated SOAP note generation
- Clinical risk stratification
- Medication interaction detection
- ICD-11 & CPT code suggestions
- Predictive health analytics
- AI-generated clinical insights

### **👥 User Experience**

- Dark/Light/System theme support
- Offline mode capability
- Real-time notifications
- Multi-language support (English, Hindi, Bengali)
- Accessibility features
- FHIR R4 compliant data models

---

## **🏗️ Architecture**

```
lib/
├── core/                          # Core functionality
│   ├── theme/                     # Theme & Design System
│   ├── router/                    # Navigation & Routing
│   ├── providers/                 # Global State Management
│   ├── widgets/                   # Reusable UI Components
│   └── utils/                     # Utilities & Extensions
│
├── shared/                        # Shared Models & Services
│   ├── models/                    # FHIR Models, Clinical Data
│   └── services/                  # Common Services
│
└── features/                      # Feature Modules
    ├── auth/                      # Authentication
    ├── dashboard/                 # Dashboard & Overview
    ├── risk_watch/                # Patient Risk Monitoring
    ├── digital_twin/              # Vitals Timeline
    ├── clinical_correlation/      # AI Clinical Insights
    ├── order_execution/           # Prescriptions & Orders
    ├── telepresence/              # Video Consultations
    ├── ambient_scribe/            # AI Documentation
    ├── collaboration/             # Care Team Coordination
    ├── wallet/                    # Billing & Earnings
    ├── portfolio/                 # Portfolio Analytics
    ├── scheduling/                # Appointment Management
    ├── notifications/             # Notification Center
    ├── settings/                  # App Settings
    ├── profile/                   # Doctor Profile
    ├── menu/                      # Menu & Legal
    └── onboarding/                # First-time User Guide
```

### **Tech Stack**

- **Framework**: Flutter 3.19+
- **State Management**: Riverpod 2.5+
- **Code Generation**: Freezed, Riverpod Generator
- **Routing**: GoRouter
- **Data Models**: FHIR R4 (HL7)
- **Video**: Agora SDK
- **Charts**: FL Chart
- **HTTP**: Dio
- **Local Storage**: SharedPreferences, Hive

---

## **🚀 Getting Started**

### **Prerequisites**

```bash
Flutter SDK: 3.19.0 or higher
Dart SDK: 3.3.0 or higher
```

### **Installation**

1. **Clone the repository**

```bash
git clone https://github.com/yourusername/althea-doctor.git
cd althea-doctor
```

2. **Install dependencies**

```bash
flutter pub get
```

3. **Generate code**

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Run the app**

```bash
flutter run
```

---

## **📦 Code Generation**

This project uses code generation for:

- **Freezed** (Immutable models)
- **Riverpod** (State management)
- **JSON Serialization**

### **Generate code:**

```bash
# Generate once
flutter pub run build_runner build --delete-conflicting-outputs

# Watch for changes (development)
flutter pub run build_runner watch --delete-conflicting-outputs
```

### **Files requiring generation:**

See `FREEZED_GENERATION.md` for complete list.

---

## **🎨 Design System**

### **Color Palette**

- **Primary**: `#6366F1` (Indigo)
- **Secondary**: `#8B5CF6` (Purple)
- **Critical**: `#EF4444` (Red)
- **Warning**: `#F59E0B` (Amber)
- **Success**: `#10B981` (Green)
- **Info**: `#3B82F6` (Blue)
- **Stable**: `#6B7280` (Gray)

### **Typography**

- **Display**: Poppins
- **Body**: Inter
- **Scale**: Material Design 3 Type Scale

---

## **🔐 Security & Compliance**

- ✅ **HIPAA Compliant** architecture
- ✅ **FHIR R4** standard data models
- ✅ **End-to-end encryption** for consultations
- ✅ **Secure local storage** with encryption
- ✅ **ABDM (Ayushman Bharat Digital Mission)** ready
- ✅ **Role-based access control**

---

## **📱 Screens & Features**

| Screen               | Description                | Status      |
| -------------------- | -------------------------- | ----------- |
| Splash & Onboarding  | First-time user experience | ✅ Complete |
| Authentication       | Login & Registration       | ✅ Complete |
| Dashboard            | Overview & Quick Actions   | ✅ Complete |
| Risk Watch           | Patient list with CSI      | ✅ Complete |
| Patient Details      | Comprehensive patient view | ✅ Complete |
| Digital Twin         | Vitals timeline & trends   | ✅ Complete |
| Clinical Correlation | AI insights                | ✅ Complete |
| Order Execution      | Digital prescriptions      | ✅ Complete |
| Telepresence         | Video consultations        | ✅ Complete |
| Ambient Scribe       | AI documentation           | ✅ Complete |
| Collaboration Hub    | Care team coordination     | ✅ Complete |
| Physician Wallet     | Earnings & billing         | ✅ Complete |
| Portfolio Summary    | AI analytics               | ✅ Complete |
| Scheduling           | Appointment management     | ✅ Complete |
| Notifications        | Categorized notifications  | ✅ Complete |
| Settings             | Theme, notifications, etc. | ✅ Complete |
| Profile              | Doctor profile management  | ✅ Complete |
| Help & Support       | FAQs & contact             | ✅ Complete |
| About                | App info & version         | ✅ Complete |

---

## **🔌 API Integration**

### **Mock Services (Current)**

The app currently uses mock services for development:

- `MockPatientService`
- `MockVitalsService`
- `MockCollaborationService`
- `MockWalletService`
- `MockPortfolioService`
- `MockSchedulingService`

### **Production Integration**

For production, replace mock services with:

1. **Backend API** (REST/GraphQL)
2. **FHIR Server** (HAPI FHIR, Azure FHIR, AWS HealthLake)
3. **AI Services** (OpenAI, Google Gemini, Azure Cognitive)
4. **Video SDK** (Agora, Twilio, 100ms)
5. **Speech-to-Text** (Google Cloud, Azure, AssemblyAI)

---

## **🧪 Testing**

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# View coverage report
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

---

## **📦 Build & Release**

### **Android**

```bash
# Build APK
flutter build apk --release

# Build App Bundle
flutter build appbundle --release
```

### **iOS**

```bash
# Build IPA
flutter build ipa --release
```

---

## **🌍 Environment Configuration**

Create `.env` file in project root:

```env
API_BASE_URL=https://api.altheacare.com
FHIR_SERVER_URL=https://fhir.altheacare.com
AGORA_APP_ID=your_agora_app_id
OPENAI_API_KEY=your_openai_key
GOOGLE_GEMINI_KEY=your_gemini_key
```

---

## **📝 License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## **👥 Team**

**Made with ❤️ in Kolkata, India**

### **Contributors**

- Lead Developer: [Your Name]
- UI/UX Design: [Designer Name]
- Medical Advisor: [Doctor Name]

---

## **📞 Support**

- **Email**: support@altheacare.com
- **Phone**: +91-1800-123-4567
- **Website**: https://altheacare.com
- **Documentation**: https://docs.altheacare.com

---

## **🗺️ Roadmap**

### **Phase 1** ✅ (Complete)

- Core patient monitoring
- Digital Twin vitals timeline
- Clinical documentation
- Video consultations
- Collaboration tools

### **Phase 2** 🚧 (In Progress)

- Real AI integration (OpenAI/Gemini)
- FHIR server integration
- ABDM (Ayushman Bharat) integration
- Advanced analytics dashboard
- Multi-facility support

### **Phase 3** 📋 (Planned)

- Wearable device integration
- Telemedicine marketplace
- Clinical decision support
- Research & trials module
- IoT medical devices integration

---

## **🙏 Acknowledgments**

- **FHIR**: HL7 International
- **Flutter**: Google
- **Riverpod**: Remi Rousselet
- **Design**: Material Design 3
- **Medical Standards**: WHO, ICD-11, SNOMED CT

---

**© 2026 AltheaCare. All rights reserved.**
