import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/portfolio_summary.dart';
import '../../data/services/mock_portfolio_service.dart';

part 'portfolio_notifier.g.dart';

class PortfolioState {
  final PortfolioSummary? summary;
  final bool isLoading;
  final String? error;

  PortfolioState({this.summary, this.isLoading = false, this.error});

  PortfolioState copyWith({
    PortfolioSummary? summary,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return PortfolioState(
      summary: summary ?? this.summary,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

@riverpod
class Portfolio extends _$Portfolio {
  @override
  PortfolioState build(String doctorId) {
    _loadSummary(doctorId);
    return PortfolioState(isLoading: true);
  }

  Future<void> _loadSummary(String doctorId) async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await Future.delayed(const Duration(milliseconds: 800));

      final summary = MockPortfolioService.generatePortfolioSummary(doctorId);

      state = state.copyWith(summary: summary, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load portfolio: $e',
      );
    }
  }

  Future<void> refresh() async => _loadSummary(doctorId);
}
