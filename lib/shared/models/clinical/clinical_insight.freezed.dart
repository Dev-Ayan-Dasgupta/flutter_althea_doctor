// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinical_insight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClinicalInsight {

 String get id; InsightType get type; InsightSeverity get severity; String get title; String get description; List<String> get evidencePoints; DateTime get detectedAt; String? get recommendation; List<String>? get affectedVitals; List<String>? get relatedMedications; double? get confidenceScore;// 0-1
 bool? get acknowledged;
/// Create a copy of ClinicalInsight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicalInsightCopyWith<ClinicalInsight> get copyWith => _$ClinicalInsightCopyWithImpl<ClinicalInsight>(this as ClinicalInsight, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicalInsight&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.evidencePoints, evidencePoints)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&const DeepCollectionEquality().equals(other.affectedVitals, affectedVitals)&&const DeepCollectionEquality().equals(other.relatedMedications, relatedMedications)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore)&&(identical(other.acknowledged, acknowledged) || other.acknowledged == acknowledged));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,severity,title,description,const DeepCollectionEquality().hash(evidencePoints),detectedAt,recommendation,const DeepCollectionEquality().hash(affectedVitals),const DeepCollectionEquality().hash(relatedMedications),confidenceScore,acknowledged);

@override
String toString() {
  return 'ClinicalInsight(id: $id, type: $type, severity: $severity, title: $title, description: $description, evidencePoints: $evidencePoints, detectedAt: $detectedAt, recommendation: $recommendation, affectedVitals: $affectedVitals, relatedMedications: $relatedMedications, confidenceScore: $confidenceScore, acknowledged: $acknowledged)';
}


}

/// @nodoc
abstract mixin class $ClinicalInsightCopyWith<$Res>  {
  factory $ClinicalInsightCopyWith(ClinicalInsight value, $Res Function(ClinicalInsight) _then) = _$ClinicalInsightCopyWithImpl;
@useResult
$Res call({
 String id, InsightType type, InsightSeverity severity, String title, String description, List<String> evidencePoints, DateTime detectedAt, String? recommendation, List<String>? affectedVitals, List<String>? relatedMedications, double? confidenceScore, bool? acknowledged
});




}
/// @nodoc
class _$ClinicalInsightCopyWithImpl<$Res>
    implements $ClinicalInsightCopyWith<$Res> {
  _$ClinicalInsightCopyWithImpl(this._self, this._then);

  final ClinicalInsight _self;
  final $Res Function(ClinicalInsight) _then;

/// Create a copy of ClinicalInsight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? severity = null,Object? title = null,Object? description = null,Object? evidencePoints = null,Object? detectedAt = null,Object? recommendation = freezed,Object? affectedVitals = freezed,Object? relatedMedications = freezed,Object? confidenceScore = freezed,Object? acknowledged = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InsightType,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as InsightSeverity,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidencePoints: null == evidencePoints ? _self.evidencePoints : evidencePoints // ignore: cast_nullable_to_non_nullable
as List<String>,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,affectedVitals: freezed == affectedVitals ? _self.affectedVitals : affectedVitals // ignore: cast_nullable_to_non_nullable
as List<String>?,relatedMedications: freezed == relatedMedications ? _self.relatedMedications : relatedMedications // ignore: cast_nullable_to_non_nullable
as List<String>?,confidenceScore: freezed == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double?,acknowledged: freezed == acknowledged ? _self.acknowledged : acknowledged // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClinicalInsight].
extension ClinicalInsightPatterns on ClinicalInsight {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicalInsight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicalInsight() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicalInsight value)  $default,){
final _that = this;
switch (_that) {
case _ClinicalInsight():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicalInsight value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicalInsight() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  InsightType type,  InsightSeverity severity,  String title,  String description,  List<String> evidencePoints,  DateTime detectedAt,  String? recommendation,  List<String>? affectedVitals,  List<String>? relatedMedications,  double? confidenceScore,  bool? acknowledged)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicalInsight() when $default != null:
return $default(_that.id,_that.type,_that.severity,_that.title,_that.description,_that.evidencePoints,_that.detectedAt,_that.recommendation,_that.affectedVitals,_that.relatedMedications,_that.confidenceScore,_that.acknowledged);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  InsightType type,  InsightSeverity severity,  String title,  String description,  List<String> evidencePoints,  DateTime detectedAt,  String? recommendation,  List<String>? affectedVitals,  List<String>? relatedMedications,  double? confidenceScore,  bool? acknowledged)  $default,) {final _that = this;
switch (_that) {
case _ClinicalInsight():
return $default(_that.id,_that.type,_that.severity,_that.title,_that.description,_that.evidencePoints,_that.detectedAt,_that.recommendation,_that.affectedVitals,_that.relatedMedications,_that.confidenceScore,_that.acknowledged);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  InsightType type,  InsightSeverity severity,  String title,  String description,  List<String> evidencePoints,  DateTime detectedAt,  String? recommendation,  List<String>? affectedVitals,  List<String>? relatedMedications,  double? confidenceScore,  bool? acknowledged)?  $default,) {final _that = this;
switch (_that) {
case _ClinicalInsight() when $default != null:
return $default(_that.id,_that.type,_that.severity,_that.title,_that.description,_that.evidencePoints,_that.detectedAt,_that.recommendation,_that.affectedVitals,_that.relatedMedications,_that.confidenceScore,_that.acknowledged);case _:
  return null;

}
}

}

/// @nodoc


class _ClinicalInsight extends ClinicalInsight {
  const _ClinicalInsight({required this.id, required this.type, required this.severity, required this.title, required this.description, required final  List<String> evidencePoints, required this.detectedAt, this.recommendation, final  List<String>? affectedVitals, final  List<String>? relatedMedications, this.confidenceScore, this.acknowledged}): _evidencePoints = evidencePoints,_affectedVitals = affectedVitals,_relatedMedications = relatedMedications,super._();
  

@override final  String id;
@override final  InsightType type;
@override final  InsightSeverity severity;
@override final  String title;
@override final  String description;
 final  List<String> _evidencePoints;
@override List<String> get evidencePoints {
  if (_evidencePoints is EqualUnmodifiableListView) return _evidencePoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidencePoints);
}

@override final  DateTime detectedAt;
@override final  String? recommendation;
 final  List<String>? _affectedVitals;
@override List<String>? get affectedVitals {
  final value = _affectedVitals;
  if (value == null) return null;
  if (_affectedVitals is EqualUnmodifiableListView) return _affectedVitals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _relatedMedications;
@override List<String>? get relatedMedications {
  final value = _relatedMedications;
  if (value == null) return null;
  if (_relatedMedications is EqualUnmodifiableListView) return _relatedMedications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? confidenceScore;
// 0-1
@override final  bool? acknowledged;

/// Create a copy of ClinicalInsight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicalInsightCopyWith<_ClinicalInsight> get copyWith => __$ClinicalInsightCopyWithImpl<_ClinicalInsight>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicalInsight&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._evidencePoints, _evidencePoints)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&const DeepCollectionEquality().equals(other._affectedVitals, _affectedVitals)&&const DeepCollectionEquality().equals(other._relatedMedications, _relatedMedications)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore)&&(identical(other.acknowledged, acknowledged) || other.acknowledged == acknowledged));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,severity,title,description,const DeepCollectionEquality().hash(_evidencePoints),detectedAt,recommendation,const DeepCollectionEquality().hash(_affectedVitals),const DeepCollectionEquality().hash(_relatedMedications),confidenceScore,acknowledged);

@override
String toString() {
  return 'ClinicalInsight(id: $id, type: $type, severity: $severity, title: $title, description: $description, evidencePoints: $evidencePoints, detectedAt: $detectedAt, recommendation: $recommendation, affectedVitals: $affectedVitals, relatedMedications: $relatedMedications, confidenceScore: $confidenceScore, acknowledged: $acknowledged)';
}


}

/// @nodoc
abstract mixin class _$ClinicalInsightCopyWith<$Res> implements $ClinicalInsightCopyWith<$Res> {
  factory _$ClinicalInsightCopyWith(_ClinicalInsight value, $Res Function(_ClinicalInsight) _then) = __$ClinicalInsightCopyWithImpl;
@override @useResult
$Res call({
 String id, InsightType type, InsightSeverity severity, String title, String description, List<String> evidencePoints, DateTime detectedAt, String? recommendation, List<String>? affectedVitals, List<String>? relatedMedications, double? confidenceScore, bool? acknowledged
});




}
/// @nodoc
class __$ClinicalInsightCopyWithImpl<$Res>
    implements _$ClinicalInsightCopyWith<$Res> {
  __$ClinicalInsightCopyWithImpl(this._self, this._then);

  final _ClinicalInsight _self;
  final $Res Function(_ClinicalInsight) _then;

/// Create a copy of ClinicalInsight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? severity = null,Object? title = null,Object? description = null,Object? evidencePoints = null,Object? detectedAt = null,Object? recommendation = freezed,Object? affectedVitals = freezed,Object? relatedMedications = freezed,Object? confidenceScore = freezed,Object? acknowledged = freezed,}) {
  return _then(_ClinicalInsight(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InsightType,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as InsightSeverity,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidencePoints: null == evidencePoints ? _self._evidencePoints : evidencePoints // ignore: cast_nullable_to_non_nullable
as List<String>,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,affectedVitals: freezed == affectedVitals ? _self._affectedVitals : affectedVitals // ignore: cast_nullable_to_non_nullable
as List<String>?,relatedMedications: freezed == relatedMedications ? _self._relatedMedications : relatedMedications // ignore: cast_nullable_to_non_nullable
as List<String>?,confidenceScore: freezed == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double?,acknowledged: freezed == acknowledged ? _self.acknowledged : acknowledged // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$ClinicalCorrelation {

 String get event1; String get event2; DateTime get timestamp1; DateTime get timestamp2; String get correlationType;// 'causal', 'temporal', 'pattern'
 double get strength;// 0-1
 String? get explanation;
/// Create a copy of ClinicalCorrelation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicalCorrelationCopyWith<ClinicalCorrelation> get copyWith => _$ClinicalCorrelationCopyWithImpl<ClinicalCorrelation>(this as ClinicalCorrelation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicalCorrelation&&(identical(other.event1, event1) || other.event1 == event1)&&(identical(other.event2, event2) || other.event2 == event2)&&(identical(other.timestamp1, timestamp1) || other.timestamp1 == timestamp1)&&(identical(other.timestamp2, timestamp2) || other.timestamp2 == timestamp2)&&(identical(other.correlationType, correlationType) || other.correlationType == correlationType)&&(identical(other.strength, strength) || other.strength == strength)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}


@override
int get hashCode => Object.hash(runtimeType,event1,event2,timestamp1,timestamp2,correlationType,strength,explanation);

@override
String toString() {
  return 'ClinicalCorrelation(event1: $event1, event2: $event2, timestamp1: $timestamp1, timestamp2: $timestamp2, correlationType: $correlationType, strength: $strength, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class $ClinicalCorrelationCopyWith<$Res>  {
  factory $ClinicalCorrelationCopyWith(ClinicalCorrelation value, $Res Function(ClinicalCorrelation) _then) = _$ClinicalCorrelationCopyWithImpl;
@useResult
$Res call({
 String event1, String event2, DateTime timestamp1, DateTime timestamp2, String correlationType, double strength, String? explanation
});




}
/// @nodoc
class _$ClinicalCorrelationCopyWithImpl<$Res>
    implements $ClinicalCorrelationCopyWith<$Res> {
  _$ClinicalCorrelationCopyWithImpl(this._self, this._then);

  final ClinicalCorrelation _self;
  final $Res Function(ClinicalCorrelation) _then;

/// Create a copy of ClinicalCorrelation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event1 = null,Object? event2 = null,Object? timestamp1 = null,Object? timestamp2 = null,Object? correlationType = null,Object? strength = null,Object? explanation = freezed,}) {
  return _then(_self.copyWith(
event1: null == event1 ? _self.event1 : event1 // ignore: cast_nullable_to_non_nullable
as String,event2: null == event2 ? _self.event2 : event2 // ignore: cast_nullable_to_non_nullable
as String,timestamp1: null == timestamp1 ? _self.timestamp1 : timestamp1 // ignore: cast_nullable_to_non_nullable
as DateTime,timestamp2: null == timestamp2 ? _self.timestamp2 : timestamp2 // ignore: cast_nullable_to_non_nullable
as DateTime,correlationType: null == correlationType ? _self.correlationType : correlationType // ignore: cast_nullable_to_non_nullable
as String,strength: null == strength ? _self.strength : strength // ignore: cast_nullable_to_non_nullable
as double,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClinicalCorrelation].
extension ClinicalCorrelationPatterns on ClinicalCorrelation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicalCorrelation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicalCorrelation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicalCorrelation value)  $default,){
final _that = this;
switch (_that) {
case _ClinicalCorrelation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicalCorrelation value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicalCorrelation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String event1,  String event2,  DateTime timestamp1,  DateTime timestamp2,  String correlationType,  double strength,  String? explanation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicalCorrelation() when $default != null:
return $default(_that.event1,_that.event2,_that.timestamp1,_that.timestamp2,_that.correlationType,_that.strength,_that.explanation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String event1,  String event2,  DateTime timestamp1,  DateTime timestamp2,  String correlationType,  double strength,  String? explanation)  $default,) {final _that = this;
switch (_that) {
case _ClinicalCorrelation():
return $default(_that.event1,_that.event2,_that.timestamp1,_that.timestamp2,_that.correlationType,_that.strength,_that.explanation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String event1,  String event2,  DateTime timestamp1,  DateTime timestamp2,  String correlationType,  double strength,  String? explanation)?  $default,) {final _that = this;
switch (_that) {
case _ClinicalCorrelation() when $default != null:
return $default(_that.event1,_that.event2,_that.timestamp1,_that.timestamp2,_that.correlationType,_that.strength,_that.explanation);case _:
  return null;

}
}

}

/// @nodoc


class _ClinicalCorrelation extends ClinicalCorrelation {
  const _ClinicalCorrelation({required this.event1, required this.event2, required this.timestamp1, required this.timestamp2, required this.correlationType, required this.strength, this.explanation}): super._();
  

@override final  String event1;
@override final  String event2;
@override final  DateTime timestamp1;
@override final  DateTime timestamp2;
@override final  String correlationType;
// 'causal', 'temporal', 'pattern'
@override final  double strength;
// 0-1
@override final  String? explanation;

/// Create a copy of ClinicalCorrelation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicalCorrelationCopyWith<_ClinicalCorrelation> get copyWith => __$ClinicalCorrelationCopyWithImpl<_ClinicalCorrelation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicalCorrelation&&(identical(other.event1, event1) || other.event1 == event1)&&(identical(other.event2, event2) || other.event2 == event2)&&(identical(other.timestamp1, timestamp1) || other.timestamp1 == timestamp1)&&(identical(other.timestamp2, timestamp2) || other.timestamp2 == timestamp2)&&(identical(other.correlationType, correlationType) || other.correlationType == correlationType)&&(identical(other.strength, strength) || other.strength == strength)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}


@override
int get hashCode => Object.hash(runtimeType,event1,event2,timestamp1,timestamp2,correlationType,strength,explanation);

@override
String toString() {
  return 'ClinicalCorrelation(event1: $event1, event2: $event2, timestamp1: $timestamp1, timestamp2: $timestamp2, correlationType: $correlationType, strength: $strength, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class _$ClinicalCorrelationCopyWith<$Res> implements $ClinicalCorrelationCopyWith<$Res> {
  factory _$ClinicalCorrelationCopyWith(_ClinicalCorrelation value, $Res Function(_ClinicalCorrelation) _then) = __$ClinicalCorrelationCopyWithImpl;
@override @useResult
$Res call({
 String event1, String event2, DateTime timestamp1, DateTime timestamp2, String correlationType, double strength, String? explanation
});




}
/// @nodoc
class __$ClinicalCorrelationCopyWithImpl<$Res>
    implements _$ClinicalCorrelationCopyWith<$Res> {
  __$ClinicalCorrelationCopyWithImpl(this._self, this._then);

  final _ClinicalCorrelation _self;
  final $Res Function(_ClinicalCorrelation) _then;

/// Create a copy of ClinicalCorrelation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event1 = null,Object? event2 = null,Object? timestamp1 = null,Object? timestamp2 = null,Object? correlationType = null,Object? strength = null,Object? explanation = freezed,}) {
  return _then(_ClinicalCorrelation(
event1: null == event1 ? _self.event1 : event1 // ignore: cast_nullable_to_non_nullable
as String,event2: null == event2 ? _self.event2 : event2 // ignore: cast_nullable_to_non_nullable
as String,timestamp1: null == timestamp1 ? _self.timestamp1 : timestamp1 // ignore: cast_nullable_to_non_nullable
as DateTime,timestamp2: null == timestamp2 ? _self.timestamp2 : timestamp2 // ignore: cast_nullable_to_non_nullable
as DateTime,correlationType: null == correlationType ? _self.correlationType : correlationType // ignore: cast_nullable_to_non_nullable
as String,strength: null == strength ? _self.strength : strength // ignore: cast_nullable_to_non_nullable
as double,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$RiskPrediction {

 RiskType get riskType; double get probability;// 0-1
 List<String> get contributingFactors; DateTime get predictedTimeframe; String? get preventionRecommendation;
/// Create a copy of RiskPrediction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskPredictionCopyWith<RiskPrediction> get copyWith => _$RiskPredictionCopyWithImpl<RiskPrediction>(this as RiskPrediction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskPrediction&&(identical(other.riskType, riskType) || other.riskType == riskType)&&(identical(other.probability, probability) || other.probability == probability)&&const DeepCollectionEquality().equals(other.contributingFactors, contributingFactors)&&(identical(other.predictedTimeframe, predictedTimeframe) || other.predictedTimeframe == predictedTimeframe)&&(identical(other.preventionRecommendation, preventionRecommendation) || other.preventionRecommendation == preventionRecommendation));
}


@override
int get hashCode => Object.hash(runtimeType,riskType,probability,const DeepCollectionEquality().hash(contributingFactors),predictedTimeframe,preventionRecommendation);

@override
String toString() {
  return 'RiskPrediction(riskType: $riskType, probability: $probability, contributingFactors: $contributingFactors, predictedTimeframe: $predictedTimeframe, preventionRecommendation: $preventionRecommendation)';
}


}

/// @nodoc
abstract mixin class $RiskPredictionCopyWith<$Res>  {
  factory $RiskPredictionCopyWith(RiskPrediction value, $Res Function(RiskPrediction) _then) = _$RiskPredictionCopyWithImpl;
@useResult
$Res call({
 RiskType riskType, double probability, List<String> contributingFactors, DateTime predictedTimeframe, String? preventionRecommendation
});




}
/// @nodoc
class _$RiskPredictionCopyWithImpl<$Res>
    implements $RiskPredictionCopyWith<$Res> {
  _$RiskPredictionCopyWithImpl(this._self, this._then);

  final RiskPrediction _self;
  final $Res Function(RiskPrediction) _then;

/// Create a copy of RiskPrediction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? riskType = null,Object? probability = null,Object? contributingFactors = null,Object? predictedTimeframe = null,Object? preventionRecommendation = freezed,}) {
  return _then(_self.copyWith(
riskType: null == riskType ? _self.riskType : riskType // ignore: cast_nullable_to_non_nullable
as RiskType,probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double,contributingFactors: null == contributingFactors ? _self.contributingFactors : contributingFactors // ignore: cast_nullable_to_non_nullable
as List<String>,predictedTimeframe: null == predictedTimeframe ? _self.predictedTimeframe : predictedTimeframe // ignore: cast_nullable_to_non_nullable
as DateTime,preventionRecommendation: freezed == preventionRecommendation ? _self.preventionRecommendation : preventionRecommendation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskPrediction].
extension RiskPredictionPatterns on RiskPrediction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskPrediction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskPrediction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskPrediction value)  $default,){
final _that = this;
switch (_that) {
case _RiskPrediction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskPrediction value)?  $default,){
final _that = this;
switch (_that) {
case _RiskPrediction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RiskType riskType,  double probability,  List<String> contributingFactors,  DateTime predictedTimeframe,  String? preventionRecommendation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskPrediction() when $default != null:
return $default(_that.riskType,_that.probability,_that.contributingFactors,_that.predictedTimeframe,_that.preventionRecommendation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RiskType riskType,  double probability,  List<String> contributingFactors,  DateTime predictedTimeframe,  String? preventionRecommendation)  $default,) {final _that = this;
switch (_that) {
case _RiskPrediction():
return $default(_that.riskType,_that.probability,_that.contributingFactors,_that.predictedTimeframe,_that.preventionRecommendation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RiskType riskType,  double probability,  List<String> contributingFactors,  DateTime predictedTimeframe,  String? preventionRecommendation)?  $default,) {final _that = this;
switch (_that) {
case _RiskPrediction() when $default != null:
return $default(_that.riskType,_that.probability,_that.contributingFactors,_that.predictedTimeframe,_that.preventionRecommendation);case _:
  return null;

}
}

}

/// @nodoc


class _RiskPrediction extends RiskPrediction {
  const _RiskPrediction({required this.riskType, required this.probability, required final  List<String> contributingFactors, required this.predictedTimeframe, this.preventionRecommendation}): _contributingFactors = contributingFactors,super._();
  

@override final  RiskType riskType;
@override final  double probability;
// 0-1
 final  List<String> _contributingFactors;
// 0-1
@override List<String> get contributingFactors {
  if (_contributingFactors is EqualUnmodifiableListView) return _contributingFactors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contributingFactors);
}

@override final  DateTime predictedTimeframe;
@override final  String? preventionRecommendation;

/// Create a copy of RiskPrediction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskPredictionCopyWith<_RiskPrediction> get copyWith => __$RiskPredictionCopyWithImpl<_RiskPrediction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskPrediction&&(identical(other.riskType, riskType) || other.riskType == riskType)&&(identical(other.probability, probability) || other.probability == probability)&&const DeepCollectionEquality().equals(other._contributingFactors, _contributingFactors)&&(identical(other.predictedTimeframe, predictedTimeframe) || other.predictedTimeframe == predictedTimeframe)&&(identical(other.preventionRecommendation, preventionRecommendation) || other.preventionRecommendation == preventionRecommendation));
}


@override
int get hashCode => Object.hash(runtimeType,riskType,probability,const DeepCollectionEquality().hash(_contributingFactors),predictedTimeframe,preventionRecommendation);

@override
String toString() {
  return 'RiskPrediction(riskType: $riskType, probability: $probability, contributingFactors: $contributingFactors, predictedTimeframe: $predictedTimeframe, preventionRecommendation: $preventionRecommendation)';
}


}

/// @nodoc
abstract mixin class _$RiskPredictionCopyWith<$Res> implements $RiskPredictionCopyWith<$Res> {
  factory _$RiskPredictionCopyWith(_RiskPrediction value, $Res Function(_RiskPrediction) _then) = __$RiskPredictionCopyWithImpl;
@override @useResult
$Res call({
 RiskType riskType, double probability, List<String> contributingFactors, DateTime predictedTimeframe, String? preventionRecommendation
});




}
/// @nodoc
class __$RiskPredictionCopyWithImpl<$Res>
    implements _$RiskPredictionCopyWith<$Res> {
  __$RiskPredictionCopyWithImpl(this._self, this._then);

  final _RiskPrediction _self;
  final $Res Function(_RiskPrediction) _then;

/// Create a copy of RiskPrediction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? riskType = null,Object? probability = null,Object? contributingFactors = null,Object? predictedTimeframe = null,Object? preventionRecommendation = freezed,}) {
  return _then(_RiskPrediction(
riskType: null == riskType ? _self.riskType : riskType // ignore: cast_nullable_to_non_nullable
as RiskType,probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double,contributingFactors: null == contributingFactors ? _self._contributingFactors : contributingFactors // ignore: cast_nullable_to_non_nullable
as List<String>,predictedTimeframe: null == predictedTimeframe ? _self.predictedTimeframe : predictedTimeframe // ignore: cast_nullable_to_non_nullable
as DateTime,preventionRecommendation: freezed == preventionRecommendation ? _self.preventionRecommendation : preventionRecommendation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
