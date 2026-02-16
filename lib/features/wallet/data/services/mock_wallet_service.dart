import 'dart:math';
import '../../domain/entities/wallet.dart';

class MockWalletService {
  static final _random = Random(42);

  static PhysicianWallet generateWallet(String doctorId) {
    final transactions = _generateTransactions(20);
    final totalEarnings = transactions
        .where(
          (t) =>
              t.type == TransactionType.credit &&
              t.status == TransactionStatus.completed,
        )
        .fold(0.0, (sum, t) => sum + t.amount);

    final pendingAmount = transactions
        .where((t) => t.status == TransactionStatus.pending)
        .fold(0.0, (sum, t) => sum + t.amount);

    return PhysicianWallet(
      doctorId: doctorId,
      currentBalance: 125000.0,
      totalEarnings: totalEarnings,
      pendingAmount: pendingAmount,
      withdrawnAmount: totalEarnings - 125000.0,
      recentTransactions: transactions,
      lastUpdated: DateTime.now(),
    );
  }

  static List<Transaction> _generateTransactions(int count) {
    return List.generate(count, (i) {
      final isCredit = _random.nextBool();
      return Transaction(
        id: 'txn-$i',
        type: isCredit ? TransactionType.credit : TransactionType.debit,
        amount: 500.0 + _random.nextInt(1500).toDouble(),
        description: isCredit
            ? 'Consultation fee - Patient ${String.fromCharCode(65 + i)}'
            : 'Withdrawal',
        date: DateTime.now().subtract(Duration(days: i)),
        status: TransactionStatus
            .values[_random.nextInt(TransactionStatus.values.length)],
        patientName: isCredit ? 'Patient ${String.fromCharCode(65 + i)}' : null,
        consultationId: isCredit ? 'consult-$i' : null,
      );
    });
  }

  static List<VisitBilling> generateVisitBillings(int count) {
    return List.generate(count, (i) {
      return VisitBilling(
        id: 'bill-$i',
        patientId: 'patient-$i',
        patientName: 'Patient ${String.fromCharCode(65 + i)}',
        consultationId: 'consult-$i',
        visitDate: DateTime.now().subtract(Duration(days: i)),
        amount: 800.0 + _random.nextInt(1200).toDouble(),
        status:
            BillingStatus.values[_random.nextInt(BillingStatus.values.length)],
        paymentMethod: _random.nextBool() ? 'Insurance' : 'Cash',
        invoiceNumber: 'INV-${1000 + i}',
      );
    });
  }

  static PaymentSummary generatePaymentSummary() {
    return const PaymentSummary(
      todayEarnings: 4500.0,
      weekEarnings: 28000.0,
      monthEarnings: 85000.0,
      totalVisitsThisMonth: 45,
      paidVisitsThisMonth: 38,
      pendingVisitsThisMonth: 7,
    );
  }
}
