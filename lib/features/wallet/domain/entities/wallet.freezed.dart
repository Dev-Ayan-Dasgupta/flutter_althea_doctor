// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PhysicianWallet {

 String get doctorId; double get currentBalance; double get totalEarnings; double get pendingAmount; double get withdrawnAmount; List<Transaction> get recentTransactions; DateTime? get lastUpdated;
/// Create a copy of PhysicianWallet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhysicianWalletCopyWith<PhysicianWallet> get copyWith => _$PhysicianWalletCopyWithImpl<PhysicianWallet>(this as PhysicianWallet, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhysicianWallet&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.totalEarnings, totalEarnings) || other.totalEarnings == totalEarnings)&&(identical(other.pendingAmount, pendingAmount) || other.pendingAmount == pendingAmount)&&(identical(other.withdrawnAmount, withdrawnAmount) || other.withdrawnAmount == withdrawnAmount)&&const DeepCollectionEquality().equals(other.recentTransactions, recentTransactions)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}


@override
int get hashCode => Object.hash(runtimeType,doctorId,currentBalance,totalEarnings,pendingAmount,withdrawnAmount,const DeepCollectionEquality().hash(recentTransactions),lastUpdated);

@override
String toString() {
  return 'PhysicianWallet(doctorId: $doctorId, currentBalance: $currentBalance, totalEarnings: $totalEarnings, pendingAmount: $pendingAmount, withdrawnAmount: $withdrawnAmount, recentTransactions: $recentTransactions, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class $PhysicianWalletCopyWith<$Res>  {
  factory $PhysicianWalletCopyWith(PhysicianWallet value, $Res Function(PhysicianWallet) _then) = _$PhysicianWalletCopyWithImpl;
@useResult
$Res call({
 String doctorId, double currentBalance, double totalEarnings, double pendingAmount, double withdrawnAmount, List<Transaction> recentTransactions, DateTime? lastUpdated
});




}
/// @nodoc
class _$PhysicianWalletCopyWithImpl<$Res>
    implements $PhysicianWalletCopyWith<$Res> {
  _$PhysicianWalletCopyWithImpl(this._self, this._then);

  final PhysicianWallet _self;
  final $Res Function(PhysicianWallet) _then;

/// Create a copy of PhysicianWallet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctorId = null,Object? currentBalance = null,Object? totalEarnings = null,Object? pendingAmount = null,Object? withdrawnAmount = null,Object? recentTransactions = null,Object? lastUpdated = freezed,}) {
  return _then(_self.copyWith(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,currentBalance: null == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as double,totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,pendingAmount: null == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as double,withdrawnAmount: null == withdrawnAmount ? _self.withdrawnAmount : withdrawnAmount // ignore: cast_nullable_to_non_nullable
as double,recentTransactions: null == recentTransactions ? _self.recentTransactions : recentTransactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PhysicianWallet].
extension PhysicianWalletPatterns on PhysicianWallet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhysicianWallet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhysicianWallet() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhysicianWallet value)  $default,){
final _that = this;
switch (_that) {
case _PhysicianWallet():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhysicianWallet value)?  $default,){
final _that = this;
switch (_that) {
case _PhysicianWallet() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String doctorId,  double currentBalance,  double totalEarnings,  double pendingAmount,  double withdrawnAmount,  List<Transaction> recentTransactions,  DateTime? lastUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhysicianWallet() when $default != null:
return $default(_that.doctorId,_that.currentBalance,_that.totalEarnings,_that.pendingAmount,_that.withdrawnAmount,_that.recentTransactions,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String doctorId,  double currentBalance,  double totalEarnings,  double pendingAmount,  double withdrawnAmount,  List<Transaction> recentTransactions,  DateTime? lastUpdated)  $default,) {final _that = this;
switch (_that) {
case _PhysicianWallet():
return $default(_that.doctorId,_that.currentBalance,_that.totalEarnings,_that.pendingAmount,_that.withdrawnAmount,_that.recentTransactions,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String doctorId,  double currentBalance,  double totalEarnings,  double pendingAmount,  double withdrawnAmount,  List<Transaction> recentTransactions,  DateTime? lastUpdated)?  $default,) {final _that = this;
switch (_that) {
case _PhysicianWallet() when $default != null:
return $default(_that.doctorId,_that.currentBalance,_that.totalEarnings,_that.pendingAmount,_that.withdrawnAmount,_that.recentTransactions,_that.lastUpdated);case _:
  return null;

}
}

}

/// @nodoc


class _PhysicianWallet extends PhysicianWallet {
  const _PhysicianWallet({required this.doctorId, required this.currentBalance, required this.totalEarnings, required this.pendingAmount, required this.withdrawnAmount, required final  List<Transaction> recentTransactions, this.lastUpdated}): _recentTransactions = recentTransactions,super._();
  

@override final  String doctorId;
@override final  double currentBalance;
@override final  double totalEarnings;
@override final  double pendingAmount;
@override final  double withdrawnAmount;
 final  List<Transaction> _recentTransactions;
@override List<Transaction> get recentTransactions {
  if (_recentTransactions is EqualUnmodifiableListView) return _recentTransactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentTransactions);
}

@override final  DateTime? lastUpdated;

/// Create a copy of PhysicianWallet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhysicianWalletCopyWith<_PhysicianWallet> get copyWith => __$PhysicianWalletCopyWithImpl<_PhysicianWallet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhysicianWallet&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.totalEarnings, totalEarnings) || other.totalEarnings == totalEarnings)&&(identical(other.pendingAmount, pendingAmount) || other.pendingAmount == pendingAmount)&&(identical(other.withdrawnAmount, withdrawnAmount) || other.withdrawnAmount == withdrawnAmount)&&const DeepCollectionEquality().equals(other._recentTransactions, _recentTransactions)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}


@override
int get hashCode => Object.hash(runtimeType,doctorId,currentBalance,totalEarnings,pendingAmount,withdrawnAmount,const DeepCollectionEquality().hash(_recentTransactions),lastUpdated);

@override
String toString() {
  return 'PhysicianWallet(doctorId: $doctorId, currentBalance: $currentBalance, totalEarnings: $totalEarnings, pendingAmount: $pendingAmount, withdrawnAmount: $withdrawnAmount, recentTransactions: $recentTransactions, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$PhysicianWalletCopyWith<$Res> implements $PhysicianWalletCopyWith<$Res> {
  factory _$PhysicianWalletCopyWith(_PhysicianWallet value, $Res Function(_PhysicianWallet) _then) = __$PhysicianWalletCopyWithImpl;
@override @useResult
$Res call({
 String doctorId, double currentBalance, double totalEarnings, double pendingAmount, double withdrawnAmount, List<Transaction> recentTransactions, DateTime? lastUpdated
});




}
/// @nodoc
class __$PhysicianWalletCopyWithImpl<$Res>
    implements _$PhysicianWalletCopyWith<$Res> {
  __$PhysicianWalletCopyWithImpl(this._self, this._then);

  final _PhysicianWallet _self;
  final $Res Function(_PhysicianWallet) _then;

/// Create a copy of PhysicianWallet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctorId = null,Object? currentBalance = null,Object? totalEarnings = null,Object? pendingAmount = null,Object? withdrawnAmount = null,Object? recentTransactions = null,Object? lastUpdated = freezed,}) {
  return _then(_PhysicianWallet(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,currentBalance: null == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as double,totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,pendingAmount: null == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as double,withdrawnAmount: null == withdrawnAmount ? _self.withdrawnAmount : withdrawnAmount // ignore: cast_nullable_to_non_nullable
as double,recentTransactions: null == recentTransactions ? _self._recentTransactions : recentTransactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$Transaction {

 String get id; TransactionType get type; double get amount; String get description; DateTime get date; TransactionStatus get status; String? get patientName; String? get consultationId; String? get invoiceId;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.consultationId, consultationId) || other.consultationId == consultationId)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,amount,description,date,status,patientName,consultationId,invoiceId);

@override
String toString() {
  return 'Transaction(id: $id, type: $type, amount: $amount, description: $description, date: $date, status: $status, patientName: $patientName, consultationId: $consultationId, invoiceId: $invoiceId)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 String id, TransactionType type, double amount, String description, DateTime date, TransactionStatus status, String? patientName, String? consultationId, String? invoiceId
});




}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? description = null,Object? date = null,Object? status = null,Object? patientName = freezed,Object? consultationId = freezed,Object? invoiceId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,consultationId: freezed == consultationId ? _self.consultationId : consultationId // ignore: cast_nullable_to_non_nullable
as String?,invoiceId: freezed == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  TransactionType type,  double amount,  String description,  DateTime date,  TransactionStatus status,  String? patientName,  String? consultationId,  String? invoiceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.description,_that.date,_that.status,_that.patientName,_that.consultationId,_that.invoiceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  TransactionType type,  double amount,  String description,  DateTime date,  TransactionStatus status,  String? patientName,  String? consultationId,  String? invoiceId)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.id,_that.type,_that.amount,_that.description,_that.date,_that.status,_that.patientName,_that.consultationId,_that.invoiceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  TransactionType type,  double amount,  String description,  DateTime date,  TransactionStatus status,  String? patientName,  String? consultationId,  String? invoiceId)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.description,_that.date,_that.status,_that.patientName,_that.consultationId,_that.invoiceId);case _:
  return null;

}
}

}

/// @nodoc


class _Transaction implements Transaction {
  const _Transaction({required this.id, required this.type, required this.amount, required this.description, required this.date, required this.status, this.patientName, this.consultationId, this.invoiceId});
  

@override final  String id;
@override final  TransactionType type;
@override final  double amount;
@override final  String description;
@override final  DateTime date;
@override final  TransactionStatus status;
@override final  String? patientName;
@override final  String? consultationId;
@override final  String? invoiceId;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.consultationId, consultationId) || other.consultationId == consultationId)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,amount,description,date,status,patientName,consultationId,invoiceId);

@override
String toString() {
  return 'Transaction(id: $id, type: $type, amount: $amount, description: $description, date: $date, status: $status, patientName: $patientName, consultationId: $consultationId, invoiceId: $invoiceId)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 String id, TransactionType type, double amount, String description, DateTime date, TransactionStatus status, String? patientName, String? consultationId, String? invoiceId
});




}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? description = null,Object? date = null,Object? status = null,Object? patientName = freezed,Object? consultationId = freezed,Object? invoiceId = freezed,}) {
  return _then(_Transaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,consultationId: freezed == consultationId ? _self.consultationId : consultationId // ignore: cast_nullable_to_non_nullable
as String?,invoiceId: freezed == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$VisitBilling {

 String get id; String get patientId; String get patientName; String get consultationId; DateTime get visitDate; double get amount; BillingStatus get status; String? get paymentMethod; DateTime? get paidAt; String? get invoiceNumber;
/// Create a copy of VisitBilling
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitBillingCopyWith<VisitBilling> get copyWith => _$VisitBillingCopyWithImpl<VisitBilling>(this as VisitBilling, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitBilling&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.consultationId, consultationId) || other.consultationId == consultationId)&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,consultationId,visitDate,amount,status,paymentMethod,paidAt,invoiceNumber);

@override
String toString() {
  return 'VisitBilling(id: $id, patientId: $patientId, patientName: $patientName, consultationId: $consultationId, visitDate: $visitDate, amount: $amount, status: $status, paymentMethod: $paymentMethod, paidAt: $paidAt, invoiceNumber: $invoiceNumber)';
}


}

/// @nodoc
abstract mixin class $VisitBillingCopyWith<$Res>  {
  factory $VisitBillingCopyWith(VisitBilling value, $Res Function(VisitBilling) _then) = _$VisitBillingCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, String consultationId, DateTime visitDate, double amount, BillingStatus status, String? paymentMethod, DateTime? paidAt, String? invoiceNumber
});




}
/// @nodoc
class _$VisitBillingCopyWithImpl<$Res>
    implements $VisitBillingCopyWith<$Res> {
  _$VisitBillingCopyWithImpl(this._self, this._then);

  final VisitBilling _self;
  final $Res Function(VisitBilling) _then;

/// Create a copy of VisitBilling
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? consultationId = null,Object? visitDate = null,Object? amount = null,Object? status = null,Object? paymentMethod = freezed,Object? paidAt = freezed,Object? invoiceNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,consultationId: null == consultationId ? _self.consultationId : consultationId // ignore: cast_nullable_to_non_nullable
as String,visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BillingStatus,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VisitBilling].
extension VisitBillingPatterns on VisitBilling {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitBilling value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitBilling() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitBilling value)  $default,){
final _that = this;
switch (_that) {
case _VisitBilling():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitBilling value)?  $default,){
final _that = this;
switch (_that) {
case _VisitBilling() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String consultationId,  DateTime visitDate,  double amount,  BillingStatus status,  String? paymentMethod,  DateTime? paidAt,  String? invoiceNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitBilling() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.consultationId,_that.visitDate,_that.amount,_that.status,_that.paymentMethod,_that.paidAt,_that.invoiceNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  String consultationId,  DateTime visitDate,  double amount,  BillingStatus status,  String? paymentMethod,  DateTime? paidAt,  String? invoiceNumber)  $default,) {final _that = this;
switch (_that) {
case _VisitBilling():
return $default(_that.id,_that.patientId,_that.patientName,_that.consultationId,_that.visitDate,_that.amount,_that.status,_that.paymentMethod,_that.paidAt,_that.invoiceNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  String consultationId,  DateTime visitDate,  double amount,  BillingStatus status,  String? paymentMethod,  DateTime? paidAt,  String? invoiceNumber)?  $default,) {final _that = this;
switch (_that) {
case _VisitBilling() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.consultationId,_that.visitDate,_that.amount,_that.status,_that.paymentMethod,_that.paidAt,_that.invoiceNumber);case _:
  return null;

}
}

}

/// @nodoc


class _VisitBilling implements VisitBilling {
  const _VisitBilling({required this.id, required this.patientId, required this.patientName, required this.consultationId, required this.visitDate, required this.amount, required this.status, this.paymentMethod, this.paidAt, this.invoiceNumber});
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  String consultationId;
@override final  DateTime visitDate;
@override final  double amount;
@override final  BillingStatus status;
@override final  String? paymentMethod;
@override final  DateTime? paidAt;
@override final  String? invoiceNumber;

/// Create a copy of VisitBilling
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitBillingCopyWith<_VisitBilling> get copyWith => __$VisitBillingCopyWithImpl<_VisitBilling>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitBilling&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.consultationId, consultationId) || other.consultationId == consultationId)&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber));
}


@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,consultationId,visitDate,amount,status,paymentMethod,paidAt,invoiceNumber);

@override
String toString() {
  return 'VisitBilling(id: $id, patientId: $patientId, patientName: $patientName, consultationId: $consultationId, visitDate: $visitDate, amount: $amount, status: $status, paymentMethod: $paymentMethod, paidAt: $paidAt, invoiceNumber: $invoiceNumber)';
}


}

/// @nodoc
abstract mixin class _$VisitBillingCopyWith<$Res> implements $VisitBillingCopyWith<$Res> {
  factory _$VisitBillingCopyWith(_VisitBilling value, $Res Function(_VisitBilling) _then) = __$VisitBillingCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, String consultationId, DateTime visitDate, double amount, BillingStatus status, String? paymentMethod, DateTime? paidAt, String? invoiceNumber
});




}
/// @nodoc
class __$VisitBillingCopyWithImpl<$Res>
    implements _$VisitBillingCopyWith<$Res> {
  __$VisitBillingCopyWithImpl(this._self, this._then);

  final _VisitBilling _self;
  final $Res Function(_VisitBilling) _then;

/// Create a copy of VisitBilling
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? consultationId = null,Object? visitDate = null,Object? amount = null,Object? status = null,Object? paymentMethod = freezed,Object? paidAt = freezed,Object? invoiceNumber = freezed,}) {
  return _then(_VisitBilling(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,consultationId: null == consultationId ? _self.consultationId : consultationId // ignore: cast_nullable_to_non_nullable
as String,visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BillingStatus,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PaymentSummary {

 double get todayEarnings; double get weekEarnings; double get monthEarnings; int get totalVisitsThisMonth; int get paidVisitsThisMonth; int get pendingVisitsThisMonth;
/// Create a copy of PaymentSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentSummaryCopyWith<PaymentSummary> get copyWith => _$PaymentSummaryCopyWithImpl<PaymentSummary>(this as PaymentSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentSummary&&(identical(other.todayEarnings, todayEarnings) || other.todayEarnings == todayEarnings)&&(identical(other.weekEarnings, weekEarnings) || other.weekEarnings == weekEarnings)&&(identical(other.monthEarnings, monthEarnings) || other.monthEarnings == monthEarnings)&&(identical(other.totalVisitsThisMonth, totalVisitsThisMonth) || other.totalVisitsThisMonth == totalVisitsThisMonth)&&(identical(other.paidVisitsThisMonth, paidVisitsThisMonth) || other.paidVisitsThisMonth == paidVisitsThisMonth)&&(identical(other.pendingVisitsThisMonth, pendingVisitsThisMonth) || other.pendingVisitsThisMonth == pendingVisitsThisMonth));
}


@override
int get hashCode => Object.hash(runtimeType,todayEarnings,weekEarnings,monthEarnings,totalVisitsThisMonth,paidVisitsThisMonth,pendingVisitsThisMonth);

@override
String toString() {
  return 'PaymentSummary(todayEarnings: $todayEarnings, weekEarnings: $weekEarnings, monthEarnings: $monthEarnings, totalVisitsThisMonth: $totalVisitsThisMonth, paidVisitsThisMonth: $paidVisitsThisMonth, pendingVisitsThisMonth: $pendingVisitsThisMonth)';
}


}

/// @nodoc
abstract mixin class $PaymentSummaryCopyWith<$Res>  {
  factory $PaymentSummaryCopyWith(PaymentSummary value, $Res Function(PaymentSummary) _then) = _$PaymentSummaryCopyWithImpl;
@useResult
$Res call({
 double todayEarnings, double weekEarnings, double monthEarnings, int totalVisitsThisMonth, int paidVisitsThisMonth, int pendingVisitsThisMonth
});




}
/// @nodoc
class _$PaymentSummaryCopyWithImpl<$Res>
    implements $PaymentSummaryCopyWith<$Res> {
  _$PaymentSummaryCopyWithImpl(this._self, this._then);

  final PaymentSummary _self;
  final $Res Function(PaymentSummary) _then;

/// Create a copy of PaymentSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todayEarnings = null,Object? weekEarnings = null,Object? monthEarnings = null,Object? totalVisitsThisMonth = null,Object? paidVisitsThisMonth = null,Object? pendingVisitsThisMonth = null,}) {
  return _then(_self.copyWith(
todayEarnings: null == todayEarnings ? _self.todayEarnings : todayEarnings // ignore: cast_nullable_to_non_nullable
as double,weekEarnings: null == weekEarnings ? _self.weekEarnings : weekEarnings // ignore: cast_nullable_to_non_nullable
as double,monthEarnings: null == monthEarnings ? _self.monthEarnings : monthEarnings // ignore: cast_nullable_to_non_nullable
as double,totalVisitsThisMonth: null == totalVisitsThisMonth ? _self.totalVisitsThisMonth : totalVisitsThisMonth // ignore: cast_nullable_to_non_nullable
as int,paidVisitsThisMonth: null == paidVisitsThisMonth ? _self.paidVisitsThisMonth : paidVisitsThisMonth // ignore: cast_nullable_to_non_nullable
as int,pendingVisitsThisMonth: null == pendingVisitsThisMonth ? _self.pendingVisitsThisMonth : pendingVisitsThisMonth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentSummary].
extension PaymentSummaryPatterns on PaymentSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentSummary() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentSummary value)  $default,){
final _that = this;
switch (_that) {
case _PaymentSummary():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentSummary value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentSummary() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double todayEarnings,  double weekEarnings,  double monthEarnings,  int totalVisitsThisMonth,  int paidVisitsThisMonth,  int pendingVisitsThisMonth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentSummary() when $default != null:
return $default(_that.todayEarnings,_that.weekEarnings,_that.monthEarnings,_that.totalVisitsThisMonth,_that.paidVisitsThisMonth,_that.pendingVisitsThisMonth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double todayEarnings,  double weekEarnings,  double monthEarnings,  int totalVisitsThisMonth,  int paidVisitsThisMonth,  int pendingVisitsThisMonth)  $default,) {final _that = this;
switch (_that) {
case _PaymentSummary():
return $default(_that.todayEarnings,_that.weekEarnings,_that.monthEarnings,_that.totalVisitsThisMonth,_that.paidVisitsThisMonth,_that.pendingVisitsThisMonth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double todayEarnings,  double weekEarnings,  double monthEarnings,  int totalVisitsThisMonth,  int paidVisitsThisMonth,  int pendingVisitsThisMonth)?  $default,) {final _that = this;
switch (_that) {
case _PaymentSummary() when $default != null:
return $default(_that.todayEarnings,_that.weekEarnings,_that.monthEarnings,_that.totalVisitsThisMonth,_that.paidVisitsThisMonth,_that.pendingVisitsThisMonth);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentSummary extends PaymentSummary {
  const _PaymentSummary({required this.todayEarnings, required this.weekEarnings, required this.monthEarnings, required this.totalVisitsThisMonth, required this.paidVisitsThisMonth, required this.pendingVisitsThisMonth}): super._();
  

@override final  double todayEarnings;
@override final  double weekEarnings;
@override final  double monthEarnings;
@override final  int totalVisitsThisMonth;
@override final  int paidVisitsThisMonth;
@override final  int pendingVisitsThisMonth;

/// Create a copy of PaymentSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentSummaryCopyWith<_PaymentSummary> get copyWith => __$PaymentSummaryCopyWithImpl<_PaymentSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentSummary&&(identical(other.todayEarnings, todayEarnings) || other.todayEarnings == todayEarnings)&&(identical(other.weekEarnings, weekEarnings) || other.weekEarnings == weekEarnings)&&(identical(other.monthEarnings, monthEarnings) || other.monthEarnings == monthEarnings)&&(identical(other.totalVisitsThisMonth, totalVisitsThisMonth) || other.totalVisitsThisMonth == totalVisitsThisMonth)&&(identical(other.paidVisitsThisMonth, paidVisitsThisMonth) || other.paidVisitsThisMonth == paidVisitsThisMonth)&&(identical(other.pendingVisitsThisMonth, pendingVisitsThisMonth) || other.pendingVisitsThisMonth == pendingVisitsThisMonth));
}


@override
int get hashCode => Object.hash(runtimeType,todayEarnings,weekEarnings,monthEarnings,totalVisitsThisMonth,paidVisitsThisMonth,pendingVisitsThisMonth);

@override
String toString() {
  return 'PaymentSummary(todayEarnings: $todayEarnings, weekEarnings: $weekEarnings, monthEarnings: $monthEarnings, totalVisitsThisMonth: $totalVisitsThisMonth, paidVisitsThisMonth: $paidVisitsThisMonth, pendingVisitsThisMonth: $pendingVisitsThisMonth)';
}


}

/// @nodoc
abstract mixin class _$PaymentSummaryCopyWith<$Res> implements $PaymentSummaryCopyWith<$Res> {
  factory _$PaymentSummaryCopyWith(_PaymentSummary value, $Res Function(_PaymentSummary) _then) = __$PaymentSummaryCopyWithImpl;
@override @useResult
$Res call({
 double todayEarnings, double weekEarnings, double monthEarnings, int totalVisitsThisMonth, int paidVisitsThisMonth, int pendingVisitsThisMonth
});




}
/// @nodoc
class __$PaymentSummaryCopyWithImpl<$Res>
    implements _$PaymentSummaryCopyWith<$Res> {
  __$PaymentSummaryCopyWithImpl(this._self, this._then);

  final _PaymentSummary _self;
  final $Res Function(_PaymentSummary) _then;

/// Create a copy of PaymentSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todayEarnings = null,Object? weekEarnings = null,Object? monthEarnings = null,Object? totalVisitsThisMonth = null,Object? paidVisitsThisMonth = null,Object? pendingVisitsThisMonth = null,}) {
  return _then(_PaymentSummary(
todayEarnings: null == todayEarnings ? _self.todayEarnings : todayEarnings // ignore: cast_nullable_to_non_nullable
as double,weekEarnings: null == weekEarnings ? _self.weekEarnings : weekEarnings // ignore: cast_nullable_to_non_nullable
as double,monthEarnings: null == monthEarnings ? _self.monthEarnings : monthEarnings // ignore: cast_nullable_to_non_nullable
as double,totalVisitsThisMonth: null == totalVisitsThisMonth ? _self.totalVisitsThisMonth : totalVisitsThisMonth // ignore: cast_nullable_to_non_nullable
as int,paidVisitsThisMonth: null == paidVisitsThisMonth ? _self.paidVisitsThisMonth : paidVisitsThisMonth // ignore: cast_nullable_to_non_nullable
as int,pendingVisitsThisMonth: null == pendingVisitsThisMonth ? _self.pendingVisitsThisMonth : pendingVisitsThisMonth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
