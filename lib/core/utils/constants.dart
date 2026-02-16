/// Application-wide constants
class AppConstants {
  AppConstants._();

  // App Info
  static const String appName = 'Althea Experts';
  static const String appVersion = '1.0.0';

  // API Configuration (for future backend)
  static const String baseUrl = 'https://api.altheacare.com';
  static const String graphqlEndpoint = '$baseUrl/graphql';
  static const String wsEndpoint = 'wss://api.altheacare.com/graphql';

  // Timeouts
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Responsive Breakpoints
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 1024;
  static const double desktopBreakpoint = 1440;

  // Clinical Thresholds (for CSI calculations)
  static const double criticalBPSystolicHigh = 180;
  static const double criticalBPSystolicLow = 90;
  static const double criticalSpO2 = 92;
  static const double criticalHeartRateHigh = 120;
  static const double criticalHeartRateLow = 50;

  // Mock Data Seeds (for deterministic testing)
  static const int mockDataSeed = 42;
  static const int mockPatientCount = 50;

  // Compliance
  static const String fhirVersion = 'R4';
  static const String abdmVersion = '1.0';
}

/// Storage Keys
class StorageKeys {
  StorageKeys._();

  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';
  static const String userId = 'user_id';
  static const String themeMode = 'theme_mode';
  static const String lastSync = 'last_sync';
  static const String auditLog = 'audit_log';
}

/// Route Paths
class RoutePaths {
  RoutePaths._();

  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String riskWatch = '/home/risk-watch';
  static const String digitalTwin = '/home/digital-twin';
  static const String clinicalCorrelation = '/home/clinical-correlation';
  static const String orderExecution = '/home/order-execution';
  static const String telepresence = '/home/telepresence';
  static const String ambientScribe = '/home/ambient-scribe';
  static const String collaboration = '/home/collaboration';
  static const String wallet = '/home/wallet';
  static const String scheduling = '/home/scheduling';
  static const String portfolioSummary = '/home/portfolio-summary';
  static const String profile = '/profile';
}
