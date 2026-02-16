import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';
import 'package:uuid/uuid.dart';
import 'encryption_service.dart';

/// Audit event types for HIPAA compliance
enum AuditEventType {
  authentication,
  authorization,
  dataAccess,
  dataModification,
  dataExport,
  patientView,
  vitalView,
  prescriptionCreate,
  prescriptionModify,
  prescriptionDelete,
  videoConsultStart,
  videoConsultEnd,
  reportGenerate,
  dataSync,
  securityViolation,
  consentProvided,
  consentRevoked,
}

/// Audit event severity
enum AuditSeverity { info, warning, error, critical }

/// Audit event model
class AuditEvent {
  final String id;
  final DateTime timestamp;
  final AuditEventType eventType;
  final AuditSeverity severity;
  final String userId;
  final String? userName;
  final String action;
  final String? resourceType;
  final String? resourceId;
  final String? patientId;
  final Map<String, dynamic>? metadata;
  final String? ipAddress;
  final String? deviceInfo;
  final bool success;
  final String? errorMessage;

  AuditEvent({
    required this.id,
    required this.timestamp,
    required this.eventType,
    required this.severity,
    required this.userId,
    this.userName,
    required this.action,
    this.resourceType,
    this.resourceId,
    this.patientId,
    this.metadata,
    this.ipAddress,
    this.deviceInfo,
    required this.success,
    this.errorMessage,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'timestamp': timestamp.toIso8601String(),
    'eventType': eventType.name,
    'severity': severity.name,
    'userId': userId,
    'userName': userName,
    'action': action,
    'resourceType': resourceType,
    'resourceId': resourceId,
    'patientId': patientId,
    'metadata': metadata,
    'ipAddress': ipAddress,
    'deviceInfo': deviceInfo,
    'success': success,
    'errorMessage': errorMessage,
  };

  factory AuditEvent.fromJson(Map<String, dynamic> json) => AuditEvent(
    id: json['id'] as String,
    timestamp: DateTime.parse(json['timestamp'] as String),
    eventType: AuditEventType.values.firstWhere(
      (e) => e.name == json['eventType'],
    ),
    severity: AuditSeverity.values.firstWhere(
      (e) => e.name == json['severity'],
    ),
    userId: json['userId'] as String,
    userName: json['userName'] as String?,
    action: json['action'] as String,
    resourceType: json['resourceType'] as String?,
    resourceId: json['resourceId'] as String?,
    patientId: json['patientId'] as String?,
    metadata: json['metadata'] as Map<String, dynamic>?,
    ipAddress: json['ipAddress'] as String?,
    deviceInfo: json['deviceInfo'] as String?,
    success: json['success'] as bool,
    errorMessage: json['errorMessage'] as String?,
  );
}

/// HIPAA-compliant audit logger
class AuditLogger {
  static final AuditLogger _instance = AuditLogger._internal();
  factory AuditLogger() => _instance;
  AuditLogger._internal();

  final _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  final _storage = const FlutterSecureStorage();
  final _encryptionService = EncryptionService();
  final _uuid = const Uuid();

  static const String _auditLogKey = 'audit_log';
  static const int _maxLocalLogs = 1000; // Keep last 1000 logs locally

  /// Log an audit event
  Future<void> logEvent({
    required AuditEventType eventType,
    required AuditSeverity severity,
    required String userId,
    String? userName,
    required String action,
    String? resourceType,
    String? resourceId,
    String? patientId,
    Map<String, dynamic>? metadata,
    bool success = true,
    String? errorMessage,
  }) async {
    final event = AuditEvent(
      id: _uuid.v4(),
      timestamp: DateTime.now(),
      eventType: eventType,
      severity: severity,
      userId: userId,
      userName: userName,
      action: action,
      resourceType: resourceType,
      resourceId: resourceId,
      patientId: patientId,
      metadata: metadata,
      ipAddress: await _getIpAddress(),
      deviceInfo: await _getDeviceInfo(),
      success: success,
      errorMessage: errorMessage,
    );

    // Log to console based on severity
    _logToConsole(event);

    // Store encrypted log locally
    await _storeLocally(event);

    // TODO: Send to backend audit service (Phase 1+)
    // await _sendToBackend(event);
  }

  /// Log authentication event
  Future<void> logAuthentication({
    required String userId,
    required String action,
    required bool success,
    String? errorMessage,
  }) async {
    await logEvent(
      eventType: AuditEventType.authentication,
      severity: success ? AuditSeverity.info : AuditSeverity.warning,
      userId: userId,
      action: action,
      success: success,
      errorMessage: errorMessage,
    );
  }

  /// Log data access event (CRITICAL for HIPAA)
  Future<void> logDataAccess({
    required String userId,
    String? userName,
    required String resourceType,
    required String resourceId,
    String? patientId,
    String? action,
  }) async {
    await logEvent(
      eventType: AuditEventType.dataAccess,
      severity: AuditSeverity.info,
      userId: userId,
      userName: userName,
      action: action ?? 'View $resourceType',
      resourceType: resourceType,
      resourceId: resourceId,
      patientId: patientId,
      success: true,
    );
  }

  /// Log patient view (CRITICAL for HIPAA)
  Future<void> logPatientView({
    required String userId,
    String? userName,
    required String patientId,
    Map<String, dynamic>? context,
  }) async {
    await logEvent(
      eventType: AuditEventType.patientView,
      severity: AuditSeverity.info,
      userId: userId,
      userName: userName,
      action: 'View Patient Record',
      resourceType: 'Patient',
      resourceId: patientId,
      patientId: patientId,
      metadata: context,
      success: true,
    );
  }

  /// Log prescription creation
  Future<void> logPrescriptionCreate({
    required String userId,
    String? userName,
    required String prescriptionId,
    required String patientId,
    Map<String, dynamic>? details,
  }) async {
    await logEvent(
      eventType: AuditEventType.prescriptionCreate,
      severity: AuditSeverity.info,
      userId: userId,
      userName: userName,
      action: 'Create Prescription',
      resourceType: 'MedicationRequest',
      resourceId: prescriptionId,
      patientId: patientId,
      metadata: details,
      success: true,
    );
  }

  /// Log security violation (CRITICAL)
  Future<void> logSecurityViolation({
    required String userId,
    required String violation,
    Map<String, dynamic>? details,
  }) async {
    await logEvent(
      eventType: AuditEventType.securityViolation,
      severity: AuditSeverity.critical,
      userId: userId,
      action: 'Security Violation',
      metadata: {'violation': violation, ...?details},
      success: false,
      errorMessage: violation,
    );
  }

  /// Log video consult start
  Future<void> logVideoConsultStart({
    required String userId,
    String? userName,
    required String patientId,
    String? consultId,
  }) async {
    await logEvent(
      eventType: AuditEventType.videoConsultStart,
      severity: AuditSeverity.info,
      userId: userId,
      userName: userName,
      action: 'Start Video Consultation',
      resourceType: 'Encounter',
      resourceId: consultId,
      patientId: patientId,
      success: true,
    );
  }

  /// Log video consult end
  Future<void> logVideoConsultEnd({
    required String userId,
    String? userName,
    required String patientId,
    String? consultId,
    Duration? duration,
  }) async {
    await logEvent(
      eventType: AuditEventType.videoConsultEnd,
      severity: AuditSeverity.info,
      userId: userId,
      userName: userName,
      action: 'End Video Consultation',
      resourceType: 'Encounter',
      resourceId: consultId,
      patientId: patientId,
      metadata: {'durationSeconds': duration?.inSeconds},
      success: true,
    );
  }

  /// Get audit logs (decrypted)
  Future<List<AuditEvent>> getAuditLogs({int? limit}) async {
    try {
      final encryptedData = await _storage.read(key: _auditLogKey);
      if (encryptedData == null) return [];

      final decryptedData = _encryptionService.decrypt(encryptedData);
      final List<dynamic> jsonList = jsonDecode(decryptedData);

      final logs = jsonList
          .map((json) => AuditEvent.fromJson(json as Map<String, dynamic>))
          .toList();

      // Sort by timestamp descending
      logs.sort((a, b) => b.timestamp.compareTo(a.timestamp));

      return limit != null ? logs.take(limit).toList() : logs;
    } catch (e) {
      _logger.e('Failed to retrieve audit logs', error: e);
      return [];
    }
  }

  /// Clear old audit logs (keep last N)
  Future<void> pruneOldLogs() async {
    try {
      final logs = await getAuditLogs();
      if (logs.length > _maxLocalLogs) {
        final recentLogs = logs.take(_maxLocalLogs).toList();
        await _saveAllLogs(recentLogs);
      }
    } catch (e) {
      _logger.e('Failed to prune audit logs', error: e);
    }
  }

  /// Export audit logs for compliance reporting
  Future<String> exportAuditLogs({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    final logs = await getAuditLogs();

    final filteredLogs = logs.where((log) {
      if (startDate != null && log.timestamp.isBefore(startDate)) return false;
      if (endDate != null && log.timestamp.isAfter(endDate)) return false;
      return true;
    }).toList();

    return jsonEncode(filteredLogs.map((log) => log.toJson()).toList());
  }

  // Private methods

  void _logToConsole(AuditEvent event) {
    final message =
        '[${event.eventType.name}] ${event.action} by ${event.userName ?? event.userId}';

    switch (event.severity) {
      case AuditSeverity.info:
        _logger.i(message, error: event.metadata);
        break;
      case AuditSeverity.warning:
        _logger.w(message, error: event.metadata);
        break;
      case AuditSeverity.error:
        _logger.e(message, error: event.metadata);
        break;
      case AuditSeverity.critical:
        _logger.f(message, error: event.metadata);
        break;
    }
  }

  Future<void> _storeLocally(AuditEvent event) async {
    try {
      final logs = await getAuditLogs();
      logs.insert(0, event); // Add to beginning

      // Keep only recent logs
      final recentLogs = logs.take(_maxLocalLogs).toList();
      await _saveAllLogs(recentLogs);
    } catch (e) {
      _logger.e('Failed to store audit event locally', error: e);
    }
  }

  Future<void> _saveAllLogs(List<AuditEvent> logs) async {
    try {
      final jsonData = jsonEncode(logs.map((log) => log.toJson()).toList());
      final encryptedData = _encryptionService.encrypt(jsonData);
      await _storage.write(key: _auditLogKey, value: encryptedData);
    } catch (e) {
      _logger.e('Failed to save audit logs', error: e);
    }
  }

  Future<String?> _getIpAddress() async {
    // TODO: Implement IP address retrieval
    return null;
  }

  Future<String?> _getDeviceInfo() async {
    // TODO: Implement device info retrieval
    return 'Flutter-Web'; // Placeholder
  }
}
