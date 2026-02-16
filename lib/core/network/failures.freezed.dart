// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {

 String get message;
/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>  {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NetworkFailure value)?  network,TResult Function( ServerFailure value)?  server,TResult Function( ClientFailure value)?  client,TResult Function( AuthenticationFailure value)?  authentication,TResult Function( AuthorizationFailure value)?  authorization,TResult Function( NotFoundFailure value)?  notFound,TResult Function( ValidationFailure value)?  validation,TResult Function( CacheFailure value)?  cache,TResult Function( TimeoutFailure value)?  timeout,TResult Function( ParsingFailure value)?  parsing,TResult Function( FhirValidationFailure value)?  fhirValidation,TResult Function( ComplianceFailure value)?  compliance,TResult Function( EncryptionFailure value)?  encryption,TResult Function( BiometricFailure value)?  biometric,TResult Function( UnknownFailure value)?  unknown,TResult Function( CancelledFailure value)?  cancelled,TResult Function( StorageFailure value)?  storage,TResult Function( GraphqlFailure value)?  graphql,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NetworkFailure() when network != null:
return network(_that);case ServerFailure() when server != null:
return server(_that);case ClientFailure() when client != null:
return client(_that);case AuthenticationFailure() when authentication != null:
return authentication(_that);case AuthorizationFailure() when authorization != null:
return authorization(_that);case NotFoundFailure() when notFound != null:
return notFound(_that);case ValidationFailure() when validation != null:
return validation(_that);case CacheFailure() when cache != null:
return cache(_that);case TimeoutFailure() when timeout != null:
return timeout(_that);case ParsingFailure() when parsing != null:
return parsing(_that);case FhirValidationFailure() when fhirValidation != null:
return fhirValidation(_that);case ComplianceFailure() when compliance != null:
return compliance(_that);case EncryptionFailure() when encryption != null:
return encryption(_that);case BiometricFailure() when biometric != null:
return biometric(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case CancelledFailure() when cancelled != null:
return cancelled(_that);case StorageFailure() when storage != null:
return storage(_that);case GraphqlFailure() when graphql != null:
return graphql(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NetworkFailure value)  network,required TResult Function( ServerFailure value)  server,required TResult Function( ClientFailure value)  client,required TResult Function( AuthenticationFailure value)  authentication,required TResult Function( AuthorizationFailure value)  authorization,required TResult Function( NotFoundFailure value)  notFound,required TResult Function( ValidationFailure value)  validation,required TResult Function( CacheFailure value)  cache,required TResult Function( TimeoutFailure value)  timeout,required TResult Function( ParsingFailure value)  parsing,required TResult Function( FhirValidationFailure value)  fhirValidation,required TResult Function( ComplianceFailure value)  compliance,required TResult Function( EncryptionFailure value)  encryption,required TResult Function( BiometricFailure value)  biometric,required TResult Function( UnknownFailure value)  unknown,required TResult Function( CancelledFailure value)  cancelled,required TResult Function( StorageFailure value)  storage,required TResult Function( GraphqlFailure value)  graphql,}){
final _that = this;
switch (_that) {
case NetworkFailure():
return network(_that);case ServerFailure():
return server(_that);case ClientFailure():
return client(_that);case AuthenticationFailure():
return authentication(_that);case AuthorizationFailure():
return authorization(_that);case NotFoundFailure():
return notFound(_that);case ValidationFailure():
return validation(_that);case CacheFailure():
return cache(_that);case TimeoutFailure():
return timeout(_that);case ParsingFailure():
return parsing(_that);case FhirValidationFailure():
return fhirValidation(_that);case ComplianceFailure():
return compliance(_that);case EncryptionFailure():
return encryption(_that);case BiometricFailure():
return biometric(_that);case UnknownFailure():
return unknown(_that);case CancelledFailure():
return cancelled(_that);case StorageFailure():
return storage(_that);case GraphqlFailure():
return graphql(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NetworkFailure value)?  network,TResult? Function( ServerFailure value)?  server,TResult? Function( ClientFailure value)?  client,TResult? Function( AuthenticationFailure value)?  authentication,TResult? Function( AuthorizationFailure value)?  authorization,TResult? Function( NotFoundFailure value)?  notFound,TResult? Function( ValidationFailure value)?  validation,TResult? Function( CacheFailure value)?  cache,TResult? Function( TimeoutFailure value)?  timeout,TResult? Function( ParsingFailure value)?  parsing,TResult? Function( FhirValidationFailure value)?  fhirValidation,TResult? Function( ComplianceFailure value)?  compliance,TResult? Function( EncryptionFailure value)?  encryption,TResult? Function( BiometricFailure value)?  biometric,TResult? Function( UnknownFailure value)?  unknown,TResult? Function( CancelledFailure value)?  cancelled,TResult? Function( StorageFailure value)?  storage,TResult? Function( GraphqlFailure value)?  graphql,}){
final _that = this;
switch (_that) {
case NetworkFailure() when network != null:
return network(_that);case ServerFailure() when server != null:
return server(_that);case ClientFailure() when client != null:
return client(_that);case AuthenticationFailure() when authentication != null:
return authentication(_that);case AuthorizationFailure() when authorization != null:
return authorization(_that);case NotFoundFailure() when notFound != null:
return notFound(_that);case ValidationFailure() when validation != null:
return validation(_that);case CacheFailure() when cache != null:
return cache(_that);case TimeoutFailure() when timeout != null:
return timeout(_that);case ParsingFailure() when parsing != null:
return parsing(_that);case FhirValidationFailure() when fhirValidation != null:
return fhirValidation(_that);case ComplianceFailure() when compliance != null:
return compliance(_that);case EncryptionFailure() when encryption != null:
return encryption(_that);case BiometricFailure() when biometric != null:
return biometric(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case CancelledFailure() when cancelled != null:
return cancelled(_that);case StorageFailure() when storage != null:
return storage(_that);case GraphqlFailure() when graphql != null:
return graphql(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message,  int? statusCode,  String? endpoint)?  network,TResult Function( String message,  int? statusCode,  String? endpoint)?  server,TResult Function( String message,  int statusCode,  String? endpoint)?  client,TResult Function( String message,  int? statusCode)?  authentication,TResult Function( String message)?  authorization,TResult Function( String message,  String? resource)?  notFound,TResult Function( String message,  Map<String, List<String>>? errors)?  validation,TResult Function( String message)?  cache,TResult Function( String message,  Duration? duration)?  timeout,TResult Function( String message,  String? field)?  parsing,TResult Function( String message,  String? resource,  List<String>? errors)?  fhirValidation,TResult Function( String message,  String? violationType)?  compliance,TResult Function( String message)?  encryption,TResult Function( String message)?  biometric,TResult Function( String message,  Object? error)?  unknown,TResult Function( String message)?  cancelled,TResult Function( String message)?  storage,TResult Function( String message,  List<String>? errors,  String? query)?  graphql,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NetworkFailure() when network != null:
return network(_that.message,_that.statusCode,_that.endpoint);case ServerFailure() when server != null:
return server(_that.message,_that.statusCode,_that.endpoint);case ClientFailure() when client != null:
return client(_that.message,_that.statusCode,_that.endpoint);case AuthenticationFailure() when authentication != null:
return authentication(_that.message,_that.statusCode);case AuthorizationFailure() when authorization != null:
return authorization(_that.message);case NotFoundFailure() when notFound != null:
return notFound(_that.message,_that.resource);case ValidationFailure() when validation != null:
return validation(_that.message,_that.errors);case CacheFailure() when cache != null:
return cache(_that.message);case TimeoutFailure() when timeout != null:
return timeout(_that.message,_that.duration);case ParsingFailure() when parsing != null:
return parsing(_that.message,_that.field);case FhirValidationFailure() when fhirValidation != null:
return fhirValidation(_that.message,_that.resource,_that.errors);case ComplianceFailure() when compliance != null:
return compliance(_that.message,_that.violationType);case EncryptionFailure() when encryption != null:
return encryption(_that.message);case BiometricFailure() when biometric != null:
return biometric(_that.message);case UnknownFailure() when unknown != null:
return unknown(_that.message,_that.error);case CancelledFailure() when cancelled != null:
return cancelled(_that.message);case StorageFailure() when storage != null:
return storage(_that.message);case GraphqlFailure() when graphql != null:
return graphql(_that.message,_that.errors,_that.query);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message,  int? statusCode,  String? endpoint)  network,required TResult Function( String message,  int? statusCode,  String? endpoint)  server,required TResult Function( String message,  int statusCode,  String? endpoint)  client,required TResult Function( String message,  int? statusCode)  authentication,required TResult Function( String message)  authorization,required TResult Function( String message,  String? resource)  notFound,required TResult Function( String message,  Map<String, List<String>>? errors)  validation,required TResult Function( String message)  cache,required TResult Function( String message,  Duration? duration)  timeout,required TResult Function( String message,  String? field)  parsing,required TResult Function( String message,  String? resource,  List<String>? errors)  fhirValidation,required TResult Function( String message,  String? violationType)  compliance,required TResult Function( String message)  encryption,required TResult Function( String message)  biometric,required TResult Function( String message,  Object? error)  unknown,required TResult Function( String message)  cancelled,required TResult Function( String message)  storage,required TResult Function( String message,  List<String>? errors,  String? query)  graphql,}) {final _that = this;
switch (_that) {
case NetworkFailure():
return network(_that.message,_that.statusCode,_that.endpoint);case ServerFailure():
return server(_that.message,_that.statusCode,_that.endpoint);case ClientFailure():
return client(_that.message,_that.statusCode,_that.endpoint);case AuthenticationFailure():
return authentication(_that.message,_that.statusCode);case AuthorizationFailure():
return authorization(_that.message);case NotFoundFailure():
return notFound(_that.message,_that.resource);case ValidationFailure():
return validation(_that.message,_that.errors);case CacheFailure():
return cache(_that.message);case TimeoutFailure():
return timeout(_that.message,_that.duration);case ParsingFailure():
return parsing(_that.message,_that.field);case FhirValidationFailure():
return fhirValidation(_that.message,_that.resource,_that.errors);case ComplianceFailure():
return compliance(_that.message,_that.violationType);case EncryptionFailure():
return encryption(_that.message);case BiometricFailure():
return biometric(_that.message);case UnknownFailure():
return unknown(_that.message,_that.error);case CancelledFailure():
return cancelled(_that.message);case StorageFailure():
return storage(_that.message);case GraphqlFailure():
return graphql(_that.message,_that.errors,_that.query);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message,  int? statusCode,  String? endpoint)?  network,TResult? Function( String message,  int? statusCode,  String? endpoint)?  server,TResult? Function( String message,  int statusCode,  String? endpoint)?  client,TResult? Function( String message,  int? statusCode)?  authentication,TResult? Function( String message)?  authorization,TResult? Function( String message,  String? resource)?  notFound,TResult? Function( String message,  Map<String, List<String>>? errors)?  validation,TResult? Function( String message)?  cache,TResult? Function( String message,  Duration? duration)?  timeout,TResult? Function( String message,  String? field)?  parsing,TResult? Function( String message,  String? resource,  List<String>? errors)?  fhirValidation,TResult? Function( String message,  String? violationType)?  compliance,TResult? Function( String message)?  encryption,TResult? Function( String message)?  biometric,TResult? Function( String message,  Object? error)?  unknown,TResult? Function( String message)?  cancelled,TResult? Function( String message)?  storage,TResult? Function( String message,  List<String>? errors,  String? query)?  graphql,}) {final _that = this;
switch (_that) {
case NetworkFailure() when network != null:
return network(_that.message,_that.statusCode,_that.endpoint);case ServerFailure() when server != null:
return server(_that.message,_that.statusCode,_that.endpoint);case ClientFailure() when client != null:
return client(_that.message,_that.statusCode,_that.endpoint);case AuthenticationFailure() when authentication != null:
return authentication(_that.message,_that.statusCode);case AuthorizationFailure() when authorization != null:
return authorization(_that.message);case NotFoundFailure() when notFound != null:
return notFound(_that.message,_that.resource);case ValidationFailure() when validation != null:
return validation(_that.message,_that.errors);case CacheFailure() when cache != null:
return cache(_that.message);case TimeoutFailure() when timeout != null:
return timeout(_that.message,_that.duration);case ParsingFailure() when parsing != null:
return parsing(_that.message,_that.field);case FhirValidationFailure() when fhirValidation != null:
return fhirValidation(_that.message,_that.resource,_that.errors);case ComplianceFailure() when compliance != null:
return compliance(_that.message,_that.violationType);case EncryptionFailure() when encryption != null:
return encryption(_that.message);case BiometricFailure() when biometric != null:
return biometric(_that.message);case UnknownFailure() when unknown != null:
return unknown(_that.message,_that.error);case CancelledFailure() when cancelled != null:
return cancelled(_that.message);case StorageFailure() when storage != null:
return storage(_that.message);case GraphqlFailure() when graphql != null:
return graphql(_that.message,_that.errors,_that.query);case _:
  return null;

}
}

}

/// @nodoc


class NetworkFailure implements Failure {
  const NetworkFailure({this.message = 'Network connection failed', this.statusCode, this.endpoint});
  

@override@JsonKey() final  String message;
 final  int? statusCode;
 final  String? endpoint;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkFailureCopyWith<NetworkFailure> get copyWith => _$NetworkFailureCopyWithImpl<NetworkFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode,endpoint);

@override
String toString() {
  return 'Failure.network(message: $message, statusCode: $statusCode, endpoint: $endpoint)';
}


}

/// @nodoc
abstract mixin class $NetworkFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(NetworkFailure value, $Res Function(NetworkFailure) _then) = _$NetworkFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int? statusCode, String? endpoint
});




}
/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._self, this._then);

  final NetworkFailure _self;
  final $Res Function(NetworkFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = freezed,Object? endpoint = freezed,}) {
  return _then(NetworkFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ServerFailure implements Failure {
  const ServerFailure({this.message = 'Server error occurred', this.statusCode, this.endpoint});
  

@override@JsonKey() final  String message;
 final  int? statusCode;
 final  String? endpoint;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFailureCopyWith<ServerFailure> get copyWith => _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode,endpoint);

@override
String toString() {
  return 'Failure.server(message: $message, statusCode: $statusCode, endpoint: $endpoint)';
}


}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(ServerFailure value, $Res Function(ServerFailure) _then) = _$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int? statusCode, String? endpoint
});




}
/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = freezed,Object? endpoint = freezed,}) {
  return _then(ServerFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ClientFailure implements Failure {
  const ClientFailure({this.message = 'Client error occurred', required this.statusCode, this.endpoint});
  

@override@JsonKey() final  String message;
 final  int statusCode;
 final  String? endpoint;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientFailureCopyWith<ClientFailure> get copyWith => _$ClientFailureCopyWithImpl<ClientFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode,endpoint);

@override
String toString() {
  return 'Failure.client(message: $message, statusCode: $statusCode, endpoint: $endpoint)';
}


}

/// @nodoc
abstract mixin class $ClientFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ClientFailureCopyWith(ClientFailure value, $Res Function(ClientFailure) _then) = _$ClientFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int statusCode, String? endpoint
});




}
/// @nodoc
class _$ClientFailureCopyWithImpl<$Res>
    implements $ClientFailureCopyWith<$Res> {
  _$ClientFailureCopyWithImpl(this._self, this._then);

  final ClientFailure _self;
  final $Res Function(ClientFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = null,Object? endpoint = freezed,}) {
  return _then(ClientFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class AuthenticationFailure implements Failure {
  const AuthenticationFailure({this.message = 'Authentication failed', this.statusCode});
  

@override@JsonKey() final  String message;
 final  int? statusCode;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticationFailureCopyWith<AuthenticationFailure> get copyWith => _$AuthenticationFailureCopyWithImpl<AuthenticationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode);

@override
String toString() {
  return 'Failure.authentication(message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $AuthenticationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $AuthenticationFailureCopyWith(AuthenticationFailure value, $Res Function(AuthenticationFailure) _then) = _$AuthenticationFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int? statusCode
});




}
/// @nodoc
class _$AuthenticationFailureCopyWithImpl<$Res>
    implements $AuthenticationFailureCopyWith<$Res> {
  _$AuthenticationFailureCopyWithImpl(this._self, this._then);

  final AuthenticationFailure _self;
  final $Res Function(AuthenticationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = freezed,}) {
  return _then(AuthenticationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class AuthorizationFailure implements Failure {
  const AuthorizationFailure({this.message = 'Access denied'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorizationFailureCopyWith<AuthorizationFailure> get copyWith => _$AuthorizationFailureCopyWithImpl<AuthorizationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorizationFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.authorization(message: $message)';
}


}

/// @nodoc
abstract mixin class $AuthorizationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $AuthorizationFailureCopyWith(AuthorizationFailure value, $Res Function(AuthorizationFailure) _then) = _$AuthorizationFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AuthorizationFailureCopyWithImpl<$Res>
    implements $AuthorizationFailureCopyWith<$Res> {
  _$AuthorizationFailureCopyWithImpl(this._self, this._then);

  final AuthorizationFailure _self;
  final $Res Function(AuthorizationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AuthorizationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NotFoundFailure implements Failure {
  const NotFoundFailure({this.message = 'Resource not found', this.resource});
  

@override@JsonKey() final  String message;
 final  String? resource;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotFoundFailureCopyWith<NotFoundFailure> get copyWith => _$NotFoundFailureCopyWithImpl<NotFoundFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.resource, resource) || other.resource == resource));
}


@override
int get hashCode => Object.hash(runtimeType,message,resource);

@override
String toString() {
  return 'Failure.notFound(message: $message, resource: $resource)';
}


}

/// @nodoc
abstract mixin class $NotFoundFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NotFoundFailureCopyWith(NotFoundFailure value, $Res Function(NotFoundFailure) _then) = _$NotFoundFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, String? resource
});




}
/// @nodoc
class _$NotFoundFailureCopyWithImpl<$Res>
    implements $NotFoundFailureCopyWith<$Res> {
  _$NotFoundFailureCopyWithImpl(this._self, this._then);

  final NotFoundFailure _self;
  final $Res Function(NotFoundFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? resource = freezed,}) {
  return _then(NotFoundFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,resource: freezed == resource ? _self.resource : resource // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ValidationFailure implements Failure {
  const ValidationFailure({this.message = 'Validation failed', final  Map<String, List<String>>? errors}): _errors = errors;
  

@override@JsonKey() final  String message;
 final  Map<String, List<String>>? _errors;
 Map<String, List<String>>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationFailureCopyWith<ValidationFailure> get copyWith => _$ValidationFailureCopyWithImpl<ValidationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'Failure.validation(message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ValidationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ValidationFailureCopyWith(ValidationFailure value, $Res Function(ValidationFailure) _then) = _$ValidationFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, Map<String, List<String>>? errors
});




}
/// @nodoc
class _$ValidationFailureCopyWithImpl<$Res>
    implements $ValidationFailureCopyWith<$Res> {
  _$ValidationFailureCopyWithImpl(this._self, this._then);

  final ValidationFailure _self;
  final $Res Function(ValidationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? errors = freezed,}) {
  return _then(ValidationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,
  ));
}


}

/// @nodoc


class CacheFailure implements Failure {
  const CacheFailure({this.message = 'Cache operation failed'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheFailureCopyWith<CacheFailure> get copyWith => _$CacheFailureCopyWithImpl<CacheFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.cache(message: $message)';
}


}

/// @nodoc
abstract mixin class $CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(CacheFailure value, $Res Function(CacheFailure) _then) = _$CacheFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CacheFailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(this._self, this._then);

  final CacheFailure _self;
  final $Res Function(CacheFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CacheFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TimeoutFailure implements Failure {
  const TimeoutFailure({this.message = 'Request timeout', this.duration});
  

@override@JsonKey() final  String message;
 final  Duration? duration;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeoutFailureCopyWith<TimeoutFailure> get copyWith => _$TimeoutFailureCopyWithImpl<TimeoutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeoutFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,message,duration);

@override
String toString() {
  return 'Failure.timeout(message: $message, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $TimeoutFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $TimeoutFailureCopyWith(TimeoutFailure value, $Res Function(TimeoutFailure) _then) = _$TimeoutFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, Duration? duration
});




}
/// @nodoc
class _$TimeoutFailureCopyWithImpl<$Res>
    implements $TimeoutFailureCopyWith<$Res> {
  _$TimeoutFailureCopyWithImpl(this._self, this._then);

  final TimeoutFailure _self;
  final $Res Function(TimeoutFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? duration = freezed,}) {
  return _then(TimeoutFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}


}

/// @nodoc


class ParsingFailure implements Failure {
  const ParsingFailure({this.message = 'Data parsing failed', this.field});
  

@override@JsonKey() final  String message;
 final  String? field;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsingFailureCopyWith<ParsingFailure> get copyWith => _$ParsingFailureCopyWithImpl<ParsingFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsingFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.field, field) || other.field == field));
}


@override
int get hashCode => Object.hash(runtimeType,message,field);

@override
String toString() {
  return 'Failure.parsing(message: $message, field: $field)';
}


}

/// @nodoc
abstract mixin class $ParsingFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ParsingFailureCopyWith(ParsingFailure value, $Res Function(ParsingFailure) _then) = _$ParsingFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, String? field
});




}
/// @nodoc
class _$ParsingFailureCopyWithImpl<$Res>
    implements $ParsingFailureCopyWith<$Res> {
  _$ParsingFailureCopyWithImpl(this._self, this._then);

  final ParsingFailure _self;
  final $Res Function(ParsingFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? field = freezed,}) {
  return _then(ParsingFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class FhirValidationFailure implements Failure {
  const FhirValidationFailure({this.message = 'FHIR validation failed', this.resource, final  List<String>? errors}): _errors = errors;
  

@override@JsonKey() final  String message;
 final  String? resource;
 final  List<String>? _errors;
 List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FhirValidationFailureCopyWith<FhirValidationFailure> get copyWith => _$FhirValidationFailureCopyWithImpl<FhirValidationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FhirValidationFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.resource, resource) || other.resource == resource)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,message,resource,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'Failure.fhirValidation(message: $message, resource: $resource, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $FhirValidationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $FhirValidationFailureCopyWith(FhirValidationFailure value, $Res Function(FhirValidationFailure) _then) = _$FhirValidationFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, String? resource, List<String>? errors
});




}
/// @nodoc
class _$FhirValidationFailureCopyWithImpl<$Res>
    implements $FhirValidationFailureCopyWith<$Res> {
  _$FhirValidationFailureCopyWithImpl(this._self, this._then);

  final FhirValidationFailure _self;
  final $Res Function(FhirValidationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? resource = freezed,Object? errors = freezed,}) {
  return _then(FhirValidationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,resource: freezed == resource ? _self.resource : resource // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc


class ComplianceFailure implements Failure {
  const ComplianceFailure({this.message = 'Compliance violation detected', this.violationType});
  

@override@JsonKey() final  String message;
 final  String? violationType;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplianceFailureCopyWith<ComplianceFailure> get copyWith => _$ComplianceFailureCopyWithImpl<ComplianceFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplianceFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.violationType, violationType) || other.violationType == violationType));
}


@override
int get hashCode => Object.hash(runtimeType,message,violationType);

@override
String toString() {
  return 'Failure.compliance(message: $message, violationType: $violationType)';
}


}

/// @nodoc
abstract mixin class $ComplianceFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ComplianceFailureCopyWith(ComplianceFailure value, $Res Function(ComplianceFailure) _then) = _$ComplianceFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, String? violationType
});




}
/// @nodoc
class _$ComplianceFailureCopyWithImpl<$Res>
    implements $ComplianceFailureCopyWith<$Res> {
  _$ComplianceFailureCopyWithImpl(this._self, this._then);

  final ComplianceFailure _self;
  final $Res Function(ComplianceFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? violationType = freezed,}) {
  return _then(ComplianceFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,violationType: freezed == violationType ? _self.violationType : violationType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class EncryptionFailure implements Failure {
  const EncryptionFailure({this.message = 'Encryption operation failed'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptionFailureCopyWith<EncryptionFailure> get copyWith => _$EncryptionFailureCopyWithImpl<EncryptionFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.encryption(message: $message)';
}


}

/// @nodoc
abstract mixin class $EncryptionFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $EncryptionFailureCopyWith(EncryptionFailure value, $Res Function(EncryptionFailure) _then) = _$EncryptionFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$EncryptionFailureCopyWithImpl<$Res>
    implements $EncryptionFailureCopyWith<$Res> {
  _$EncryptionFailureCopyWithImpl(this._self, this._then);

  final EncryptionFailure _self;
  final $Res Function(EncryptionFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(EncryptionFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BiometricFailure implements Failure {
  const BiometricFailure({this.message = 'Biometric authentication failed'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiometricFailureCopyWith<BiometricFailure> get copyWith => _$BiometricFailureCopyWithImpl<BiometricFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiometricFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.biometric(message: $message)';
}


}

/// @nodoc
abstract mixin class $BiometricFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $BiometricFailureCopyWith(BiometricFailure value, $Res Function(BiometricFailure) _then) = _$BiometricFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BiometricFailureCopyWithImpl<$Res>
    implements $BiometricFailureCopyWith<$Res> {
  _$BiometricFailureCopyWithImpl(this._self, this._then);

  final BiometricFailure _self;
  final $Res Function(BiometricFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BiometricFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnknownFailure implements Failure {
  const UnknownFailure({this.message = 'An unexpected error occurred', this.error});
  

@override@JsonKey() final  String message;
 final  Object? error;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownFailureCopyWith<UnknownFailure> get copyWith => _$UnknownFailureCopyWithImpl<UnknownFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Failure.unknown(message: $message, error: $error)';
}


}

/// @nodoc
abstract mixin class $UnknownFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(UnknownFailure value, $Res Function(UnknownFailure) _then) = _$UnknownFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? error
});




}
/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(this._self, this._then);

  final UnknownFailure _self;
  final $Res Function(UnknownFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? error = freezed,}) {
  return _then(UnknownFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error ,
  ));
}


}

/// @nodoc


class CancelledFailure implements Failure {
  const CancelledFailure({this.message = 'Operation cancelled'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelledFailureCopyWith<CancelledFailure> get copyWith => _$CancelledFailureCopyWithImpl<CancelledFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelledFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.cancelled(message: $message)';
}


}

/// @nodoc
abstract mixin class $CancelledFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $CancelledFailureCopyWith(CancelledFailure value, $Res Function(CancelledFailure) _then) = _$CancelledFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CancelledFailureCopyWithImpl<$Res>
    implements $CancelledFailureCopyWith<$Res> {
  _$CancelledFailureCopyWithImpl(this._self, this._then);

  final CancelledFailure _self;
  final $Res Function(CancelledFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CancelledFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StorageFailure implements Failure {
  const StorageFailure({this.message = 'Storage operation failed'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageFailureCopyWith<StorageFailure> get copyWith => _$StorageFailureCopyWithImpl<StorageFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.storage(message: $message)';
}


}

/// @nodoc
abstract mixin class $StorageFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $StorageFailureCopyWith(StorageFailure value, $Res Function(StorageFailure) _then) = _$StorageFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$StorageFailureCopyWithImpl<$Res>
    implements $StorageFailureCopyWith<$Res> {
  _$StorageFailureCopyWithImpl(this._self, this._then);

  final StorageFailure _self;
  final $Res Function(StorageFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(StorageFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GraphqlFailure implements Failure {
  const GraphqlFailure({this.message = 'GraphQL operation failed', final  List<String>? errors, this.query}): _errors = errors;
  

@override@JsonKey() final  String message;
 final  List<String>? _errors;
 List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  String? query;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GraphqlFailureCopyWith<GraphqlFailure> get copyWith => _$GraphqlFailureCopyWithImpl<GraphqlFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GraphqlFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_errors),query);

@override
String toString() {
  return 'Failure.graphql(message: $message, errors: $errors, query: $query)';
}


}

/// @nodoc
abstract mixin class $GraphqlFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $GraphqlFailureCopyWith(GraphqlFailure value, $Res Function(GraphqlFailure) _then) = _$GraphqlFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, List<String>? errors, String? query
});




}
/// @nodoc
class _$GraphqlFailureCopyWithImpl<$Res>
    implements $GraphqlFailureCopyWith<$Res> {
  _$GraphqlFailureCopyWithImpl(this._self, this._then);

  final GraphqlFailure _self;
  final $Res Function(GraphqlFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? errors = freezed,Object? query = freezed,}) {
  return _then(GraphqlFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
