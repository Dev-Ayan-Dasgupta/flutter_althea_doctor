// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinical_stability_index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClinicalStabilityIndex {

 double get score;// 0-100 (0 = critical, 100 = stable)
 ClinicalRiskLevel get riskLevel; List<RiskFactor> get riskFactors; DateTime get calculatedAt; String? get primaryConcern;
/// Create a copy of ClinicalStabilityIndex
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicalStabilityIndexCopyWith<ClinicalStabilityIndex> get copyWith => _$ClinicalStabilityIndexCopyWithImpl<ClinicalStabilityIndex>(this as ClinicalStabilityIndex, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicalStabilityIndex&&(identical(other.score, score) || other.score == score)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&const DeepCollectionEquality().equals(other.riskFactors, riskFactors)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt)&&(identical(other.primaryConcern, primaryConcern) || other.primaryConcern == primaryConcern));
}


@override
int get hashCode => Object.hash(runtimeType,score,riskLevel,const DeepCollectionEquality().hash(riskFactors),calculatedAt,primaryConcern);

@override
String toString() {
  return 'ClinicalStabilityIndex(score: $score, riskLevel: $riskLevel, riskFactors: $riskFactors, calculatedAt: $calculatedAt, primaryConcern: $primaryConcern)';
}


}

/// @nodoc
abstract mixin class $ClinicalStabilityIndexCopyWith<$Res>  {
  factory $ClinicalStabilityIndexCopyWith(ClinicalStabilityIndex value, $Res Function(ClinicalStabilityIndex) _then) = _$ClinicalStabilityIndexCopyWithImpl;
@useResult
$Res call({
 double score, ClinicalRiskLevel riskLevel, List<RiskFactor> riskFactors, DateTime calculatedAt, String? primaryConcern
});




}
/// @nodoc
class _$ClinicalStabilityIndexCopyWithImpl<$Res>
    implements $ClinicalStabilityIndexCopyWith<$Res> {
  _$ClinicalStabilityIndexCopyWithImpl(this._self, this._then);

  final ClinicalStabilityIndex _self;
  final $Res Function(ClinicalStabilityIndex) _then;

/// Create a copy of ClinicalStabilityIndex
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? riskLevel = null,Object? riskFactors = null,Object? calculatedAt = null,Object? primaryConcern = freezed,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as ClinicalRiskLevel,riskFactors: null == riskFactors ? _self.riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<RiskFactor>,calculatedAt: null == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,primaryConcern: freezed == primaryConcern ? _self.primaryConcern : primaryConcern // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClinicalStabilityIndex].
extension ClinicalStabilityIndexPatterns on ClinicalStabilityIndex {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicalStabilityIndex value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicalStabilityIndex() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicalStabilityIndex value)  $default,){
final _that = this;
switch (_that) {
case _ClinicalStabilityIndex():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicalStabilityIndex value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicalStabilityIndex() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double score,  ClinicalRiskLevel riskLevel,  List<RiskFactor> riskFactors,  DateTime calculatedAt,  String? primaryConcern)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicalStabilityIndex() when $default != null:
return $default(_that.score,_that.riskLevel,_that.riskFactors,_that.calculatedAt,_that.primaryConcern);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double score,  ClinicalRiskLevel riskLevel,  List<RiskFactor> riskFactors,  DateTime calculatedAt,  String? primaryConcern)  $default,) {final _that = this;
switch (_that) {
case _ClinicalStabilityIndex():
return $default(_that.score,_that.riskLevel,_that.riskFactors,_that.calculatedAt,_that.primaryConcern);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double score,  ClinicalRiskLevel riskLevel,  List<RiskFactor> riskFactors,  DateTime calculatedAt,  String? primaryConcern)?  $default,) {final _that = this;
switch (_that) {
case _ClinicalStabilityIndex() when $default != null:
return $default(_that.score,_that.riskLevel,_that.riskFactors,_that.calculatedAt,_that.primaryConcern);case _:
  return null;

}
}

}

/// @nodoc


class _ClinicalStabilityIndex extends ClinicalStabilityIndex {
  const _ClinicalStabilityIndex({required this.score, required this.riskLevel, required final  List<RiskFactor> riskFactors, required this.calculatedAt, this.primaryConcern}): _riskFactors = riskFactors,super._();
  

@override final  double score;
// 0-100 (0 = critical, 100 = stable)
@override final  ClinicalRiskLevel riskLevel;
 final  List<RiskFactor> _riskFactors;
@override List<RiskFactor> get riskFactors {
  if (_riskFactors is EqualUnmodifiableListView) return _riskFactors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riskFactors);
}

@override final  DateTime calculatedAt;
@override final  String? primaryConcern;

/// Create a copy of ClinicalStabilityIndex
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicalStabilityIndexCopyWith<_ClinicalStabilityIndex> get copyWith => __$ClinicalStabilityIndexCopyWithImpl<_ClinicalStabilityIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicalStabilityIndex&&(identical(other.score, score) || other.score == score)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&const DeepCollectionEquality().equals(other._riskFactors, _riskFactors)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt)&&(identical(other.primaryConcern, primaryConcern) || other.primaryConcern == primaryConcern));
}


@override
int get hashCode => Object.hash(runtimeType,score,riskLevel,const DeepCollectionEquality().hash(_riskFactors),calculatedAt,primaryConcern);

@override
String toString() {
  return 'ClinicalStabilityIndex(score: $score, riskLevel: $riskLevel, riskFactors: $riskFactors, calculatedAt: $calculatedAt, primaryConcern: $primaryConcern)';
}


}

/// @nodoc
abstract mixin class _$ClinicalStabilityIndexCopyWith<$Res> implements $ClinicalStabilityIndexCopyWith<$Res> {
  factory _$ClinicalStabilityIndexCopyWith(_ClinicalStabilityIndex value, $Res Function(_ClinicalStabilityIndex) _then) = __$ClinicalStabilityIndexCopyWithImpl;
@override @useResult
$Res call({
 double score, ClinicalRiskLevel riskLevel, List<RiskFactor> riskFactors, DateTime calculatedAt, String? primaryConcern
});




}
/// @nodoc
class __$ClinicalStabilityIndexCopyWithImpl<$Res>
    implements _$ClinicalStabilityIndexCopyWith<$Res> {
  __$ClinicalStabilityIndexCopyWithImpl(this._self, this._then);

  final _ClinicalStabilityIndex _self;
  final $Res Function(_ClinicalStabilityIndex) _then;

/// Create a copy of ClinicalStabilityIndex
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? riskLevel = null,Object? riskFactors = null,Object? calculatedAt = null,Object? primaryConcern = freezed,}) {
  return _then(_ClinicalStabilityIndex(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as ClinicalRiskLevel,riskFactors: null == riskFactors ? _self._riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<RiskFactor>,calculatedAt: null == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,primaryConcern: freezed == primaryConcern ? _self.primaryConcern : primaryConcern // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$RiskFactor {

 String get type;// 'vital', 'medication', 'activity', 'trend'
 String get description; double get impactScore;// -50 to 0 (negative impact on stability)
 DateTime? get detectedAt;
/// Create a copy of RiskFactor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskFactorCopyWith<RiskFactor> get copyWith => _$RiskFactorCopyWithImpl<RiskFactor>(this as RiskFactor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskFactor&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.impactScore, impactScore) || other.impactScore == impactScore)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt));
}


@override
int get hashCode => Object.hash(runtimeType,type,description,impactScore,detectedAt);

@override
String toString() {
  return 'RiskFactor(type: $type, description: $description, impactScore: $impactScore, detectedAt: $detectedAt)';
}


}

/// @nodoc
abstract mixin class $RiskFactorCopyWith<$Res>  {
  factory $RiskFactorCopyWith(RiskFactor value, $Res Function(RiskFactor) _then) = _$RiskFactorCopyWithImpl;
@useResult
$Res call({
 String type, String description, double impactScore, DateTime? detectedAt
});




}
/// @nodoc
class _$RiskFactorCopyWithImpl<$Res>
    implements $RiskFactorCopyWith<$Res> {
  _$RiskFactorCopyWithImpl(this._self, this._then);

  final RiskFactor _self;
  final $Res Function(RiskFactor) _then;

/// Create a copy of RiskFactor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? description = null,Object? impactScore = null,Object? detectedAt = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,impactScore: null == impactScore ? _self.impactScore : impactScore // ignore: cast_nullable_to_non_nullable
as double,detectedAt: freezed == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskFactor].
extension RiskFactorPatterns on RiskFactor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskFactor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskFactor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskFactor value)  $default,){
final _that = this;
switch (_that) {
case _RiskFactor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskFactor value)?  $default,){
final _that = this;
switch (_that) {
case _RiskFactor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String description,  double impactScore,  DateTime? detectedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskFactor() when $default != null:
return $default(_that.type,_that.description,_that.impactScore,_that.detectedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String description,  double impactScore,  DateTime? detectedAt)  $default,) {final _that = this;
switch (_that) {
case _RiskFactor():
return $default(_that.type,_that.description,_that.impactScore,_that.detectedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String description,  double impactScore,  DateTime? detectedAt)?  $default,) {final _that = this;
switch (_that) {
case _RiskFactor() when $default != null:
return $default(_that.type,_that.description,_that.impactScore,_that.detectedAt);case _:
  return null;

}
}

}

/// @nodoc


class _RiskFactor implements RiskFactor {
  const _RiskFactor({required this.type, required this.description, required this.impactScore, this.detectedAt});
  

@override final  String type;
// 'vital', 'medication', 'activity', 'trend'
@override final  String description;
@override final  double impactScore;
// -50 to 0 (negative impact on stability)
@override final  DateTime? detectedAt;

/// Create a copy of RiskFactor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskFactorCopyWith<_RiskFactor> get copyWith => __$RiskFactorCopyWithImpl<_RiskFactor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskFactor&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.impactScore, impactScore) || other.impactScore == impactScore)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt));
}


@override
int get hashCode => Object.hash(runtimeType,type,description,impactScore,detectedAt);

@override
String toString() {
  return 'RiskFactor(type: $type, description: $description, impactScore: $impactScore, detectedAt: $detectedAt)';
}


}

/// @nodoc
abstract mixin class _$RiskFactorCopyWith<$Res> implements $RiskFactorCopyWith<$Res> {
  factory _$RiskFactorCopyWith(_RiskFactor value, $Res Function(_RiskFactor) _then) = __$RiskFactorCopyWithImpl;
@override @useResult
$Res call({
 String type, String description, double impactScore, DateTime? detectedAt
});




}
/// @nodoc
class __$RiskFactorCopyWithImpl<$Res>
    implements _$RiskFactorCopyWith<$Res> {
  __$RiskFactorCopyWithImpl(this._self, this._then);

  final _RiskFactor _self;
  final $Res Function(_RiskFactor) _then;

/// Create a copy of RiskFactor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? description = null,Object? impactScore = null,Object? detectedAt = freezed,}) {
  return _then(_RiskFactor(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,impactScore: null == impactScore ? _self.impactScore : impactScore // ignore: cast_nullable_to_non_nullable
as double,detectedAt: freezed == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
