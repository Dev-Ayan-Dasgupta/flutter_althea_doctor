import 'failures.dart';

/// Result type for error handling (Either pattern)
sealed class Result<T> {
  const Result();

  /// Create a success result
  const factory Result.success(T data) = Success<T>;

  /// Create a failure result
  const factory Result.failure(Failure failure) = Failed<T>;

  /// Check if result is success
  bool get isSuccess => this is Success<T>;

  /// Check if result is failure
  bool get isFailure => this is Failed<T>;

  /// Get data if success, null otherwise
  T? get dataOrNull => switch (this) {
    Success(data: final data) => data,
    Failed() => null,
  };

  /// Get failure if failed, null otherwise
  Failure? get failureOrNull => switch (this) {
    Success() => null,
    Failed(failure: final failure) => failure,
  };

  /// Map the success value
  Result<R> map<R>(R Function(T data) transform) {
    return switch (this) {
      Success(data: final data) => Result.success(transform(data)),
      Failed(failure: final failure) => Result.failure(failure),
    };
  }

  /// FlatMap for chaining operations
  Result<R> flatMap<R>(Result<R> Function(T data) transform) {
    return switch (this) {
      Success(data: final data) => transform(data),
      Failed(failure: final failure) => Result.failure(failure),
    };
  }

  /// Fold the result into a single value
  R fold<R>({
    required R Function(T data) onSuccess,
    required R Function(Failure failure) onFailure,
  }) {
    return switch (this) {
      Success(data: final data) => onSuccess(data),
      Failed(failure: final failure) => onFailure(failure),
    };
  }

  /// Execute action on success
  Result<T> onSuccess(void Function(T data) action) {
    if (this is Success<T>) {
      action((this as Success<T>).data);
    }
    return this;
  }

  /// Execute action on failure
  Result<T> onFailure(void Function(Failure failure) action) {
    if (this is Failed<T>) {
      action((this as Failed<T>).failure);
    }
    return this;
  }

  /// Get data or throw exception
  T getOrThrow() {
    return switch (this) {
      Success(data: final data) => data,
      Failed(failure: final failure) => throw Exception(failure.message),
    };
  }

  /// Get data or return default value
  T getOrDefault(T defaultValue) {
    return switch (this) {
      Success(data: final data) => data,
      Failed() => defaultValue,
    };
  }

  /// Get data or compute from failure
  T getOrElse(T Function(Failure failure) orElse) {
    return switch (this) {
      Success(data: final data) => data,
      Failed(failure: final failure) => orElse(failure),
    };
  }
}

/// Success result
final class Success<T> extends Result<T> {
  final T data;

  const Success(this.data);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Success<T> &&
          runtimeType == other.runtimeType &&
          data == other.data;

  @override
  int get hashCode => data.hashCode;

  @override
  String toString() => 'Success(data: $data)';
}

/// Failure result
final class Failed<T> extends Result<T> {
  final Failure failure;

  const Failed(this.failure);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Failed<T> &&
          runtimeType == other.runtimeType &&
          failure == other.failure;

  @override
  int get hashCode => failure.hashCode;

  @override
  String toString() => 'Failed(failure: $failure)';
}

// ignore: unintended_html_in_doc_comment
/// Extension for Future<Result<T>>
extension FutureResultExtension<T> on Future<Result<T>> {
  /// Map async result
  Future<Result<R>> mapAsync<R>(R Function(T data) transform) async {
    final result = await this;
    return result.map(transform);
  }

  /// FlatMap async result
  Future<Result<R>> flatMapAsync<R>(
    Future<Result<R>> Function(T data) transform,
  ) async {
    final result = await this;
    return switch (result) {
      Success(data: final data) => await transform(data),
      Failed(failure: final failure) => Result.failure(failure),
    };
  }

  /// Fold async result
  Future<R> foldAsync<R>({
    required R Function(T data) onSuccess,
    required R Function(Failure failure) onFailure,
  }) async {
    final result = await this;
    return result.fold(onSuccess: onSuccess, onFailure: onFailure);
  }
}
