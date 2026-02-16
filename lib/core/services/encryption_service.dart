import 'dart:convert';
import 'dart:typed_data';
import 'package:encrypt/encrypt.dart' as encrypt_lib;
import 'package:crypto/crypto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// HIPAA-compliant encryption service using AES-256
class EncryptionService {
  static final EncryptionService _instance = EncryptionService._internal();
  factory EncryptionService() => _instance;
  EncryptionService._internal();

  final _storage = const FlutterSecureStorage();

  static const String _encryptionKeyStorageKey = 'encryption_master_key';
  static const String _ivStorageKey = 'encryption_iv';

  encrypt_lib.Key? _masterKey;
  encrypt_lib.IV? _iv;

  /// Initialize encryption service
  Future<void> initialize() async {
    await _loadOrGenerateKeys();
  }

  /// Encrypt sensitive data (HIPAA-compliant AES-256)
  String encrypt(String plainText) {
    if (_masterKey == null || _iv == null) {
      throw Exception('Encryption service not initialized');
    }

    final encrypter = encrypt_lib.Encrypter(
      encrypt_lib.AES(_masterKey!, mode: encrypt_lib.AESMode.cbc),
    );

    final encrypted = encrypter.encrypt(plainText, iv: _iv);
    return encrypted.base64;
  }

  /// Decrypt sensitive data
  String decrypt(String encryptedText) {
    if (_masterKey == null || _iv == null) {
      throw Exception('Encryption service not initialized');
    }

    final encrypter = encrypt_lib.Encrypter(
      encrypt_lib.AES(_masterKey!, mode: encrypt_lib.AESMode.cbc),
    );

    final encrypted = encrypt_lib.Encrypted.fromBase64(encryptedText);
    return encrypter.decrypt(encrypted, iv: _iv);
  }

  /// Encrypt binary data (for files, images)
  Uint8List encryptBytes(Uint8List plainBytes) {
    if (_masterKey == null || _iv == null) {
      throw Exception('Encryption service not initialized');
    }

    final encrypter = encrypt_lib.Encrypter(
      encrypt_lib.AES(_masterKey!, mode: encrypt_lib.AESMode.cbc),
    );

    final encrypted = encrypter.encryptBytes(plainBytes, iv: _iv);
    return encrypted.bytes;
  }

  /// Decrypt binary data
  Uint8List decryptBytes(Uint8List encryptedBytes) {
    if (_masterKey == null || _iv == null) {
      throw Exception('Encryption service not initialized');
    }

    final encrypter = encrypt_lib.Encrypter(
      encrypt_lib.AES(_masterKey!, mode: encrypt_lib.AESMode.cbc),
    );

    final encrypted = encrypt_lib.Encrypted(encryptedBytes);
    return Uint8List.fromList(encrypter.decryptBytes(encrypted, iv: _iv));
  }

  /// Hash sensitive data (one-way, for passwords, tokens)
  String hash(String data) {
    final bytes = utf8.encode(data);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  /// Generate HMAC for data integrity verification
  String generateHmac(String data, String secret) {
    final key = utf8.encode(secret);
    final bytes = utf8.encode(data);
    final hmac = Hmac(sha256, key);
    final digest = hmac.convert(bytes);
    return digest.toString();
  }

  /// Verify HMAC
  bool verifyHmac(String data, String secret, String hmacToVerify) {
    final generatedHmac = generateHmac(data, secret);
    return generatedHmac == hmacToVerify;
  }

  /// Rotate encryption keys (for security best practices)
  Future<void> rotateKeys() async {
    // Generate new keys
    final newKey = encrypt_lib.Key.fromSecureRandom(32); // AES-256
    final newIv = encrypt_lib.IV.fromSecureRandom(16);

    // Store new keys
    await _storage.write(key: _encryptionKeyStorageKey, value: newKey.base64);
    await _storage.write(key: _ivStorageKey, value: newIv.base64);

    _masterKey = newKey;
    _iv = newIv;
  }

  /// Clear encryption keys (on logout)
  Future<void> clearKeys() async {
    await _storage.delete(key: _encryptionKeyStorageKey);
    await _storage.delete(key: _ivStorageKey);
    _masterKey = null;
    _iv = null;
  }

  // Private methods

  Future<void> _loadOrGenerateKeys() async {
    // Try to load existing keys
    final storedKey = await _storage.read(key: _encryptionKeyStorageKey);
    final storedIv = await _storage.read(key: _ivStorageKey);

    if (storedKey != null && storedIv != null) {
      _masterKey = encrypt_lib.Key.fromBase64(storedKey);
      _iv = encrypt_lib.IV.fromBase64(storedIv);
    } else {
      // Generate new keys
      _masterKey = encrypt_lib.Key.fromSecureRandom(32); // AES-256
      _iv = encrypt_lib.IV.fromSecureRandom(16);

      // Store keys securely
      await _storage.write(
        key: _encryptionKeyStorageKey,
        value: _masterKey!.base64,
      );
      await _storage.write(key: _ivStorageKey, value: _iv!.base64);
    }
  }
}
