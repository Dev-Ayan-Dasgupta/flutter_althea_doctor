// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PortfolioSummary {

 String get doctorId; DateTime get generatedAt; PortfolioMetrics get metrics; List<ClinicalOutcome> get outcomes; List<AIInsight> get insights; RiskDistribution get riskDistribution; List<TopCondition> get topConditions;
/// Create a copy of PortfolioSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioSummaryCopyWith<PortfolioSummary> get copyWith => _$PortfolioSummaryCopyWithImpl<PortfolioSummary>(this as PortfolioSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioSummary&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&const DeepCollectionEquality().equals(other.outcomes, outcomes)&&const DeepCollectionEquality().equals(other.insights, insights)&&(identical(other.riskDistribution, riskDistribution) || other.riskDistribution == riskDistribution)&&const DeepCollectionEquality().equals(other.topConditions, topConditions));
}


@override
int get hashCode => Object.hash(runtimeType,doctorId,generatedAt,metrics,const DeepCollectionEquality().hash(outcomes),const DeepCollectionEquality().hash(insights),riskDistribution,const DeepCollectionEquality().hash(topConditions));

@override
String toString() {
  return 'PortfolioSummary(doctorId: $doctorId, generatedAt: $generatedAt, metrics: $metrics, outcomes: $outcomes, insights: $insights, riskDistribution: $riskDistribution, topConditions: $topConditions)';
}


}

/// @nodoc
abstract mixin class $PortfolioSummaryCopyWith<$Res>  {
  factory $PortfolioSummaryCopyWith(PortfolioSummary value, $Res Function(PortfolioSummary) _then) = _$PortfolioSummaryCopyWithImpl;
@useResult
$Res call({
 String doctorId, DateTime generatedAt, PortfolioMetrics metrics, List<ClinicalOutcome> outcomes, List<AIInsight> insights, RiskDistribution riskDistribution, List<TopCondition> topConditions
});


$PortfolioMetricsCopyWith<$Res> get metrics;$RiskDistributionCopyWith<$Res> get riskDistribution;

}
/// @nodoc
class _$PortfolioSummaryCopyWithImpl<$Res>
    implements $PortfolioSummaryCopyWith<$Res> {
  _$PortfolioSummaryCopyWithImpl(this._self, this._then);

  final PortfolioSummary _self;
  final $Res Function(PortfolioSummary) _then;

/// Create a copy of PortfolioSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctorId = null,Object? generatedAt = null,Object? metrics = null,Object? outcomes = null,Object? insights = null,Object? riskDistribution = null,Object? topConditions = null,}) {
  return _then(_self.copyWith(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as PortfolioMetrics,outcomes: null == outcomes ? _self.outcomes : outcomes // ignore: cast_nullable_to_non_nullable
as List<ClinicalOutcome>,insights: null == insights ? _self.insights : insights // ignore: cast_nullable_to_non_nullable
as List<AIInsight>,riskDistribution: null == riskDistribution ? _self.riskDistribution : riskDistribution // ignore: cast_nullable_to_non_nullable
as RiskDistribution,topConditions: null == topConditions ? _self.topConditions : topConditions // ignore: cast_nullable_to_non_nullable
as List<TopCondition>,
  ));
}
/// Create a copy of PortfolioSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioMetricsCopyWith<$Res> get metrics {
  
  return $PortfolioMetricsCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of PortfolioSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiskDistributionCopyWith<$Res> get riskDistribution {
  
  return $RiskDistributionCopyWith<$Res>(_self.riskDistribution, (value) {
    return _then(_self.copyWith(riskDistribution: value));
  });
}
}


/// Adds pattern-matching-related methods to [PortfolioSummary].
extension PortfolioSummaryPatterns on PortfolioSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioSummary value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioSummary value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String doctorId,  DateTime generatedAt,  PortfolioMetrics metrics,  List<ClinicalOutcome> outcomes,  List<AIInsight> insights,  RiskDistribution riskDistribution,  List<TopCondition> topConditions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioSummary() when $default != null:
return $default(_that.doctorId,_that.generatedAt,_that.metrics,_that.outcomes,_that.insights,_that.riskDistribution,_that.topConditions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String doctorId,  DateTime generatedAt,  PortfolioMetrics metrics,  List<ClinicalOutcome> outcomes,  List<AIInsight> insights,  RiskDistribution riskDistribution,  List<TopCondition> topConditions)  $default,) {final _that = this;
switch (_that) {
case _PortfolioSummary():
return $default(_that.doctorId,_that.generatedAt,_that.metrics,_that.outcomes,_that.insights,_that.riskDistribution,_that.topConditions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String doctorId,  DateTime generatedAt,  PortfolioMetrics metrics,  List<ClinicalOutcome> outcomes,  List<AIInsight> insights,  RiskDistribution riskDistribution,  List<TopCondition> topConditions)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioSummary() when $default != null:
return $default(_that.doctorId,_that.generatedAt,_that.metrics,_that.outcomes,_that.insights,_that.riskDistribution,_that.topConditions);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioSummary implements PortfolioSummary {
  const _PortfolioSummary({required this.doctorId, required this.generatedAt, required this.metrics, required final  List<ClinicalOutcome> outcomes, required final  List<AIInsight> insights, required this.riskDistribution, required final  List<TopCondition> topConditions}): _outcomes = outcomes,_insights = insights,_topConditions = topConditions;
  

@override final  String doctorId;
@override final  DateTime generatedAt;
@override final  PortfolioMetrics metrics;
 final  List<ClinicalOutcome> _outcomes;
@override List<ClinicalOutcome> get outcomes {
  if (_outcomes is EqualUnmodifiableListView) return _outcomes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_outcomes);
}

 final  List<AIInsight> _insights;
@override List<AIInsight> get insights {
  if (_insights is EqualUnmodifiableListView) return _insights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_insights);
}

@override final  RiskDistribution riskDistribution;
 final  List<TopCondition> _topConditions;
@override List<TopCondition> get topConditions {
  if (_topConditions is EqualUnmodifiableListView) return _topConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topConditions);
}


/// Create a copy of PortfolioSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioSummaryCopyWith<_PortfolioSummary> get copyWith => __$PortfolioSummaryCopyWithImpl<_PortfolioSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioSummary&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&const DeepCollectionEquality().equals(other._outcomes, _outcomes)&&const DeepCollectionEquality().equals(other._insights, _insights)&&(identical(other.riskDistribution, riskDistribution) || other.riskDistribution == riskDistribution)&&const DeepCollectionEquality().equals(other._topConditions, _topConditions));
}


@override
int get hashCode => Object.hash(runtimeType,doctorId,generatedAt,metrics,const DeepCollectionEquality().hash(_outcomes),const DeepCollectionEquality().hash(_insights),riskDistribution,const DeepCollectionEquality().hash(_topConditions));

@override
String toString() {
  return 'PortfolioSummary(doctorId: $doctorId, generatedAt: $generatedAt, metrics: $metrics, outcomes: $outcomes, insights: $insights, riskDistribution: $riskDistribution, topConditions: $topConditions)';
}


}

/// @nodoc
abstract mixin class _$PortfolioSummaryCopyWith<$Res> implements $PortfolioSummaryCopyWith<$Res> {
  factory _$PortfolioSummaryCopyWith(_PortfolioSummary value, $Res Function(_PortfolioSummary) _then) = __$PortfolioSummaryCopyWithImpl;
@override @useResult
$Res call({
 String doctorId, DateTime generatedAt, PortfolioMetrics metrics, List<ClinicalOutcome> outcomes, List<AIInsight> insights, RiskDistribution riskDistribution, List<TopCondition> topConditions
});


@override $PortfolioMetricsCopyWith<$Res> get metrics;@override $RiskDistributionCopyWith<$Res> get riskDistribution;

}
/// @nodoc
class __$PortfolioSummaryCopyWithImpl<$Res>
    implements _$PortfolioSummaryCopyWith<$Res> {
  __$PortfolioSummaryCopyWithImpl(this._self, this._then);

  final _PortfolioSummary _self;
  final $Res Function(_PortfolioSummary) _then;

/// Create a copy of PortfolioSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctorId = null,Object? generatedAt = null,Object? metrics = null,Object? outcomes = null,Object? insights = null,Object? riskDistribution = null,Object? topConditions = null,}) {
  return _then(_PortfolioSummary(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as PortfolioMetrics,outcomes: null == outcomes ? _self._outcomes : outcomes // ignore: cast_nullable_to_non_nullable
as List<ClinicalOutcome>,insights: null == insights ? _self._insights : insights // ignore: cast_nullable_to_non_nullable
as List<AIInsight>,riskDistribution: null == riskDistribution ? _self.riskDistribution : riskDistribution // ignore: cast_nullable_to_non_nullable
as RiskDistribution,topConditions: null == topConditions ? _self._topConditions : topConditions // ignore: cast_nullable_to_non_nullable
as List<TopCondition>,
  ));
}

/// Create a copy of PortfolioSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioMetricsCopyWith<$Res> get metrics {
  
  return $PortfolioMetricsCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of PortfolioSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiskDistributionCopyWith<$Res> get riskDistribution {
  
  return $RiskDistributionCopyWith<$Res>(_self.riskDistribution, (value) {
    return _then(_self.copyWith(riskDistribution: value));
  });
}
}

/// @nodoc
mixin _$PortfolioMetrics {

 int get totalPatients; int get activePatients; int get criticalPatients; int get stablePatients; double get averageCSI; int get consultationsThisMonth; double get patientSatisfaction;
/// Create a copy of PortfolioMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioMetricsCopyWith<PortfolioMetrics> get copyWith => _$PortfolioMetricsCopyWithImpl<PortfolioMetrics>(this as PortfolioMetrics, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioMetrics&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.activePatients, activePatients) || other.activePatients == activePatients)&&(identical(other.criticalPatients, criticalPatients) || other.criticalPatients == criticalPatients)&&(identical(other.stablePatients, stablePatients) || other.stablePatients == stablePatients)&&(identical(other.averageCSI, averageCSI) || other.averageCSI == averageCSI)&&(identical(other.consultationsThisMonth, consultationsThisMonth) || other.consultationsThisMonth == consultationsThisMonth)&&(identical(other.patientSatisfaction, patientSatisfaction) || other.patientSatisfaction == patientSatisfaction));
}


@override
int get hashCode => Object.hash(runtimeType,totalPatients,activePatients,criticalPatients,stablePatients,averageCSI,consultationsThisMonth,patientSatisfaction);

@override
String toString() {
  return 'PortfolioMetrics(totalPatients: $totalPatients, activePatients: $activePatients, criticalPatients: $criticalPatients, stablePatients: $stablePatients, averageCSI: $averageCSI, consultationsThisMonth: $consultationsThisMonth, patientSatisfaction: $patientSatisfaction)';
}


}

/// @nodoc
abstract mixin class $PortfolioMetricsCopyWith<$Res>  {
  factory $PortfolioMetricsCopyWith(PortfolioMetrics value, $Res Function(PortfolioMetrics) _then) = _$PortfolioMetricsCopyWithImpl;
@useResult
$Res call({
 int totalPatients, int activePatients, int criticalPatients, int stablePatients, double averageCSI, int consultationsThisMonth, double patientSatisfaction
});




}
/// @nodoc
class _$PortfolioMetricsCopyWithImpl<$Res>
    implements $PortfolioMetricsCopyWith<$Res> {
  _$PortfolioMetricsCopyWithImpl(this._self, this._then);

  final PortfolioMetrics _self;
  final $Res Function(PortfolioMetrics) _then;

/// Create a copy of PortfolioMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalPatients = null,Object? activePatients = null,Object? criticalPatients = null,Object? stablePatients = null,Object? averageCSI = null,Object? consultationsThisMonth = null,Object? patientSatisfaction = null,}) {
  return _then(_self.copyWith(
totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,activePatients: null == activePatients ? _self.activePatients : activePatients // ignore: cast_nullable_to_non_nullable
as int,criticalPatients: null == criticalPatients ? _self.criticalPatients : criticalPatients // ignore: cast_nullable_to_non_nullable
as int,stablePatients: null == stablePatients ? _self.stablePatients : stablePatients // ignore: cast_nullable_to_non_nullable
as int,averageCSI: null == averageCSI ? _self.averageCSI : averageCSI // ignore: cast_nullable_to_non_nullable
as double,consultationsThisMonth: null == consultationsThisMonth ? _self.consultationsThisMonth : consultationsThisMonth // ignore: cast_nullable_to_non_nullable
as int,patientSatisfaction: null == patientSatisfaction ? _self.patientSatisfaction : patientSatisfaction // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PortfolioMetrics].
extension PortfolioMetricsPatterns on PortfolioMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioMetrics value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalPatients,  int activePatients,  int criticalPatients,  int stablePatients,  double averageCSI,  int consultationsThisMonth,  double patientSatisfaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioMetrics() when $default != null:
return $default(_that.totalPatients,_that.activePatients,_that.criticalPatients,_that.stablePatients,_that.averageCSI,_that.consultationsThisMonth,_that.patientSatisfaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalPatients,  int activePatients,  int criticalPatients,  int stablePatients,  double averageCSI,  int consultationsThisMonth,  double patientSatisfaction)  $default,) {final _that = this;
switch (_that) {
case _PortfolioMetrics():
return $default(_that.totalPatients,_that.activePatients,_that.criticalPatients,_that.stablePatients,_that.averageCSI,_that.consultationsThisMonth,_that.patientSatisfaction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalPatients,  int activePatients,  int criticalPatients,  int stablePatients,  double averageCSI,  int consultationsThisMonth,  double patientSatisfaction)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioMetrics() when $default != null:
return $default(_that.totalPatients,_that.activePatients,_that.criticalPatients,_that.stablePatients,_that.averageCSI,_that.consultationsThisMonth,_that.patientSatisfaction);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioMetrics implements PortfolioMetrics {
  const _PortfolioMetrics({required this.totalPatients, required this.activePatients, required this.criticalPatients, required this.stablePatients, required this.averageCSI, required this.consultationsThisMonth, required this.patientSatisfaction});
  

@override final  int totalPatients;
@override final  int activePatients;
@override final  int criticalPatients;
@override final  int stablePatients;
@override final  double averageCSI;
@override final  int consultationsThisMonth;
@override final  double patientSatisfaction;

/// Create a copy of PortfolioMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioMetricsCopyWith<_PortfolioMetrics> get copyWith => __$PortfolioMetricsCopyWithImpl<_PortfolioMetrics>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioMetrics&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.activePatients, activePatients) || other.activePatients == activePatients)&&(identical(other.criticalPatients, criticalPatients) || other.criticalPatients == criticalPatients)&&(identical(other.stablePatients, stablePatients) || other.stablePatients == stablePatients)&&(identical(other.averageCSI, averageCSI) || other.averageCSI == averageCSI)&&(identical(other.consultationsThisMonth, consultationsThisMonth) || other.consultationsThisMonth == consultationsThisMonth)&&(identical(other.patientSatisfaction, patientSatisfaction) || other.patientSatisfaction == patientSatisfaction));
}


@override
int get hashCode => Object.hash(runtimeType,totalPatients,activePatients,criticalPatients,stablePatients,averageCSI,consultationsThisMonth,patientSatisfaction);

@override
String toString() {
  return 'PortfolioMetrics(totalPatients: $totalPatients, activePatients: $activePatients, criticalPatients: $criticalPatients, stablePatients: $stablePatients, averageCSI: $averageCSI, consultationsThisMonth: $consultationsThisMonth, patientSatisfaction: $patientSatisfaction)';
}


}

/// @nodoc
abstract mixin class _$PortfolioMetricsCopyWith<$Res> implements $PortfolioMetricsCopyWith<$Res> {
  factory _$PortfolioMetricsCopyWith(_PortfolioMetrics value, $Res Function(_PortfolioMetrics) _then) = __$PortfolioMetricsCopyWithImpl;
@override @useResult
$Res call({
 int totalPatients, int activePatients, int criticalPatients, int stablePatients, double averageCSI, int consultationsThisMonth, double patientSatisfaction
});




}
/// @nodoc
class __$PortfolioMetricsCopyWithImpl<$Res>
    implements _$PortfolioMetricsCopyWith<$Res> {
  __$PortfolioMetricsCopyWithImpl(this._self, this._then);

  final _PortfolioMetrics _self;
  final $Res Function(_PortfolioMetrics) _then;

/// Create a copy of PortfolioMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalPatients = null,Object? activePatients = null,Object? criticalPatients = null,Object? stablePatients = null,Object? averageCSI = null,Object? consultationsThisMonth = null,Object? patientSatisfaction = null,}) {
  return _then(_PortfolioMetrics(
totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,activePatients: null == activePatients ? _self.activePatients : activePatients // ignore: cast_nullable_to_non_nullable
as int,criticalPatients: null == criticalPatients ? _self.criticalPatients : criticalPatients // ignore: cast_nullable_to_non_nullable
as int,stablePatients: null == stablePatients ? _self.stablePatients : stablePatients // ignore: cast_nullable_to_non_nullable
as int,averageCSI: null == averageCSI ? _self.averageCSI : averageCSI // ignore: cast_nullable_to_non_nullable
as double,consultationsThisMonth: null == consultationsThisMonth ? _self.consultationsThisMonth : consultationsThisMonth // ignore: cast_nullable_to_non_nullable
as int,patientSatisfaction: null == patientSatisfaction ? _self.patientSatisfaction : patientSatisfaction // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$ClinicalOutcome {

 String get category; int get total; int get improved; int get stable; int get declined; double get improvementRate;
/// Create a copy of ClinicalOutcome
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicalOutcomeCopyWith<ClinicalOutcome> get copyWith => _$ClinicalOutcomeCopyWithImpl<ClinicalOutcome>(this as ClinicalOutcome, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicalOutcome&&(identical(other.category, category) || other.category == category)&&(identical(other.total, total) || other.total == total)&&(identical(other.improved, improved) || other.improved == improved)&&(identical(other.stable, stable) || other.stable == stable)&&(identical(other.declined, declined) || other.declined == declined)&&(identical(other.improvementRate, improvementRate) || other.improvementRate == improvementRate));
}


@override
int get hashCode => Object.hash(runtimeType,category,total,improved,stable,declined,improvementRate);

@override
String toString() {
  return 'ClinicalOutcome(category: $category, total: $total, improved: $improved, stable: $stable, declined: $declined, improvementRate: $improvementRate)';
}


}

/// @nodoc
abstract mixin class $ClinicalOutcomeCopyWith<$Res>  {
  factory $ClinicalOutcomeCopyWith(ClinicalOutcome value, $Res Function(ClinicalOutcome) _then) = _$ClinicalOutcomeCopyWithImpl;
@useResult
$Res call({
 String category, int total, int improved, int stable, int declined, double improvementRate
});




}
/// @nodoc
class _$ClinicalOutcomeCopyWithImpl<$Res>
    implements $ClinicalOutcomeCopyWith<$Res> {
  _$ClinicalOutcomeCopyWithImpl(this._self, this._then);

  final ClinicalOutcome _self;
  final $Res Function(ClinicalOutcome) _then;

/// Create a copy of ClinicalOutcome
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? total = null,Object? improved = null,Object? stable = null,Object? declined = null,Object? improvementRate = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,improved: null == improved ? _self.improved : improved // ignore: cast_nullable_to_non_nullable
as int,stable: null == stable ? _self.stable : stable // ignore: cast_nullable_to_non_nullable
as int,declined: null == declined ? _self.declined : declined // ignore: cast_nullable_to_non_nullable
as int,improvementRate: null == improvementRate ? _self.improvementRate : improvementRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ClinicalOutcome].
extension ClinicalOutcomePatterns on ClinicalOutcome {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicalOutcome value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicalOutcome() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicalOutcome value)  $default,){
final _that = this;
switch (_that) {
case _ClinicalOutcome():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicalOutcome value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicalOutcome() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String category,  int total,  int improved,  int stable,  int declined,  double improvementRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicalOutcome() when $default != null:
return $default(_that.category,_that.total,_that.improved,_that.stable,_that.declined,_that.improvementRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String category,  int total,  int improved,  int stable,  int declined,  double improvementRate)  $default,) {final _that = this;
switch (_that) {
case _ClinicalOutcome():
return $default(_that.category,_that.total,_that.improved,_that.stable,_that.declined,_that.improvementRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String category,  int total,  int improved,  int stable,  int declined,  double improvementRate)?  $default,) {final _that = this;
switch (_that) {
case _ClinicalOutcome() when $default != null:
return $default(_that.category,_that.total,_that.improved,_that.stable,_that.declined,_that.improvementRate);case _:
  return null;

}
}

}

/// @nodoc


class _ClinicalOutcome implements ClinicalOutcome {
  const _ClinicalOutcome({required this.category, required this.total, required this.improved, required this.stable, required this.declined, required this.improvementRate});
  

@override final  String category;
@override final  int total;
@override final  int improved;
@override final  int stable;
@override final  int declined;
@override final  double improvementRate;

/// Create a copy of ClinicalOutcome
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicalOutcomeCopyWith<_ClinicalOutcome> get copyWith => __$ClinicalOutcomeCopyWithImpl<_ClinicalOutcome>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicalOutcome&&(identical(other.category, category) || other.category == category)&&(identical(other.total, total) || other.total == total)&&(identical(other.improved, improved) || other.improved == improved)&&(identical(other.stable, stable) || other.stable == stable)&&(identical(other.declined, declined) || other.declined == declined)&&(identical(other.improvementRate, improvementRate) || other.improvementRate == improvementRate));
}


@override
int get hashCode => Object.hash(runtimeType,category,total,improved,stable,declined,improvementRate);

@override
String toString() {
  return 'ClinicalOutcome(category: $category, total: $total, improved: $improved, stable: $stable, declined: $declined, improvementRate: $improvementRate)';
}


}

/// @nodoc
abstract mixin class _$ClinicalOutcomeCopyWith<$Res> implements $ClinicalOutcomeCopyWith<$Res> {
  factory _$ClinicalOutcomeCopyWith(_ClinicalOutcome value, $Res Function(_ClinicalOutcome) _then) = __$ClinicalOutcomeCopyWithImpl;
@override @useResult
$Res call({
 String category, int total, int improved, int stable, int declined, double improvementRate
});




}
/// @nodoc
class __$ClinicalOutcomeCopyWithImpl<$Res>
    implements _$ClinicalOutcomeCopyWith<$Res> {
  __$ClinicalOutcomeCopyWithImpl(this._self, this._then);

  final _ClinicalOutcome _self;
  final $Res Function(_ClinicalOutcome) _then;

/// Create a copy of ClinicalOutcome
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? total = null,Object? improved = null,Object? stable = null,Object? declined = null,Object? improvementRate = null,}) {
  return _then(_ClinicalOutcome(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,improved: null == improved ? _self.improved : improved // ignore: cast_nullable_to_non_nullable
as int,stable: null == stable ? _self.stable : stable // ignore: cast_nullable_to_non_nullable
as int,declined: null == declined ? _self.declined : declined // ignore: cast_nullable_to_non_nullable
as int,improvementRate: null == improvementRate ? _self.improvementRate : improvementRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$AIInsight {

 String get id; InsightCategory get category; String get title; String get description; InsightPriority get priority; List<String> get actionItems; int? get affectedPatientCount;
/// Create a copy of AIInsight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIInsightCopyWith<AIInsight> get copyWith => _$AIInsightCopyWithImpl<AIInsight>(this as AIInsight, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIInsight&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other.actionItems, actionItems)&&(identical(other.affectedPatientCount, affectedPatientCount) || other.affectedPatientCount == affectedPatientCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,category,title,description,priority,const DeepCollectionEquality().hash(actionItems),affectedPatientCount);

@override
String toString() {
  return 'AIInsight(id: $id, category: $category, title: $title, description: $description, priority: $priority, actionItems: $actionItems, affectedPatientCount: $affectedPatientCount)';
}


}

/// @nodoc
abstract mixin class $AIInsightCopyWith<$Res>  {
  factory $AIInsightCopyWith(AIInsight value, $Res Function(AIInsight) _then) = _$AIInsightCopyWithImpl;
@useResult
$Res call({
 String id, InsightCategory category, String title, String description, InsightPriority priority, List<String> actionItems, int? affectedPatientCount
});




}
/// @nodoc
class _$AIInsightCopyWithImpl<$Res>
    implements $AIInsightCopyWith<$Res> {
  _$AIInsightCopyWithImpl(this._self, this._then);

  final AIInsight _self;
  final $Res Function(AIInsight) _then;

/// Create a copy of AIInsight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? title = null,Object? description = null,Object? priority = null,Object? actionItems = null,Object? affectedPatientCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as InsightCategory,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as InsightPriority,actionItems: null == actionItems ? _self.actionItems : actionItems // ignore: cast_nullable_to_non_nullable
as List<String>,affectedPatientCount: freezed == affectedPatientCount ? _self.affectedPatientCount : affectedPatientCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AIInsight].
extension AIInsightPatterns on AIInsight {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIInsight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIInsight() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIInsight value)  $default,){
final _that = this;
switch (_that) {
case _AIInsight():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIInsight value)?  $default,){
final _that = this;
switch (_that) {
case _AIInsight() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  InsightCategory category,  String title,  String description,  InsightPriority priority,  List<String> actionItems,  int? affectedPatientCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIInsight() when $default != null:
return $default(_that.id,_that.category,_that.title,_that.description,_that.priority,_that.actionItems,_that.affectedPatientCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  InsightCategory category,  String title,  String description,  InsightPriority priority,  List<String> actionItems,  int? affectedPatientCount)  $default,) {final _that = this;
switch (_that) {
case _AIInsight():
return $default(_that.id,_that.category,_that.title,_that.description,_that.priority,_that.actionItems,_that.affectedPatientCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  InsightCategory category,  String title,  String description,  InsightPriority priority,  List<String> actionItems,  int? affectedPatientCount)?  $default,) {final _that = this;
switch (_that) {
case _AIInsight() when $default != null:
return $default(_that.id,_that.category,_that.title,_that.description,_that.priority,_that.actionItems,_that.affectedPatientCount);case _:
  return null;

}
}

}

/// @nodoc


class _AIInsight implements AIInsight {
  const _AIInsight({required this.id, required this.category, required this.title, required this.description, required this.priority, required final  List<String> actionItems, this.affectedPatientCount}): _actionItems = actionItems;
  

@override final  String id;
@override final  InsightCategory category;
@override final  String title;
@override final  String description;
@override final  InsightPriority priority;
 final  List<String> _actionItems;
@override List<String> get actionItems {
  if (_actionItems is EqualUnmodifiableListView) return _actionItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actionItems);
}

@override final  int? affectedPatientCount;

/// Create a copy of AIInsight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIInsightCopyWith<_AIInsight> get copyWith => __$AIInsightCopyWithImpl<_AIInsight>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIInsight&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other._actionItems, _actionItems)&&(identical(other.affectedPatientCount, affectedPatientCount) || other.affectedPatientCount == affectedPatientCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,category,title,description,priority,const DeepCollectionEquality().hash(_actionItems),affectedPatientCount);

@override
String toString() {
  return 'AIInsight(id: $id, category: $category, title: $title, description: $description, priority: $priority, actionItems: $actionItems, affectedPatientCount: $affectedPatientCount)';
}


}

/// @nodoc
abstract mixin class _$AIInsightCopyWith<$Res> implements $AIInsightCopyWith<$Res> {
  factory _$AIInsightCopyWith(_AIInsight value, $Res Function(_AIInsight) _then) = __$AIInsightCopyWithImpl;
@override @useResult
$Res call({
 String id, InsightCategory category, String title, String description, InsightPriority priority, List<String> actionItems, int? affectedPatientCount
});




}
/// @nodoc
class __$AIInsightCopyWithImpl<$Res>
    implements _$AIInsightCopyWith<$Res> {
  __$AIInsightCopyWithImpl(this._self, this._then);

  final _AIInsight _self;
  final $Res Function(_AIInsight) _then;

/// Create a copy of AIInsight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? title = null,Object? description = null,Object? priority = null,Object? actionItems = null,Object? affectedPatientCount = freezed,}) {
  return _then(_AIInsight(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as InsightCategory,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as InsightPriority,actionItems: null == actionItems ? _self._actionItems : actionItems // ignore: cast_nullable_to_non_nullable
as List<String>,affectedPatientCount: freezed == affectedPatientCount ? _self.affectedPatientCount : affectedPatientCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$RiskDistribution {

 int get critical; int get high; int get medium; int get low; int get stable;
/// Create a copy of RiskDistribution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskDistributionCopyWith<RiskDistribution> get copyWith => _$RiskDistributionCopyWithImpl<RiskDistribution>(this as RiskDistribution, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskDistribution&&(identical(other.critical, critical) || other.critical == critical)&&(identical(other.high, high) || other.high == high)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.low, low) || other.low == low)&&(identical(other.stable, stable) || other.stable == stable));
}


@override
int get hashCode => Object.hash(runtimeType,critical,high,medium,low,stable);

@override
String toString() {
  return 'RiskDistribution(critical: $critical, high: $high, medium: $medium, low: $low, stable: $stable)';
}


}

/// @nodoc
abstract mixin class $RiskDistributionCopyWith<$Res>  {
  factory $RiskDistributionCopyWith(RiskDistribution value, $Res Function(RiskDistribution) _then) = _$RiskDistributionCopyWithImpl;
@useResult
$Res call({
 int critical, int high, int medium, int low, int stable
});




}
/// @nodoc
class _$RiskDistributionCopyWithImpl<$Res>
    implements $RiskDistributionCopyWith<$Res> {
  _$RiskDistributionCopyWithImpl(this._self, this._then);

  final RiskDistribution _self;
  final $Res Function(RiskDistribution) _then;

/// Create a copy of RiskDistribution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? critical = null,Object? high = null,Object? medium = null,Object? low = null,Object? stable = null,}) {
  return _then(_self.copyWith(
critical: null == critical ? _self.critical : critical // ignore: cast_nullable_to_non_nullable
as int,high: null == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as int,medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as int,low: null == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as int,stable: null == stable ? _self.stable : stable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskDistribution].
extension RiskDistributionPatterns on RiskDistribution {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskDistribution value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskDistribution() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskDistribution value)  $default,){
final _that = this;
switch (_that) {
case _RiskDistribution():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskDistribution value)?  $default,){
final _that = this;
switch (_that) {
case _RiskDistribution() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int critical,  int high,  int medium,  int low,  int stable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskDistribution() when $default != null:
return $default(_that.critical,_that.high,_that.medium,_that.low,_that.stable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int critical,  int high,  int medium,  int low,  int stable)  $default,) {final _that = this;
switch (_that) {
case _RiskDistribution():
return $default(_that.critical,_that.high,_that.medium,_that.low,_that.stable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int critical,  int high,  int medium,  int low,  int stable)?  $default,) {final _that = this;
switch (_that) {
case _RiskDistribution() when $default != null:
return $default(_that.critical,_that.high,_that.medium,_that.low,_that.stable);case _:
  return null;

}
}

}

/// @nodoc


class _RiskDistribution extends RiskDistribution {
  const _RiskDistribution({required this.critical, required this.high, required this.medium, required this.low, required this.stable}): super._();
  

@override final  int critical;
@override final  int high;
@override final  int medium;
@override final  int low;
@override final  int stable;

/// Create a copy of RiskDistribution
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskDistributionCopyWith<_RiskDistribution> get copyWith => __$RiskDistributionCopyWithImpl<_RiskDistribution>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskDistribution&&(identical(other.critical, critical) || other.critical == critical)&&(identical(other.high, high) || other.high == high)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.low, low) || other.low == low)&&(identical(other.stable, stable) || other.stable == stable));
}


@override
int get hashCode => Object.hash(runtimeType,critical,high,medium,low,stable);

@override
String toString() {
  return 'RiskDistribution(critical: $critical, high: $high, medium: $medium, low: $low, stable: $stable)';
}


}

/// @nodoc
abstract mixin class _$RiskDistributionCopyWith<$Res> implements $RiskDistributionCopyWith<$Res> {
  factory _$RiskDistributionCopyWith(_RiskDistribution value, $Res Function(_RiskDistribution) _then) = __$RiskDistributionCopyWithImpl;
@override @useResult
$Res call({
 int critical, int high, int medium, int low, int stable
});




}
/// @nodoc
class __$RiskDistributionCopyWithImpl<$Res>
    implements _$RiskDistributionCopyWith<$Res> {
  __$RiskDistributionCopyWithImpl(this._self, this._then);

  final _RiskDistribution _self;
  final $Res Function(_RiskDistribution) _then;

/// Create a copy of RiskDistribution
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? critical = null,Object? high = null,Object? medium = null,Object? low = null,Object? stable = null,}) {
  return _then(_RiskDistribution(
critical: null == critical ? _self.critical : critical // ignore: cast_nullable_to_non_nullable
as int,high: null == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as int,medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as int,low: null == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as int,stable: null == stable ? _self.stable : stable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TopCondition {

 String get name; int get patientCount; double get averageCSI; String get trend;
/// Create a copy of TopCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopConditionCopyWith<TopCondition> get copyWith => _$TopConditionCopyWithImpl<TopCondition>(this as TopCondition, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopCondition&&(identical(other.name, name) || other.name == name)&&(identical(other.patientCount, patientCount) || other.patientCount == patientCount)&&(identical(other.averageCSI, averageCSI) || other.averageCSI == averageCSI)&&(identical(other.trend, trend) || other.trend == trend));
}


@override
int get hashCode => Object.hash(runtimeType,name,patientCount,averageCSI,trend);

@override
String toString() {
  return 'TopCondition(name: $name, patientCount: $patientCount, averageCSI: $averageCSI, trend: $trend)';
}


}

/// @nodoc
abstract mixin class $TopConditionCopyWith<$Res>  {
  factory $TopConditionCopyWith(TopCondition value, $Res Function(TopCondition) _then) = _$TopConditionCopyWithImpl;
@useResult
$Res call({
 String name, int patientCount, double averageCSI, String trend
});




}
/// @nodoc
class _$TopConditionCopyWithImpl<$Res>
    implements $TopConditionCopyWith<$Res> {
  _$TopConditionCopyWithImpl(this._self, this._then);

  final TopCondition _self;
  final $Res Function(TopCondition) _then;

/// Create a copy of TopCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? patientCount = null,Object? averageCSI = null,Object? trend = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,patientCount: null == patientCount ? _self.patientCount : patientCount // ignore: cast_nullable_to_non_nullable
as int,averageCSI: null == averageCSI ? _self.averageCSI : averageCSI // ignore: cast_nullable_to_non_nullable
as double,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TopCondition].
extension TopConditionPatterns on TopCondition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopCondition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopCondition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopCondition value)  $default,){
final _that = this;
switch (_that) {
case _TopCondition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopCondition value)?  $default,){
final _that = this;
switch (_that) {
case _TopCondition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int patientCount,  double averageCSI,  String trend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopCondition() when $default != null:
return $default(_that.name,_that.patientCount,_that.averageCSI,_that.trend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int patientCount,  double averageCSI,  String trend)  $default,) {final _that = this;
switch (_that) {
case _TopCondition():
return $default(_that.name,_that.patientCount,_that.averageCSI,_that.trend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int patientCount,  double averageCSI,  String trend)?  $default,) {final _that = this;
switch (_that) {
case _TopCondition() when $default != null:
return $default(_that.name,_that.patientCount,_that.averageCSI,_that.trend);case _:
  return null;

}
}

}

/// @nodoc


class _TopCondition implements TopCondition {
  const _TopCondition({required this.name, required this.patientCount, required this.averageCSI, required this.trend});
  

@override final  String name;
@override final  int patientCount;
@override final  double averageCSI;
@override final  String trend;

/// Create a copy of TopCondition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopConditionCopyWith<_TopCondition> get copyWith => __$TopConditionCopyWithImpl<_TopCondition>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopCondition&&(identical(other.name, name) || other.name == name)&&(identical(other.patientCount, patientCount) || other.patientCount == patientCount)&&(identical(other.averageCSI, averageCSI) || other.averageCSI == averageCSI)&&(identical(other.trend, trend) || other.trend == trend));
}


@override
int get hashCode => Object.hash(runtimeType,name,patientCount,averageCSI,trend);

@override
String toString() {
  return 'TopCondition(name: $name, patientCount: $patientCount, averageCSI: $averageCSI, trend: $trend)';
}


}

/// @nodoc
abstract mixin class _$TopConditionCopyWith<$Res> implements $TopConditionCopyWith<$Res> {
  factory _$TopConditionCopyWith(_TopCondition value, $Res Function(_TopCondition) _then) = __$TopConditionCopyWithImpl;
@override @useResult
$Res call({
 String name, int patientCount, double averageCSI, String trend
});




}
/// @nodoc
class __$TopConditionCopyWithImpl<$Res>
    implements _$TopConditionCopyWith<$Res> {
  __$TopConditionCopyWithImpl(this._self, this._then);

  final _TopCondition _self;
  final $Res Function(_TopCondition) _then;

/// Create a copy of TopCondition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? patientCount = null,Object? averageCSI = null,Object? trend = null,}) {
  return _then(_TopCondition(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,patientCount: null == patientCount ? _self.patientCount : patientCount // ignore: cast_nullable_to_non_nullable
as int,averageCSI: null == averageCSI ? _self.averageCSI : averageCSI // ignore: cast_nullable_to_non_nullable
as double,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
