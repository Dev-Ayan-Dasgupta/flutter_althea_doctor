import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.freezed.dart';

/// Physician wallet
@freezed
abstract class PhysicianWallet with _$PhysicianWallet {
  const factory PhysicianWallet({
    required String doctorId,
    required double currentBalance,
    required double totalEarnings,
    required double pendingAmount,
    required double withdrawnAmount,
    required List<Transaction> recentTransactions,
    DateTime? lastUpdated,
  }) = _PhysicianWallet;

  const PhysicianWallet._();

  /// Get earnings this month
  double getEarningsThisMonth() {
    final now = DateTime.now();
    final thisMonth = recentTransactions.where(
      (t) =>
          t.date.year == now.year &&
          t.date.month == now.month &&
          t.type == TransactionType.credit,
    );

    return thisMonth.fold(0.0, (sum, t) => sum + t.amount);
  }
}

/// Transaction
@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required TransactionType type,
    required double amount,
    required String description,
    required DateTime date,
    required TransactionStatus status,
    String? patientName,
    String? consultationId,
    String? invoiceId,
  }) = _Transaction;
}

/// Transaction types
enum TransactionType {
  credit, // Money in
  debit, // Money out
  pending, // Pending payment
}

/// Transaction status
enum TransactionStatus { completed, pending, failed, refunded }

/// Visit billing
@freezed
abstract class VisitBilling with _$VisitBilling {
  const factory VisitBilling({
    required String id,
    required String patientId,
    required String patientName,
    required String consultationId,
    required DateTime visitDate,
    required double amount,
    required BillingStatus status,
    String? paymentMethod,
    DateTime? paidAt,
    String? invoiceNumber,
  }) = _VisitBilling;
}

/// Billing status
enum BillingStatus { pending, paid, overdue, cancelled }

/// Payment summary
@freezed
abstract class PaymentSummary with _$PaymentSummary {
  const factory PaymentSummary({
    required double todayEarnings,
    required double weekEarnings,
    required double monthEarnings,
    required int totalVisitsThisMonth,
    required int paidVisitsThisMonth,
    required int pendingVisitsThisMonth,
  }) = _PaymentSummary;

  const PaymentSummary._();

  double get averagePerVisit {
    return totalVisitsThisMonth > 0 ? monthEarnings / totalVisitsThisMonth : 0;
  }
}
