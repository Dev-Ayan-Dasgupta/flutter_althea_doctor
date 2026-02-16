import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/wallet.dart';
import '../../data/services/mock_wallet_service.dart';

part 'wallet_notifier.g.dart';

class WalletState {
  final PhysicianWallet? wallet;
  final PaymentSummary? summary;
  final List<VisitBilling> billings;
  final bool isLoading;
  final String? error;

  WalletState({
    this.wallet,
    this.summary,
    this.billings = const [],
    this.isLoading = false,
    this.error,
  });

  WalletState copyWith({
    PhysicianWallet? wallet,
    PaymentSummary? summary,
    List<VisitBilling>? billings,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return WalletState(
      wallet: wallet ?? this.wallet,
      summary: summary ?? this.summary,
      billings: billings ?? this.billings,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

@riverpod
class Wallet extends _$Wallet {
  @override
  WalletState build(String doctorId) {
    _loadWallet(doctorId);
    return WalletState(isLoading: true);
  }

  Future<void> _loadWallet(String doctorId) async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      state = state.copyWith(
        wallet: MockWalletService.generateWallet(doctorId),
        summary: MockWalletService.generatePaymentSummary(),
        billings: MockWalletService.generateVisitBillings(20),
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load wallet: $e',
      );
    }
  }

  Future<void> refresh() async => _loadWallet(doctorId);
}
