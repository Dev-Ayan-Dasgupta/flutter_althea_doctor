// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientSummary {

 String get id; String get name; int get age; String get gender; String? get roomNumber; String? get facilityId; String? get facilityName; String? get avatarUrl; ClinicalStabilityIndex get csi; List<String> get activeAlerts; Map<String, double> get latestVitals; List<String> get activeConditions; DateTime? get lastReviewedAt; String? get lastReviewedBy; bool get hasUnreadNotes; bool get hasPendingOrders; DateTime? get updatedAt;
/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientSummaryCopyWith<PatientSummary> get copyWith => _$PatientSummaryCopyWithImpl<PatientSummary>(this as PatientSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.facilityId, facilityId) || other.facilityId == facilityId)&&(identical(other.facilityName, facilityName) || other.facilityName == facilityName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.csi, csi) || other.csi == csi)&&const DeepCollectionEquality().equals(other.activeAlerts, activeAlerts)&&const DeepCollectionEquality().equals(other.latestVitals, latestVitals)&&const DeepCollectionEquality().equals(other.activeConditions, activeConditions)&&(identical(other.lastReviewedAt, lastReviewedAt) || other.lastReviewedAt == lastReviewedAt)&&(identical(other.lastReviewedBy, lastReviewedBy) || other.lastReviewedBy == lastReviewedBy)&&(identical(other.hasUnreadNotes, hasUnreadNotes) || other.hasUnreadNotes == hasUnreadNotes)&&(identical(other.hasPendingOrders, hasPendingOrders) || other.hasPendingOrders == hasPendingOrders)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,age,gender,roomNumber,facilityId,facilityName,avatarUrl,csi,const DeepCollectionEquality().hash(activeAlerts),const DeepCollectionEquality().hash(latestVitals),const DeepCollectionEquality().hash(activeConditions),lastReviewedAt,lastReviewedBy,hasUnreadNotes,hasPendingOrders,updatedAt);

@override
String toString() {
  return 'PatientSummary(id: $id, name: $name, age: $age, gender: $gender, roomNumber: $roomNumber, facilityId: $facilityId, facilityName: $facilityName, avatarUrl: $avatarUrl, csi: $csi, activeAlerts: $activeAlerts, latestVitals: $latestVitals, activeConditions: $activeConditions, lastReviewedAt: $lastReviewedAt, lastReviewedBy: $lastReviewedBy, hasUnreadNotes: $hasUnreadNotes, hasPendingOrders: $hasPendingOrders, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PatientSummaryCopyWith<$Res>  {
  factory $PatientSummaryCopyWith(PatientSummary value, $Res Function(PatientSummary) _then) = _$PatientSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String name, int age, String gender, String? roomNumber, String? facilityId, String? facilityName, String? avatarUrl, ClinicalStabilityIndex csi, List<String> activeAlerts, Map<String, double> latestVitals, List<String> activeConditions, DateTime? lastReviewedAt, String? lastReviewedBy, bool hasUnreadNotes, bool hasPendingOrders, DateTime? updatedAt
});


$ClinicalStabilityIndexCopyWith<$Res> get csi;

}
/// @nodoc
class _$PatientSummaryCopyWithImpl<$Res>
    implements $PatientSummaryCopyWith<$Res> {
  _$PatientSummaryCopyWithImpl(this._self, this._then);

  final PatientSummary _self;
  final $Res Function(PatientSummary) _then;

/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? age = null,Object? gender = null,Object? roomNumber = freezed,Object? facilityId = freezed,Object? facilityName = freezed,Object? avatarUrl = freezed,Object? csi = null,Object? activeAlerts = null,Object? latestVitals = null,Object? activeConditions = null,Object? lastReviewedAt = freezed,Object? lastReviewedBy = freezed,Object? hasUnreadNotes = null,Object? hasPendingOrders = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,roomNumber: freezed == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String?,facilityId: freezed == facilityId ? _self.facilityId : facilityId // ignore: cast_nullable_to_non_nullable
as String?,facilityName: freezed == facilityName ? _self.facilityName : facilityName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,csi: null == csi ? _self.csi : csi // ignore: cast_nullable_to_non_nullable
as ClinicalStabilityIndex,activeAlerts: null == activeAlerts ? _self.activeAlerts : activeAlerts // ignore: cast_nullable_to_non_nullable
as List<String>,latestVitals: null == latestVitals ? _self.latestVitals : latestVitals // ignore: cast_nullable_to_non_nullable
as Map<String, double>,activeConditions: null == activeConditions ? _self.activeConditions : activeConditions // ignore: cast_nullable_to_non_nullable
as List<String>,lastReviewedAt: freezed == lastReviewedAt ? _self.lastReviewedAt : lastReviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastReviewedBy: freezed == lastReviewedBy ? _self.lastReviewedBy : lastReviewedBy // ignore: cast_nullable_to_non_nullable
as String?,hasUnreadNotes: null == hasUnreadNotes ? _self.hasUnreadNotes : hasUnreadNotes // ignore: cast_nullable_to_non_nullable
as bool,hasPendingOrders: null == hasPendingOrders ? _self.hasPendingOrders : hasPendingOrders // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClinicalStabilityIndexCopyWith<$Res> get csi {
  
  return $ClinicalStabilityIndexCopyWith<$Res>(_self.csi, (value) {
    return _then(_self.copyWith(csi: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatientSummary].
extension PatientSummaryPatterns on PatientSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientSummary value)  $default,){
final _that = this;
switch (_that) {
case _PatientSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientSummary value)?  $default,){
final _that = this;
switch (_that) {
case _PatientSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int age,  String gender,  String? roomNumber,  String? facilityId,  String? facilityName,  String? avatarUrl,  ClinicalStabilityIndex csi,  List<String> activeAlerts,  Map<String, double> latestVitals,  List<String> activeConditions,  DateTime? lastReviewedAt,  String? lastReviewedBy,  bool hasUnreadNotes,  bool hasPendingOrders,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientSummary() when $default != null:
return $default(_that.id,_that.name,_that.age,_that.gender,_that.roomNumber,_that.facilityId,_that.facilityName,_that.avatarUrl,_that.csi,_that.activeAlerts,_that.latestVitals,_that.activeConditions,_that.lastReviewedAt,_that.lastReviewedBy,_that.hasUnreadNotes,_that.hasPendingOrders,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int age,  String gender,  String? roomNumber,  String? facilityId,  String? facilityName,  String? avatarUrl,  ClinicalStabilityIndex csi,  List<String> activeAlerts,  Map<String, double> latestVitals,  List<String> activeConditions,  DateTime? lastReviewedAt,  String? lastReviewedBy,  bool hasUnreadNotes,  bool hasPendingOrders,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PatientSummary():
return $default(_that.id,_that.name,_that.age,_that.gender,_that.roomNumber,_that.facilityId,_that.facilityName,_that.avatarUrl,_that.csi,_that.activeAlerts,_that.latestVitals,_that.activeConditions,_that.lastReviewedAt,_that.lastReviewedBy,_that.hasUnreadNotes,_that.hasPendingOrders,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int age,  String gender,  String? roomNumber,  String? facilityId,  String? facilityName,  String? avatarUrl,  ClinicalStabilityIndex csi,  List<String> activeAlerts,  Map<String, double> latestVitals,  List<String> activeConditions,  DateTime? lastReviewedAt,  String? lastReviewedBy,  bool hasUnreadNotes,  bool hasPendingOrders,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PatientSummary() when $default != null:
return $default(_that.id,_that.name,_that.age,_that.gender,_that.roomNumber,_that.facilityId,_that.facilityName,_that.avatarUrl,_that.csi,_that.activeAlerts,_that.latestVitals,_that.activeConditions,_that.lastReviewedAt,_that.lastReviewedBy,_that.hasUnreadNotes,_that.hasPendingOrders,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _PatientSummary extends PatientSummary {
  const _PatientSummary({required this.id, required this.name, required this.age, required this.gender, this.roomNumber, this.facilityId, this.facilityName, this.avatarUrl, required this.csi, required final  List<String> activeAlerts, required final  Map<String, double> latestVitals, required final  List<String> activeConditions, this.lastReviewedAt, this.lastReviewedBy, this.hasUnreadNotes = false, this.hasPendingOrders = false, this.updatedAt}): _activeAlerts = activeAlerts,_latestVitals = latestVitals,_activeConditions = activeConditions,super._();
  

@override final  String id;
@override final  String name;
@override final  int age;
@override final  String gender;
@override final  String? roomNumber;
@override final  String? facilityId;
@override final  String? facilityName;
@override final  String? avatarUrl;
@override final  ClinicalStabilityIndex csi;
 final  List<String> _activeAlerts;
@override List<String> get activeAlerts {
  if (_activeAlerts is EqualUnmodifiableListView) return _activeAlerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activeAlerts);
}

 final  Map<String, double> _latestVitals;
@override Map<String, double> get latestVitals {
  if (_latestVitals is EqualUnmodifiableMapView) return _latestVitals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_latestVitals);
}

 final  List<String> _activeConditions;
@override List<String> get activeConditions {
  if (_activeConditions is EqualUnmodifiableListView) return _activeConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activeConditions);
}

@override final  DateTime? lastReviewedAt;
@override final  String? lastReviewedBy;
@override@JsonKey() final  bool hasUnreadNotes;
@override@JsonKey() final  bool hasPendingOrders;
@override final  DateTime? updatedAt;

/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientSummaryCopyWith<_PatientSummary> get copyWith => __$PatientSummaryCopyWithImpl<_PatientSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.facilityId, facilityId) || other.facilityId == facilityId)&&(identical(other.facilityName, facilityName) || other.facilityName == facilityName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.csi, csi) || other.csi == csi)&&const DeepCollectionEquality().equals(other._activeAlerts, _activeAlerts)&&const DeepCollectionEquality().equals(other._latestVitals, _latestVitals)&&const DeepCollectionEquality().equals(other._activeConditions, _activeConditions)&&(identical(other.lastReviewedAt, lastReviewedAt) || other.lastReviewedAt == lastReviewedAt)&&(identical(other.lastReviewedBy, lastReviewedBy) || other.lastReviewedBy == lastReviewedBy)&&(identical(other.hasUnreadNotes, hasUnreadNotes) || other.hasUnreadNotes == hasUnreadNotes)&&(identical(other.hasPendingOrders, hasPendingOrders) || other.hasPendingOrders == hasPendingOrders)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,age,gender,roomNumber,facilityId,facilityName,avatarUrl,csi,const DeepCollectionEquality().hash(_activeAlerts),const DeepCollectionEquality().hash(_latestVitals),const DeepCollectionEquality().hash(_activeConditions),lastReviewedAt,lastReviewedBy,hasUnreadNotes,hasPendingOrders,updatedAt);

@override
String toString() {
  return 'PatientSummary(id: $id, name: $name, age: $age, gender: $gender, roomNumber: $roomNumber, facilityId: $facilityId, facilityName: $facilityName, avatarUrl: $avatarUrl, csi: $csi, activeAlerts: $activeAlerts, latestVitals: $latestVitals, activeConditions: $activeConditions, lastReviewedAt: $lastReviewedAt, lastReviewedBy: $lastReviewedBy, hasUnreadNotes: $hasUnreadNotes, hasPendingOrders: $hasPendingOrders, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PatientSummaryCopyWith<$Res> implements $PatientSummaryCopyWith<$Res> {
  factory _$PatientSummaryCopyWith(_PatientSummary value, $Res Function(_PatientSummary) _then) = __$PatientSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int age, String gender, String? roomNumber, String? facilityId, String? facilityName, String? avatarUrl, ClinicalStabilityIndex csi, List<String> activeAlerts, Map<String, double> latestVitals, List<String> activeConditions, DateTime? lastReviewedAt, String? lastReviewedBy, bool hasUnreadNotes, bool hasPendingOrders, DateTime? updatedAt
});


@override $ClinicalStabilityIndexCopyWith<$Res> get csi;

}
/// @nodoc
class __$PatientSummaryCopyWithImpl<$Res>
    implements _$PatientSummaryCopyWith<$Res> {
  __$PatientSummaryCopyWithImpl(this._self, this._then);

  final _PatientSummary _self;
  final $Res Function(_PatientSummary) _then;

/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? age = null,Object? gender = null,Object? roomNumber = freezed,Object? facilityId = freezed,Object? facilityName = freezed,Object? avatarUrl = freezed,Object? csi = null,Object? activeAlerts = null,Object? latestVitals = null,Object? activeConditions = null,Object? lastReviewedAt = freezed,Object? lastReviewedBy = freezed,Object? hasUnreadNotes = null,Object? hasPendingOrders = null,Object? updatedAt = freezed,}) {
  return _then(_PatientSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,roomNumber: freezed == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String?,facilityId: freezed == facilityId ? _self.facilityId : facilityId // ignore: cast_nullable_to_non_nullable
as String?,facilityName: freezed == facilityName ? _self.facilityName : facilityName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,csi: null == csi ? _self.csi : csi // ignore: cast_nullable_to_non_nullable
as ClinicalStabilityIndex,activeAlerts: null == activeAlerts ? _self._activeAlerts : activeAlerts // ignore: cast_nullable_to_non_nullable
as List<String>,latestVitals: null == latestVitals ? _self._latestVitals : latestVitals // ignore: cast_nullable_to_non_nullable
as Map<String, double>,activeConditions: null == activeConditions ? _self._activeConditions : activeConditions // ignore: cast_nullable_to_non_nullable
as List<String>,lastReviewedAt: freezed == lastReviewedAt ? _self.lastReviewedAt : lastReviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastReviewedBy: freezed == lastReviewedBy ? _self.lastReviewedBy : lastReviewedBy // ignore: cast_nullable_to_non_nullable
as String?,hasUnreadNotes: null == hasUnreadNotes ? _self.hasUnreadNotes : hasUnreadNotes // ignore: cast_nullable_to_non_nullable
as bool,hasPendingOrders: null == hasPendingOrders ? _self.hasPendingOrders : hasPendingOrders // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of PatientSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClinicalStabilityIndexCopyWith<$Res> get csi {
  
  return $ClinicalStabilityIndexCopyWith<$Res>(_self.csi, (value) {
    return _then(_self.copyWith(csi: value));
  });
}
}

// dart format on
