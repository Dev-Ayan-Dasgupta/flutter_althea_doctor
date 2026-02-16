import 'package:graphql_flutter/graphql_flutter.dart';
import '../utils/constants.dart';
import 'result.dart';
import 'failures.dart';

/// GraphQL client wrapper for AltheaCare backend
class AltheaGraphQLClient {
  late GraphQLClient _client;

  AltheaGraphQLClient({String? authToken}) {
    final httpLink = HttpLink(AppConstants.graphqlEndpoint);

    // WebSocket link for subscriptions (real-time updates)
    final wsLink = WebSocketLink(
      AppConstants.wsEndpoint,
      config: const SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: Duration(seconds: 30),
      ),
    );

    // Auth link for JWT token
    final authLink = AuthLink(
      getToken: () async => authToken != null ? 'Bearer $authToken' : null,
    );

    // Combine links
    final link = authLink.concat(httpLink).concat(wsLink);

    _client = GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      link: link,
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.all,
          cacheReread: CacheRereadPolicy.ignoreAll,
        ),
        mutate: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.all,
        ),
        subscribe: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.all,
        ),
      ),
    );
  }

  /// Execute GraphQL query
  Future<Result<T>> query<T>({
    required String query,
    Map<String, dynamic>? variables,
    required T Function(Map<String, dynamic> data) parser,
  }) async {
    try {
      final options = QueryOptions(
        document: gql(query),
        variables: variables ?? {},
      );

      final result = await _client.query(options);

      if (result.hasException) {
        return Result.failure(_parseException(result.exception!));
      }

      if (result.data == null) {
        return const Result.failure(
          Failure.graphql(message: 'No data returned from query'),
        );
      }

      try {
        final parsedData = parser(result.data!);
        return Result.success(parsedData);
      } catch (e) {
        return Result.failure(
          Failure.parsing(
            message: 'Failed to parse query response',
            field: e.toString(),
          ),
        );
      }
    } catch (e) {
      return Result.failure(
        Failure.unknown(message: 'Query execution failed', error: e),
      );
    }
  }

  /// Execute GraphQL mutation
  Future<Result<T>> mutate<T>({
    required String mutation,
    Map<String, dynamic>? variables,
    required T Function(Map<String, dynamic> data) parser,
  }) async {
    try {
      final options = MutationOptions(
        document: gql(mutation),
        variables: variables ?? {},
      );

      final result = await _client.mutate(options);

      if (result.hasException) {
        return Result.failure(_parseException(result.exception!));
      }

      if (result.data == null) {
        return const Result.failure(
          Failure.graphql(message: 'No data returned from mutation'),
        );
      }

      try {
        final parsedData = parser(result.data!);
        return Result.success(parsedData);
      } catch (e) {
        return Result.failure(
          Failure.parsing(
            message: 'Failed to parse mutation response',
            field: e.toString(),
          ),
        );
      }
    } catch (e) {
      return Result.failure(
        Failure.unknown(message: 'Mutation execution failed', error: e),
      );
    }
  }

  /// Subscribe to GraphQL subscription (real-time updates)
  Stream<Result<T>> subscribe<T>({
    required String subscription,
    Map<String, dynamic>? variables,
    required T Function(Map<String, dynamic> data) parser,
  }) {
    try {
      final options = SubscriptionOptions(
        document: gql(subscription),
        variables: variables ?? {},
      );

      return _client.subscribe(options).map((result) {
        if (result.hasException) {
          return Result.failure(_parseException(result.exception!));
        }

        if (result.data == null) {
          return const Result.failure(
            Failure.graphql(message: 'No data in subscription'),
          );
        }

        try {
          final parsedData = parser(result.data!);
          return Result.success(parsedData);
        } catch (e) {
          return Result.failure(
            Failure.parsing(
              message: 'Failed to parse subscription data',
              field: e.toString(),
            ),
          );
        }
      });
    } catch (e) {
      return Stream.value(
        Result.failure(
          Failure.unknown(message: 'Subscription failed', error: e),
        ),
      );
    }
  }

  /// Parse GraphQL exception to Failure
  Failure _parseException(OperationException exception) {
    // Network errors
    if (exception.linkException != null) {
      final linkException = exception.linkException!;

      if (linkException is NetworkException) {
        return Failure.network(
          message: linkException.message ?? 'Network error',
        );
      }

      if (linkException is ServerException) {
        return Failure.server(
          message: 'Server error',
          statusCode:
              linkException.parsedResponse?.response['statusCode'] as int?,
        );
      }
    }

    // GraphQL errors
    if (exception.graphqlErrors.isNotEmpty) {
      final errors = exception.graphqlErrors.map((e) => e.message).toList();

      // Check for authentication errors
      if (errors.any(
        (e) =>
            e.toLowerCase().contains('unauthorized') ||
            e.toLowerCase().contains('unauthenticated'),
      )) {
        return const Failure.authentication(message: 'Authentication required');
      }

      // Check for authorization errors
      if (errors.any(
        (e) =>
            e.toLowerCase().contains('forbidden') ||
            e.toLowerCase().contains('access denied'),
      )) {
        return const Failure.authorization(message: 'Access denied');
      }

      return Failure.graphql(message: errors.first, errors: errors);
    }

    return const Failure.unknown(message: 'Unknown GraphQL error');
  }

  /// Update auth token
  void updateAuthToken(String token) {
    // Recreate client with new token
    final httpLink = HttpLink(AppConstants.graphqlEndpoint);
    final wsLink = WebSocketLink(AppConstants.wsEndpoint);
    final authLink = AuthLink(getToken: () async => 'Bearer $token');

    final link = authLink.concat(httpLink).concat(wsLink);

    _client = GraphQLClient(
      cache: _client.cache,
      link: link,
      defaultPolicies: _client.defaultPolicies,
    );
  }

  /// Clear cache
  Future<void> clearCache() async {
    _client.cache.store.reset();
  }
}
