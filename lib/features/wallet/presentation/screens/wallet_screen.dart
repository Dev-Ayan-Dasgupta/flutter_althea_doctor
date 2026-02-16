import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/color_palette.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/entities/wallet.dart';
import '../state/wallet_notifier.dart';

class WalletScreen extends ConsumerWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(walletProvider('doc-001')); // TODO: Get from auth
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (state.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (state.wallet == null) {
      return const Scaffold(body: Center(child: Text('No wallet data')));
    }

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(walletProvider('doc-001').notifier).refresh();
        },
        child: CustomScrollView(
          slivers: [
            // Balance card
            SliverToBoxAdapter(
              child: _buildBalanceCard(context, state.wallet!, isDark),
            ),

            // Summary cards
            if (state.summary != null)
              SliverToBoxAdapter(
                child: _buildSummaryCards(context, state.summary!, isDark),
              ),

            // Tabs
            SliverPersistentHeader(
              pinned: true,
              delegate: _TabBarDelegate(
                TabBar(
                  tabs: const [
                    Tab(text: 'Transactions'),
                    Tab(text: 'Billings'),
                  ],
                ),
              ),
            ),

            // Content based on selected tab (simplified - just show transactions)
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final transaction = state.wallet!.recentTransactions[index];
                return _buildTransactionCard(transaction, isDark);
              }, childCount: state.wallet!.recentTransactions.length),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceCard(
    BuildContext context,
    PhysicianWallet wallet,
    bool isDark,
  ) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      margin: EdgeInsets.all(isMobile ? 16 : 20),
      padding: EdgeInsets.all(isMobile ? 20 : 24),
      decoration: BoxDecoration(
        gradient: AppGradients.primaryGradient,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Current Balance',
                style: AppTypography.titleMedium(color: Colors.white70),
              ),
              Icon(
                Icons.account_balance_wallet,
                color: Colors.white70,
                size: isMobile ? 24 : 32,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '₹${wallet.currentBalance.toStringAsFixed(0)}',
            style:
                (isMobile
                        ? AppTypography.displaySmall()
                        : AppTypography.displayMedium())
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _buildBalanceItem(
                  'Pending',
                  '₹${wallet.pendingAmount.toStringAsFixed(0)}',
                  Icons.schedule,
                ),
              ),
              Container(width: 1, height: 40, color: Colors.white30),
              Expanded(
                child: _buildBalanceItem(
                  'This Month',
                  '₹${wallet.getEarningsThisMonth().toStringAsFixed(0)}',
                  Icons.calendar_today,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceItem(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white70, size: 16),
              const SizedBox(width: 6),
              Text(
                label,
                style: AppTypography.bodySmall(color: Colors.white70),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTypography.titleLarge(
              color: Colors.white,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCards(
    BuildContext context,
    PaymentSummary summary,
    bool isDark,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: _buildSummaryCard(
              'Total Visits',
              summary.totalVisitsThisMonth.toString(),
              Icons.medical_services,
              AppColors.info,
              isDark,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _buildSummaryCard(
              'Avg/Visit',
              '₹${summary.averagePerVisit.toStringAsFixed(0)}',
              Icons.trending_up,
              AppColors.success,
              isDark,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(
    String label,
    String value,
    IconData icon,
    Color color,
    bool isDark,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 8),
          Text(
            label,
            style: AppTypography.bodySmall(
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.lightOnSurfaceVariant,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTypography.titleLarge().copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionCard(Transaction transaction, bool isDark) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? AppColors.darkDivider : AppColors.lightDivider,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: _getTransactionColor(transaction.type).withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              _getTransactionIcon(transaction.type),
              color: _getTransactionColor(transaction.type),
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.description,
                  style: AppTypography.bodyMedium(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  transaction.date.toFormattedDateTime(),
                  style: AppTypography.bodySmall(
                    color: isDark
                        ? AppColors.darkOnSurfaceVariant
                        : AppColors.lightOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${transaction.type == TransactionType.credit ? "+" : "-"}₹${transaction.amount.toStringAsFixed(0)}',
                style: AppTypography.titleMedium(
                  color: _getTransactionColor(transaction.type),
                ).copyWith(fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: _getStatusColor(transaction.status).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  transaction.status.name,
                  style: AppTypography.labelSmall(
                    color: _getStatusColor(transaction.status),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getTransactionColor(TransactionType type) {
    switch (type) {
      case TransactionType.credit:
        return AppColors.success;
      case TransactionType.debit:
        return AppColors.critical;
      case TransactionType.pending:
        return AppColors.warning;
    }
  }

  IconData _getTransactionIcon(TransactionType type) {
    switch (type) {
      case TransactionType.credit:
        return Icons.arrow_downward;
      case TransactionType.debit:
        return Icons.arrow_upward;
      case TransactionType.pending:
        return Icons.schedule;
    }
  }

  Color _getStatusColor(TransactionStatus status) {
    switch (status) {
      case TransactionStatus.completed:
        return AppColors.success;
      case TransactionStatus.pending:
        return AppColors.warning;
      case TransactionStatus.failed:
        return AppColors.critical;
      case TransactionStatus.refunded:
        return AppColors.info;
    }
  }
}

// Tab bar delegate
class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _TabBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_TabBarDelegate oldDelegate) => false;
}
