# Althea Experts - Project Structure

This document outlines the project structure following Clean Architecture principles with a feature-first approach.

## Directory Structure

```
lib/
├── core/                           # Core infrastructure
│   ├── di/                         # Dependency Injection (Riverpod providers)
│   ├── network/                    # Network layer
│   │   ├── graphql_client.dart     # GraphQL client wrapper
│   │   ├── result.dart             # Result type (Either pattern)
│   │   └── failures.dart           # Failure models
│   ├── router/                     # Navigation
│   │   └── app_router.dart         # Go_Router configuration
│   ├── services/                   # Core services
│   │   ├── audit_logger.dart       # HIPAA audit logging
│   │   ├── encryption_service.dart # AES-256 encryption
│   │   └── mock_data_service.dart  # Mock data generation
│   ├── theme/                      # Design system
│   │   ├── app_theme.dart          # Theme configuration
│   │   ├── color_palette.dart      # Colors & gradients
│   │   └── typography.dart         # Typography system
│   ├── utils/                      # Utilities
│   │   ├── constants.dart          # App constants
│   │   ├── extensions.dart         # Dart extensions
│   │   └── responsive.dart         # Responsive utilities
│   └── widgets/                    # Reusable custom widgets
│       ├── custom_button.dart
│       ├── custom_card.dart
│       ├── custom_list_item.dart
│       ├── gradient_text.dart
│       └── gradient_container.dart
│
├── features/                       # Feature modules (to be added in phases)
│   ├── auth/                       # Phase 1
│   ├── risk_watch/                 # Phase 2
│   ├── digital_twin/               # Phase 3
│   ├── clinical_correlation/       # Phase 4
│   ├── order_execution/            # Phase 5
│   ├── telepresence/               # Phase 6
│   ├── ambient_scribe/             # Phase 7
│   ├── collaboration/              # Phase 8
│   ├── wallet/                     # Phase 8
│   ├── scheduling/                 # Phase 8
│   └── portfolio_summary/          # Phase 9
│
├── shared/                         # Shared across features
│   └── models/                     # Shared domain models
│       └── fhir/                   # FHIR R4 models
│           ├── patient.dart
│           ├── observation.dart
│           └── medication_request.dart
│
└── main.dart                       # App entry point
```

## Feature Module Structure (Clean Architecture)

Each feature follows this structure:

```
feature_name/
├── data/
│   ├── datasources/
│   │   ├── remote_datasource.dart      # API calls
│   │   └── local_datasource.dart       # Cache/DB
│   ├── models/
│   │   └── feature_model.dart          # Data transfer objects
│   └── repositories/
│       └── feature_repository_impl.dart
│
├── domain/
│   ├── entities/
│   │   └── feature_entity.dart         # Business objects
│   ├── repositories/
│   │   └── feature_repository.dart     # Repository interface
│   └── usecases/
│       └── get_feature_usecase.dart
│
├── presentation/
│   ├── screens/
│   │   └── feature_screen.dart
│   ├── widgets/
│   │   └── feature_widget.dart
│   └── state/
│       └── feature_notifier.dart       # Riverpod state management
│
└── providers/
    └── feature_providers.dart          # Riverpod providers
```

## Key Principles

### 1. **Clean Architecture Layers**

- **Data Layer**: Handles data sources (API, local storage)
- **Domain Layer**: Business logic and entities
- **Presentation Layer**: UI and state management

### 2. **Dependency Rule**

- Dependencies point inward (Presentation → Domain ← Data)
- Domain layer has no dependencies on outer layers

### 3. **Feature-First Organization**

- Features are self-contained modules
- Easy to add, remove, or modify features
- Better code organization for large projects

### 4. **State Management (Riverpod 3)**

- Providers defined at feature level
- Global providers in `core/di/`
- Code generation with `riverpod_generator`

### 5. **FHIR Compliance**

- All clinical data follows FHIR R4 standard
- Models in `shared/models/fhir/`
- Backend sync with Google Health Cloud + ABDM

### 6. **Security & Compliance**

- Audit logging for all data access (HIPAA)
- AES-256 encryption for sensitive data (DPDP)
- Secure storage for tokens and keys

## Phase 0 Complete ✅

You now have:

- ✅ Complete design system (theme, colors, typography)
- ✅ Custom widgets (buttons, cards, list items)
- ✅ Network layer (GraphQL, Result pattern, Failures)
- ✅ FHIR models (Patient, Observation, MedicationRequest)
- ✅ Mock data service
- ✅ Compliance layer (audit logging, encryption)
- ✅ Router configuration
- ✅ Utilities and extensions

## Next Steps

1. Run code generation:

   ```bash
   flutter pub get
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

2. Test the app:

   ```bash
   flutter run -d chrome  # For web
   flutter run            # For mobile/desktop
   ```

3. Begin Phase 1: Authentication & Shell Navigation

```

```
