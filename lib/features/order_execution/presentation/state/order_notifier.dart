import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/clinical_order.dart';
import '../../data/services/mock_order_service.dart';

part 'order_notifier.g.dart';

/// Order execution state
class OrderExecutionState {
  final List<ClinicalOrder> orders;
  final List<OrderTemplate> templates;
  final bool isLoading;
  final String? error;
  final OrderType? filterType;
  final OrderStatus? filterStatus;

  OrderExecutionState({
    this.orders = const [],
    this.templates = const [],
    this.isLoading = false,
    this.error,
    this.filterType,
    this.filterStatus,
  });

  OrderExecutionState copyWith({
    List<ClinicalOrder>? orders,
    List<OrderTemplate>? templates,
    bool? isLoading,
    String? error,
    OrderType? filterType,
    OrderStatus? filterStatus,
    bool clearError = false,
    bool clearFilters = false,
  }) {
    return OrderExecutionState(
      orders: orders ?? this.orders,
      templates: templates ?? this.templates,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
      filterType: clearFilters ? null : (filterType ?? this.filterType),
      filterStatus: clearFilters ? null : (filterStatus ?? this.filterStatus),
    );
  }

  /// Get filtered orders
  List<ClinicalOrder> get filteredOrders {
    var filtered = orders;

    if (filterType != null) {
      filtered = filtered.where((o) => o.orderType == filterType).toList();
    }

    if (filterStatus != null) {
      filtered = filtered.where((o) => o.status == filterStatus).toList();
    }

    return filtered;
  }

  /// Get orders by status
  Map<OrderStatus, int> get statusCounts {
    final counts = <OrderStatus, int>{};
    for (final status in OrderStatus.values) {
      counts[status] = orders.where((o) => o.status == status).length;
    }
    return counts;
  }

  /// Get orders by type
  Map<OrderType, int> get typeCounts {
    final counts = <OrderType, int>{};
    for (final type in OrderType.values) {
      counts[type] = orders.where((o) => o.orderType == type).length;
    }
    return counts;
  }
}

/// Order execution notifier
@riverpod
class OrderExecution extends _$OrderExecution {
  @override
  OrderExecutionState build(String patientId) {
    _loadOrders(patientId);
    return OrderExecutionState(isLoading: true);
  }

  /// Load orders for patient
  Future<void> _loadOrders(String patientId) async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      // Load orders and templates
      final orders = MockOrderService.generateOrders(
        patientId,
        'Patient Name', // TODO: Get from patient data
      );
      final templates = MockOrderService.getOrderTemplates();

      state = state.copyWith(
        orders: orders,
        templates: templates,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load orders: $e',
      );
    }
  }

  /// Create new order
  Future<bool> createOrder(ClinicalOrder order) async {
    try {
      final newOrder = await MockOrderService.createOrder(order);

      final updatedOrders = [newOrder, ...state.orders];
      state = state.copyWith(orders: updatedOrders);

      return true;
    } catch (e) {
      state = state.copyWith(error: 'Failed to create order: $e');
      return false;
    }
  }

  /// Update order status
  Future<bool> updateOrderStatus(String orderId, OrderStatus newStatus) async {
    try {
      await MockOrderService.updateOrderStatus(orderId, newStatus);

      final updatedOrders = state.orders.map((order) {
        if (order.id == orderId) {
          return order.copyWith(status: newStatus);
        }
        return order;
      }).toList();

      state = state.copyWith(orders: updatedOrders);
      return true;
    } catch (e) {
      state = state.copyWith(error: 'Failed to update order: $e');
      return false;
    }
  }

  /// Cancel order
  Future<bool> cancelOrder(String orderId, String reason) async {
    try {
      await MockOrderService.cancelOrder(orderId, reason);

      final updatedOrders = state.orders.map((order) {
        if (order.id == orderId) {
          return order.copyWith(status: OrderStatus.cancelled, notes: reason);
        }
        return order;
      }).toList();

      state = state.copyWith(orders: updatedOrders);
      return true;
    } catch (e) {
      state = state.copyWith(error: 'Failed to cancel order: $e');
      return false;
    }
  }

  /// Filter by type
  void filterByType(OrderType? type) {
    state = state.copyWith(filterType: type);
  }

  /// Filter by status
  void filterByStatus(OrderStatus? status) {
    state = state.copyWith(filterStatus: status);
  }

  /// Clear filters
  void clearFilters() {
    state = state.copyWith(clearFilters: true);
  }

  /// Refresh orders
  Future<void> refresh() async {
    await _loadOrders(patientId);
  }
}
