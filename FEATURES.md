# AltheaCare Doctor App — Feature Documentation

This document provides a detailed description of every feature in the **AltheaCare Doctor** Flutter application, explains the data models that underpin them, and maps how the features interact with one another.

---

## Table of Contents

1. [Application Overview](#1-application-overview)
2. [Shared Core Concepts](#2-shared-core-concepts)
   - [Clinical Stability Index (CSI)](#21-clinical-stability-index-csi)
   - [Clinical Insight](#22-clinical-insight)
   - [Result / Failure Pattern](#23-result--failure-pattern)
3. [Feature Catalogue](#3-feature-catalogue)
   - [3.1 Authentication (Auth)](#31-authentication-auth)
   - [3.2 Onboarding](#32-onboarding)
   - [3.3 Dashboard](#33-dashboard)
   - [3.4 Risk Watch](#34-risk-watch)
   - [3.5 Digital Twin](#35-digital-twin)
   - [3.6 Clinical Correlation](#36-clinical-correlation)
   - [3.7 Telepresence (Video Consultations)](#37-telepresence-video-consultations)
   - [3.8 Ambient Scribe](#38-ambient-scribe)
   - [3.9 Scheduling](#39-scheduling)
   - [3.10 Order Execution](#310-order-execution)
   - [3.11 Collaboration](#311-collaboration)
   - [3.12 Notifications](#312-notifications)
   - [3.13 Portfolio](#313-portfolio)
   - [3.14 Wallet](#314-wallet)
   - [3.15 Profile](#315-profile)
   - [3.16 Settings](#316-settings)
   - [3.17 Menu (More)](#317-menu-more)
4. [Feature Interaction Map](#4-feature-interaction-map)
5. [Navigation & Routing](#5-navigation--routing)
6. [State Management Architecture](#6-state-management-architecture)

---

## 1. Application Overview

**AltheaCare Doctor** is an AI-powered mobile application built with Flutter for geriatricians and physicians managing elderly patients across senior living facilities. The app is the reference implementation of the broader AltheaCare ecosystem.

**Primary goals:**

| Goal | Supporting Features |
|------|---------------------|
| Real-time patient risk monitoring | Risk Watch, Digital Twin, Dashboard |
| AI-powered clinical documentation | Ambient Scribe, Clinical Correlation |
| Remote patient care | Telepresence, Collaboration |
| Clinical order management | Order Execution |
| Physician performance tracking | Portfolio, Wallet |

**Technology stack highlights:**

- **State management:** Riverpod (with code generation via `riverpod_annotation`)
- **Routing:** `go_router` with a `ShellRoute` for the main tab scaffold
- **Data models:** `freezed` + `json_serializable`
- **Charting:** `fl_chart`
- **Calendar:** `table_calendar`
- **Secure storage:** `flutter_secure_storage`
- **Backend:** Phase 1 is fully mocked; designed for GraphQL + FHIR R4 integration

---

## 2. Shared Core Concepts

These models are defined in `lib/shared/models/` and are consumed by multiple features.

### 2.1 Clinical Stability Index (CSI)

**File:** `lib/shared/models/clinical/clinical_stability_index.dart`

The CSI is the central risk-scoring engine of the entire app. It is a score from **0 (most critical) to 100 (fully stable)** computed by the `CSICalculator` utility.

**Inputs to the calculation:**

| Input | Effect on score |
|-------|-----------------|
| Vital signs (systolic BP, heart rate, SpO2, glucose) | Each abnormal vital deducts points |
| Medication non-adherence | −15 points |
| Recent incident (within 7 days) | Scaled deduction up to −10 points |
| More than 3 active chronic conditions | −5 points |

**Risk levels derived from score:**

| Score Range | Risk Level | Clinical Action |
|-------------|------------|-----------------|
| 0–20 | `critical` | Requires immediate attention |
| 21–40 | `high` | Review within 1 hour |
| 41–60 | `medium` | Review within 4 hours |
| 61–80 | `low` | Routine monitoring |
| 81–100 | `stable` | No immediate concerns |

**Used by:** Risk Watch, Dashboard, Digital Twin, Portfolio.

---

### 2.2 Clinical Insight

**File:** `lib/shared/models/clinical/clinical_insight.dart`

A structured AI-generated finding attached to a patient's data. Each insight contains:

- **Type:** `correlation`, `trend`, `deviation`, `prediction`, `medication`, `activity`
- **Severity:** `critical`, `warning`, `info`
- **Evidence points** (list of human-readable facts supporting the finding)
- **Recommendation** (actionable clinical advice)
- **Confidence score** (0–1 float)
- **Affected vitals / related medications**

Also defined here:
- `ClinicalCorrelation` — describes a causal or temporal link between two events with a `strength` value.
- `RiskPrediction` — probabilistic prediction for a specific risk type (fall, infection, dehydration, medication adverse event, hospitalization, deterioration).

**Used by:** Clinical Correlation (generated), Portfolio (displayed as AI insights).

---

### 2.3 Result / Failure Pattern

**File:** `lib/core/network/result.dart` / `lib/core/network/failures.dart`

All repository methods return `Result<T>` — a sealed union of `Result.success(T data)` and `Result.failure(Failure f)`. `Failure` subtypes cover validation, authentication, biometric, network, and unknown errors. This pattern propagates cleanly from the data layer to the presentation layer without throwing exceptions.

---

## 3. Feature Catalogue

### 3.1 Authentication (Auth)

**Location:** `lib/features/auth/`

**Purpose:** Manages doctor identity, session tokens, and secure credential storage.

**Key components:**

| Layer | File | Responsibility |
|-------|------|----------------|
| Domain entity | `Doctor` | FHIR Practitioner extension: id, name, email, specializations, facilities |
| Domain entity | `LoginCredentials` | Email + password with built-in validation |
| Domain entity | `AuthState` | Sealed union: initial / loading / authenticated / unauthenticated / error |
| Repository interface | `AuthRepository` | Defines login, biometricLogin, logout, refreshToken, getCurrentDoctor |
| Repository impl | `AuthRepositoryImpl` | Mock: accepts any email with password `password123`; stores tokens in `FlutterSecureStorage` |

**Authentication flows:**

1. **Email/password login** — credentials are validated client-side first, then sent to the repository. On success, `accessToken`, `refreshToken`, and `userId` are persisted in secure storage. An `AuditLogger` records every login attempt.
2. **Biometric login** — checks for a previously stored `userId`; if found, generates fresh tokens without re-entering credentials.
3. **Token refresh** — `refreshToken` call rotates both tokens; used proactively before expiry.
4. **Logout** — wipes all stored keys and writes an audit log entry.

**Interaction with other features:**
- The `currentDoctorProvider` (in `lib/features/auth/presentation/providers/auth_providers.dart`) is consumed by Profile, Dashboard, Wallet, Portfolio, and Scheduling to obtain the authenticated doctor ID without redundant fetches.
- The `AuditLogger` service used here is also callable from any other feature that accesses sensitive clinical data.

---

### 3.2 Onboarding

**Location:** `lib/features/onboarding/`

**Purpose:** First-run experience introducing the app's capabilities to new users.

The `OnboardingScreen` renders a 5-page `PageView`:

| Page | Topic |
|------|-------|
| 1 | Welcome to AltheaCare |
| 2 | Real-Time Patient Monitoring |
| 3 | AI Clinical Insights |
| 4 | Integrated Telepresence |
| 5 | Secure & Compliant |

On completion (or "Skip"), a flag is written to `SharedPreferences` so the screen is not shown again. The router's `SplashScreen` reads this flag and decides whether to redirect to `/onboarding` or `/dashboard`.

**Interaction:** One-time gate; after completion, routes permanently to the main app shell.

---

### 3.3 Dashboard

**Location:** `lib/features/dashboard/`

**Purpose:** The doctor's home screen — a single-screen summary of the most critical information drawn from multiple features.

**Data aggregated:**

| Section | Source Provider |
|---------|----------------|
| Today's stats (total patients, critical count, today's earnings, appointments) | `riskWatchProvider`, `walletProvider`, `schedulingProvider`, `portfolioProvider` |
| Quick action shortcuts | Static links to Risk Watch, Telepresence, Ambient Scribe, Orders |
| Critical patients list (top 5) | `riskWatchProvider` filtered to `ClinicalRiskLevel.critical` |
| Today's appointments (top 3) | `schedulingProvider.todayAppointments` |

**Refresh:** Tapping the pull-to-refresh gesture triggers parallel refresh of all four underlying providers simultaneously via `Future.wait`.

**Widgets:**
- `DashboardStatCard` — numeric KPI card with icon and label.
- `DashboardQuickActionCard` — tappable shortcut card.
- `DashboardPatientList` — inline mini-list of critical patients with CSI badges.

**Interaction:** Acts as the central navigation hub; does not own any data itself but aggregates state from Risk Watch, Wallet, Portfolio, and Scheduling.

---

### 3.4 Risk Watch

**Location:** `lib/features/risk_watch/`

**Purpose:** The primary patient monitoring screen — a live, filterable, searchable list of all assigned patients ranked by clinical urgency.

**Domain entity — `PatientSummary`:**

| Field | Description |
|-------|-------------|
| `csi` | `ClinicalStabilityIndex` (see §2.1) |
| `activeAlerts` | Human-readable alert strings (e.g. "BP spike detected") |
| `latestVitals` | Map of vital name → value (systolic, diastolic, heartRate, spO2, glucose) |
| `activeConditions` | List of active chronic conditions |
| `lastReviewedAt` / `lastReviewedBy` | Tracks when the doctor last looked at this patient |
| `needsUrgentReview` | Computed: true if critical, has active alerts, or has never been reviewed |

**State — `RiskWatchState`:**

- Full patient list, filtered/sorted patients
- Search query string
- Active risk-level filter (`ClinicalRiskLevel?`)
- Per-risk-level counts (used for the filter bar badges)
- Loading / error flags
- Auto-refresh timer (updates vitals periodically)

**UI components:**
- Search bar with live filtering
- `RiskFilterBar` — horizontal chip row showing counts per risk level; tapping a chip filters the list
- `PatientListItem` — each row shows name, room, facility, age, CSI score + colour badge, alert count, and time-since-review
- `CsiBadge` — reusable widget displaying the numeric CSI and a coloured risk label; shared with Digital Twin

**Interaction with other features:**
- Tapping a patient row marks it as reviewed (updates `lastReviewedAt`) and navigates to the **Digital Twin** screen for that patient.
- CSI data flows up to the **Dashboard** critical-patients list.
- CSI data flows to **Portfolio** for aggregate risk distribution.

---

### 3.5 Digital Twin

**Location:** `lib/features/digital_twin/`

**Purpose:** A deep-dive view for a single patient — a longitudinal "digital twin" of the patient's health, showing vitals over time, medication events, and caregiver notes.

**Domain entity — `VitalsTimeline`:**

| Sub-entity | Description |
|-----------|-------------|
| `BloodPressureDataPoint` | Timestamp, systolic, diastolic, isAbnormal |
| `VitalsDataPoint` | Timestamp, value, unit, isAbnormal (used for HR, SpO2, Glucose) |
| `MedicationMarker` | Timestamp, medication name, dosage, administered flag, administered-by |
| `CaregiverNote` | id, timestamp, author, content, type (observation / activity / feeding / hygiene / medication / incident / communication), tags |
| `VitalBaseline` | Mean, min, max, std-dev for each vital; used to detect deviations |

**Tabs in the UI:**
1. **Vitals** — Interactive `fl_chart` line charts for BP, HR, SpO2, and Glucose overlaid with medication markers. Abnormal readings are highlighted. Baseline band is drawn as a shaded region.
2. **Medications** — Timeline of administered vs missed medication events.
3. **Notes** — Filterable list of caregiver notes by type.

**Interaction with other features:**
- Navigated to from **Risk Watch** (passing `patientId`).
- Passes its `VitalsTimeline` directly to **Clinical Correlation** when the doctor taps "Analyse Correlations".
- Shows the patient's current CSI badge (shared widget from Risk Watch).

---

### 3.6 Clinical Correlation

**Location:** `lib/features/clinical_correlation/`

**Purpose:** AI-powered analysis engine that inspects a patient's `VitalsTimeline` and generates a ranked list of `ClinicalInsight` objects, surfacing hidden patterns invisible to manual review.

**Detection categories (implemented in `CorrelationDetector`):**

| Category | What it looks for |
|----------|-------------------|
| Medication–vital correlations | BP spike within 2 h of a missed dose; BP improvement within 4 h of an administered dose |
| Baseline deviations | HR or SpO2 average over the past 2 days deviates >15 % from the patient's personal baseline |
| Trend analysis | Linear regression on glucose readings over the week; flags a significant upward or downward slope |
| Risk predictions | Fall risk score derived from mobility notes + BP variability + fall-risk medications; infection indicators from elevated HR + low SpO2 |
| Activity correlations | Heart rate spike within 60 min of an activity note |

**Output:** Each `ClinicalInsight` includes:
- Severity badge (`critical` / `warning` / `info`)
- Human-readable title and description
- Bullet-point evidence list
- Actionable recommendation
- Confidence score (0–1)

**UI:**
- `ClinicalCorrelationScreen` lists all insights sorted by severity → confidence.
- Each insight is expandable to show evidence points and the recommendation.
- Doctors can "acknowledge" an insight to dismiss it from the active list.

**Interaction with other features:**
- Receives `VitalsTimeline` from **Digital Twin**.
- Shares the `ClinicalInsight` model with **Portfolio** (portfolio-level AI insights use the same data structure).

---

### 3.7 Telepresence (Video Consultations)

**Location:** `lib/features/telepresence/`

**Purpose:** Full lifecycle management of video consultations — scheduling, joining, and reviewing past sessions.

**Domain entity — `Consultation`:**

| Field | Description |
|-------|-------------|
| `type` | `routine`, `followUp`, `urgent`, `emergency`, `specialist` |
| `status` | `scheduled`, `waitingRoom`, `inProgress`, `completed`, `cancelled`, `noShow` |
| `roomId` / `roomToken` | Video room credentials generated on session start (Agora in production) |
| `participants` | Additional participant IDs (family members, nurses) |
| `recordingEnabled` / `consentGiven` | HIPAA-aligned recording consent flags |
| `metrics` | `ConsultationMetrics`: call duration, participant count, screen shared, connection quality, reconnect count |

**`CallParticipant`** describes each person in a call: role (`doctor`, `patient`, `family`, `nurse`, `specialist`), audio/video enabled state, connection quality, and host flag.

**`CallMessage`** represents in-call chat messages, which can be of type `text`, `systemNotification`, `vitalAlert`, or `fileShare`.

**UI screens:**
- `TelepresenceScreen` — tabbed list of Upcoming / In Progress / Past consultations.
- `ScheduleConsultationScreen` — form to book a new consultation (patient name, type, date/time, recording consent).
- `ActiveCallScreen` — the in-call view with video tiles, mute/camera toggles, in-call chat, and an end-call button.

**Interaction with other features:**
- **Ambient Scribe** is launched from within an active consultation to automatically transcribe and generate a clinical note.
- Completed consultations contribute earnings entries to the **Wallet** (consultation fee transactions).
- The consultation `reason` and `notes` fields feed into the patient's care record, accessible from Risk Watch / Digital Twin.

---

### 3.8 Ambient Scribe

**Location:** `lib/features/ambient_scribe/`

**Purpose:** Real-time speech-to-text transcription of a doctor–patient consultation, followed by AI-generated structured clinical documentation.

**Domain entity — `Transcript`:**
- List of `TranscriptSegment` objects, each with: speaker (`doctor`/`patient`), text, start/end time, confidence score, and extracted keywords.
- Overall confidence, language, and total duration.

**Domain entity — `ClinicalNote`:**

| Field | Description |
|-------|-------------|
| `format` | `soap` (Subjective / Objective / Assessment / Plan) or `structured` |
| `subjective` | Chief complaint, HPI, review of systems |
| `objective` | Vital signs, physical exam findings |
| `assessment` | Primary diagnosis, differential list |
| `plan` | Diagnostic tests, medications, follow-up instructions |
| `symptoms` / `diagnoses` / `medications` / `procedures` | Extracted lists |
| `icdCodes` / `cptCodes` | `ClinicalCode` objects with code, description, type, and AI confidence |
| `status` | `draft` → `pending` → `reviewed` → `signed` → `archived` |
| `confidence` | Overall AI confidence score (0–100) for the generated note |
| `reviewed` / `reviewedBy` / `reviewedAt` | Audit trail for doctor sign-off |

**Note templates** (from `MockScribeService`):
- Standard SOAP Note
- Geriatric Assessment
- Follow-up Visit

**Workflow:**

```
Microphone → SpeechToText → Transcript segments
                                      ↓
                         AI analysis (mock LLM)
                                      ↓
                      ClinicalNote (SOAP, ICD/CPT codes)
                                      ↓
                     Doctor reviews / edits → Signs
                                      ↓
                          Note stored to patient record
```

**Interaction with other features:**
- Launched from **Telepresence** during an active call.
- The generated `ClinicalNote` is linked to the `Consultation` via `consultationId`.
- Signed notes can be referenced in **Order Execution** (e.g. orders listed in the `plan` field).

---

### 3.9 Scheduling

**Location:** `lib/features/scheduling/`

**Purpose:** Calendar-based view of the doctor's appointment schedule, with drill-down to today's appointments.

**Domain entities:**

| Entity | Key Fields |
|--------|-----------|
| `Appointment` | patientId/Name, doctorId/Name, scheduledTime, durationMinutes, type, status, reason, location, isFollowUp |
| `TimeSlot` | startTime, durationMinutes, isAvailable, bookedBy |
| `DoctorSchedule` | date, list of slots, list of appointments; computed `availableSlots` and `totalAppointments` |

**Appointment types:** `consultation`, `followUp`, `procedure`, `checkup`, `emergency`

**Appointment statuses:** `scheduled` → `confirmed` → `checkedIn` → `inProgress` → `completed` / `cancelled` / `noShow`

**UI:**
- `SchedulingScreen` renders a `TableCalendar` with appointment-day markers. Selecting a day loads that day's schedule below the calendar. A FAB allows creating new appointments.
- Today's appointments are shown with time, patient name, and room.

**Interaction with other features:**
- `schedulingProvider` is watched by the **Dashboard** to show today's appointment count and the top-3 list.
- Upcoming appointments trigger **Notification** reminders.
- Completed appointments may create **Wallet** billing entries.

---

### 3.10 Order Execution

**Location:** `lib/features/order_execution/`

**Purpose:** Clinical order management — creating, tracking, and completing orders for medications, laboratory tests, imaging, procedures, and referrals.

**Domain entity — `ClinicalOrder`:**

| Field | Description |
|-------|-------------|
| `orderType` | `medication`, `lab`, `imaging`, `procedure`, `referral`, `other` |
| `status` | `draft` → `pending` → `approved` → `inProgress` → `completed` / `cancelled` |
| `urgent` | Boolean priority flag |
| `medicationDetails` | `MedicationOrderDetails`: medication name, dosage, route, frequency, duration, instructions, indication, generic-allowed, refills, pharmacy |
| `labDetails` | `LabOrderDetails`: test list, specimen type, fasting required, lab name |
| `procedureDetails` | `ProcedureOrderDetails`: procedure name, code, indication, anesthesia type, location |

**Order templates** allow one-tap creation of common orders (e.g. "Hypertension - Standard", "Lipid Profile", "Basic Metabolic Panel").

**Screens:**
- `OrdersScreen` — tabbed view: Active / Pending / Completed orders.
- `CreateMedicationScreen` — form for new medication orders.
- `OrderDetailsScreen` — full view of a single order with status history and cancel action.

**Interaction with other features:**
- Orders are initiated in context with a specific patient, linking to patient data from **Risk Watch** / **Digital Twin**.
- Medication orders create entries referenced in the **Digital Twin** vitals timeline as `MedicationMarker` objects.
- Lab orders, once resulted, feed back into the patient's clinical record and may trigger new **Clinical Correlation** insights.
- Prescriptions signed here become billable events for the **Wallet**.

---

### 3.11 Collaboration

**Location:** `lib/features/collaboration/`

**Purpose:** Multi-disciplinary care coordination — managing care teams, specialist referrals, secure messaging, and case discussions.

**Four tabs in `CollaborationScreen`:**

#### 1. Care Teams
- `CareTeam` entity: patientId, list of `TeamMember` objects.
- `TeamMember` roles: `primaryPhysician`, `specialist`, `nurse`, `physiotherapist`, `nutritionist`, `pharmacist`, `socialWorker`.
- Computed: `primaryPhysician`, `activeMembers`.

#### 2. Referrals
- `Referral` entity: from/to doctor, specialty, urgency (`routine`/`urgent`/`emergency`), clinical summary, attachments.
- Status flow: `pending` → `accepted` / `declined` → `completed` / `cancelled`.

#### 3. Secure Messaging
- `SecureMessage`: sender, recipient, subject, content, read status, optional patient context.

#### 4. Case Discussions
- `CaseDiscussion`: title, description, participant list, list of `DiscussionComment` objects, `isResolved` flag.

**Interaction with other features:**
- Referral creation is linked to a patient (from **Risk Watch** / **Digital Twin**).
- Messages arrive as **Notification** items of type `message`.
- Care team composition is visible from the patient's profile in the Digital Twin view.

---

### 3.12 Notifications

**Location:** `lib/features/notifications/`

**Purpose:** Centralised inbox for all app alerts and communications.

**`AppNotification` entity:**

| Field | Description |
|-------|-------------|
| `type` | `alert`, `reminder`, `message`, `consultation`, `system` |
| `title` / `body` | Display strings |
| `timestamp` | When the notification was generated |
| `isRead` | Read/unread flag |
| `actionUrl` | Deep-link to relevant screen |
| `data` | Arbitrary metadata (e.g. `patientId`) |

**State management (`NotificationState`):**
- Full list and filtered list (by type)
- Unread count
- Filter type

**Actions:**
- Mark individual notification as read.
- Mark all as read.
- Filter by type via radio-button dialog.
- Refresh (pull-to-refresh).

**Interaction with other features:**
- `alert` notifications originate from **Risk Watch** when a patient's CSI drops to critical.
- `reminder` notifications are driven by **Scheduling** (appointment reminders).
- `message` notifications come from **Collaboration** secure messaging.
- `consultation` notifications come from **Telepresence** (scheduled session upcoming).
- `system` notifications are platform-level (app updates, maintenance).
- The notification bell icon in the app bar shows the unread count badge from `notificationsProvider`.

---

### 3.13 Portfolio

**Location:** `lib/features/portfolio/`

**Purpose:** A high-level analytical summary of the doctor's patient panel — how patients are faring, AI-generated action items, and clinical outcome statistics.

**`PortfolioSummary` entity:**

| Sub-entity | Description |
|-----------|-------------|
| `PortfolioMetrics` | Total/active/critical/stable patient counts, average CSI, consultations this month, patient satisfaction score |
| `ClinicalOutcome` | Per-condition stats: total patients, improved/stable/declined counts, improvement rate % |
| `AIInsight` | Portfolio-level actionable insight (category, priority, affected patient count, action items) — uses same `InsightCategory`/`InsightPriority` enums as `ClinicalInsight` |
| `RiskDistribution` | Count per CSI risk level (critical/high/medium/low/stable) |
| `TopCondition` | Per-condition: patient count, average CSI, trend label (improving/stable/declining) |

**`AIInsight` categories:** `riskManagement`, `clinicalQuality`, `efficiency`, `patientEngagement`, `financialPerformance`

**UI (`PortfolioSummaryScreen`):**
- Header with doctor name and generation timestamp.
- Metrics cards (responsive grid).
- Risk distribution pie/bar chart.
- AI Insights list (sorted by priority).
- Clinical Outcomes section with per-condition bars.
- Top Conditions table.

**Interaction with other features:**
- Reads CSI data aggregated from **Risk Watch** (the same patient list, just counted differently).
- `AIInsight` structures mirror `ClinicalInsight` from the **Clinical Correlation** engine, making the portfolio insights a portfolio-wide extension of the per-patient correlation analysis.
- Patient satisfaction and consultation count data comes from **Scheduling** and **Telepresence** history.

---

### 3.14 Wallet

**Location:** `lib/features/wallet/`

**Purpose:** Physician earnings dashboard — balance, transaction history, billing records, and payment summaries.

**`PhysicianWallet` entity:**

| Field | Description |
|-------|-------------|
| `currentBalance` | Available balance (INR) |
| `totalEarnings` | Lifetime credited amount |
| `pendingAmount` | Sum of in-flight transactions |
| `withdrawnAmount` | Total withdrawn |
| `recentTransactions` | List of `Transaction` objects |

**`Transaction`:**
- `type`: `credit` (consultation fee received) or `debit` (withdrawal)
- `status`: `completed`, `pending`, `failed`, `refunded`
- Links to `patientName` and `consultationId` for credit entries

**`VisitBilling`:**
- Links a consultation to an invoice, payment method (insurance/cash), and `BillingStatus` (`pending`/`paid`/`overdue`/`cancelled`).

**`PaymentSummary`:** daily / weekly / monthly earnings, total / paid / pending visit counts, average per visit.

**UI (`WalletScreen`):**
- Gradient balance card at the top.
- Summary metric cards (today / week / month).
- Tabbed list: Transactions | Billings.

**Interaction with other features:**
- Credit transactions are created when a **Telepresence** consultation is completed.
- Billing entries reference **Scheduling** appointment IDs.
- Summary stats feed into the **Portfolio** `financialPerformance` insight category.

---

### 3.15 Profile

**Location:** `lib/features/profile/`

**Purpose:** View and edit the authenticated doctor's personal and professional information.

**`DoctorProfile` entity (separate from the `Doctor` auth entity):**

Fields: name, email, phone, avatarUrl, specialization, licenseNumber, bio, languages, address/city/state/pincode, dateOfBirth, gender, yearsOfExperience.

**Two screens:**
- `ViewProfileScreen` — read-only display using `CustomCard` and `CustomListItem` widgets; shows account info, specializations, and links to settings/logout.
- `EditProfileScreen` — full form with `WillPopScope` unsaved-changes guard; splits into Personal, Professional, and Address sections. Email and license number are read-only.

**Interaction with other features:**
- The `Doctor` entity from **Auth** is the source of truth for the app bar avatar and name displayed everywhere.
- `EditProfileScreen` saves to `profileProvider`, which in turn updates the mock backend (real API call in production).
- License number and specializations from the profile appear in **Collaboration** care team member cards and **Telepresence** consultation details.

---

### 3.16 Settings

**Location:** `lib/features/settings/`

**Purpose:** User preferences, privacy controls, and accessibility options.

**Setting groups:**

| Group | Options |
|-------|---------|
| Appearance | Theme (Light / Dark / System), Font Size |
| Notifications | Push Notifications toggle, Critical Alerts toggle, Appointment Reminders toggle |
| Language & Region | Language selector, Region selector |
| Privacy & Security | Change Password, Biometric Login toggle, Download My Data |
| Accessibility | High Contrast toggle, Large Text toggle |
| Data & Storage | Cache size display + clear action, Offline Mode toggle |
| Advanced | Developer Options |

**Theme management** is handled by `themeProvider` (in `lib/core/providers/theme_provider.dart`) — the `AppThemeMode` enum (`light`, `dark`, `system`) is persisted and watched app-wide via `MaterialApp.router`'s `themeMode` property.

**Interaction with other features:**
- Theme change via Settings immediately re-renders every screen.
- Notification toggles would control the **Notifications** feature's push delivery (to be wired to Firebase Messaging in production).
- Offline Mode toggle would put **Risk Watch**, **Digital Twin**, and **Scheduling** into a local-cache-only mode.
- Biometric Login toggle enables the biometric flow in **Auth**.

---

### 3.17 Menu (More)

**Location:** `lib/features/menu/`

**Purpose:** The "More" tab of the main bottom navigation — a gateway to secondary screens and informational pages.

**`MenuScreen`:** Grid of navigation cards linking to:
- Collaboration Hub
- Scheduling
- Order Execution
- Portfolio Summary
- Wallet
- Notifications
- Settings
- Profile
- Help & Support
- About

**`AboutScreen`:** App logo, version number (from `PackageInfo`), mission statement, and feature highlights.

**`HelpSupportScreen`:** FAQ accordion, contact support form, and links to documentation.

**Interaction:** Pure navigation hub — no domain data of its own. All cards deep-link into their respective feature screens.

---

## 4. Feature Interaction Map

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              AltheaCare Doctor App                              │
├─────────────────┬───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│   AUTH          │  Provides: currentDoctorProvider (doctorId)                   │
│                 │  Consumed by: Dashboard, Risk Watch, Wallet, Portfolio,        │
│                 │              Scheduling, Profile, Telepresence                 │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│   RISK WATCH    │  Provides: PatientSummary list with CSI scores                │
│                 │  → Dashboard (critical patient list, stats)                   │
│                 │  → Digital Twin (on patient tap)                              │
│                 │  → Portfolio (risk distribution, average CSI)                 │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ DIGITAL TWIN    │  Receives: patientId from Risk Watch                          │
│                 │  Provides: VitalsTimeline                                     │
│                 │  → Clinical Correlation (passes VitalsTimeline for analysis)  │
│                 │  → Shows: CSI badge (shared widget from Risk Watch)           │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ CLINICAL        │  Receives: VitalsTimeline from Digital Twin                   │
│ CORRELATION     │  Produces: List<ClinicalInsight>                              │
│                 │  → Displayed in Digital Twin tab                              │
│                 │  → Insight model reused in Portfolio AIInsight                │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ TELEPRESENCE    │  Provides: consultation sessions                               │
│                 │  → Ambient Scribe (launched during active call)               │
│                 │  → Wallet (completed consultations → credit transactions)      │
│                 │  → Notifications (consultation reminders)                     │
│                 │  → Scheduling (linked appointments)                           │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ AMBIENT SCRIBE  │  Receives: consultationId from Telepresence                   │
│                 │  Produces: ClinicalNote (SOAP, ICD/CPT codes)                 │
│                 │  → Stored with patient record                                 │
│                 │  → Referenced by Order Execution (orders from plan section)  │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ SCHEDULING      │  Provides: Appointment list, DoctorSchedule                  │
│                 │  → Dashboard (today's appointments)                           │
│                 │  → Notifications (appointment reminders)                     │
│                 │  → Wallet (appointments → billing entries)                   │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ ORDER           │  Receives: patientId context from Risk Watch / Digital Twin   │
│ EXECUTION       │  Provides: ClinicalOrder list                                 │
│                 │  → Medication orders → Digital Twin MedicationMarkers        │
│                 │  → Lab orders → eventual Clinical Correlation insights        │
│                 │  → Wallet (billable procedures)                               │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ COLLABORATION   │  Provides: CareTeam, Referral, SecureMessage, CaseDiscussion  │
│                 │  → Notifications (message / referral alerts)                 │
│                 │  → Digital Twin (care team members visible in patient view)   │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ NOTIFICATIONS   │  Receives push events from: Risk Watch (alerts),             │
│                 │  Scheduling (reminders), Collaboration (messages),            │
│                 │  Telepresence (consultations), System                         │
│                 │  → Displays unified inbox with per-type filter               │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ PORTFOLIO       │  Aggregates from: Risk Watch (CSI stats), Telepresence        │
│                 │  (consultation count), Scheduling (appointment count),        │
│                 │  Clinical Correlation (insight model)                         │
│                 │  → Dashboard (portfolio stats card)                          │
│                 │                                                               │
├─────────────────┼───────────────────────────────────────────────────────────────┤
│                 │                                                               │
│ WALLET          │  Aggregates from: Telepresence (credits),                    │
│                 │  Scheduling (billing), Order Execution (procedures)           │
│                 │  → Dashboard (today's earnings stat card)                    │
│                 │  → Portfolio (financialPerformance insights)                  │
│                 │                                                               │
└─────────────────┴───────────────────────────────────────────────────────────────┘
```

---

## 5. Navigation & Routing

**Router:** `GoRouter` in `lib/core/router/app_router.dart`

**Route structure:**

```
/               → SplashScreen (checks auth + onboarding state, redirects)
/onboarding     → OnboardingScreen (first-run only)
/login          → LoginScreen

ShellRoute (AppShell — bottom navigation bar)
  /dashboard        → DashboardScreen
  /risk-watch       → RiskWatchScreen
  /telepresence     → TelepresenceScreen
  /ambient-scribe   → AmbientScribeScreen
  /more             → MenuScreen

Standalone (no bottom nav)
  /notifications    → NotificationsScreen
  /settings         → SettingsScreen
  /profile          → ViewProfileScreen
  /profile/edit     → EditProfileScreen
  /about            → AboutScreen
  /help             → HelpSupportScreen
```

The `AppShell` widget wraps all `ShellRoute` children with a consistent bottom navigation bar (Dashboard, Risk Watch, Telepresence, Scribe, More) and a persistent app bar featuring the notification bell.

Deep-linked screens (digital twin, orders, scheduling, collaboration, portfolio, wallet) are accessed from within `MenuScreen` or from Dashboard / Risk Watch action taps; they are pushed onto the navigator stack as full-screen routes.

---

## 6. State Management Architecture

All state is managed with **Riverpod** using code-generated providers (`@riverpod` annotation).

**Provider naming convention:**

| Provider | Type | Scope |
|----------|------|-------|
| `authProvider` | `AsyncNotifier<AuthState>` | Global |
| `currentDoctorProvider` | `Provider<Doctor?>` | Derived from authProvider |
| `riskWatchProvider` | `Notifier<RiskWatchState>` | Global |
| `digitalTwinProvider(patientId)` | `FamilyNotifier<DigitalTwinState>` | Per patient |
| `telepresenceProvider` | `Notifier<TelepresenceState>` | Global |
| `schedulingProvider(doctorId)` | `FamilyNotifier<SchedulingState>` | Per doctor |
| `portfolioProvider(doctorId)` | `FamilyNotifier<PortfolioState>` | Per doctor |
| `walletProvider(doctorId)` | `FamilyNotifier<WalletState>` | Per doctor |
| `notificationsProvider` | `Notifier<NotificationState>` | Global |
| `collaborationProvider` | `Notifier<CollaborationState>` | Global |
| `profileProvider(doctorId)` | `FamilyNotifier<ProfileState>` | Per doctor |
| `themeProvider` | `Notifier<AppThemeMode>` | Global |

**Data flow (per feature):**

```
Mock/Real DataSource
       ↓
  Repository (Result<T>)
       ↓
  Riverpod Notifier (state class)
       ↓
  ConsumerWidget watches provider
       ↓
  Widget rebuilds on state change
```

All business logic lives exclusively in notifiers (never in widgets), and all data access goes through the repository interface (never calling data sources directly from notifiers or UI). This strict layering makes the codebase ready for swapping mock services with real GraphQL/FHIR backends without touching presentation code.
