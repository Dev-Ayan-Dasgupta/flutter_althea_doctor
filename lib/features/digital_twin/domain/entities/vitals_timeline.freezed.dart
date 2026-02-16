// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vitals_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VitalsDataPoint {

 DateTime get timestamp; double get value; String? get unit; bool? get isAbnormal; String? get note;
/// Create a copy of VitalsDataPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VitalsDataPointCopyWith<VitalsDataPoint> get copyWith => _$VitalsDataPointCopyWithImpl<VitalsDataPoint>(this as VitalsDataPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VitalsDataPoint&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.value, value) || other.value == value)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.isAbnormal, isAbnormal) || other.isAbnormal == isAbnormal)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,value,unit,isAbnormal,note);

@override
String toString() {
  return 'VitalsDataPoint(timestamp: $timestamp, value: $value, unit: $unit, isAbnormal: $isAbnormal, note: $note)';
}


}

/// @nodoc
abstract mixin class $VitalsDataPointCopyWith<$Res>  {
  factory $VitalsDataPointCopyWith(VitalsDataPoint value, $Res Function(VitalsDataPoint) _then) = _$VitalsDataPointCopyWithImpl;
@useResult
$Res call({
 DateTime timestamp, double value, String? unit, bool? isAbnormal, String? note
});




}
/// @nodoc
class _$VitalsDataPointCopyWithImpl<$Res>
    implements $VitalsDataPointCopyWith<$Res> {
  _$VitalsDataPointCopyWithImpl(this._self, this._then);

  final VitalsDataPoint _self;
  final $Res Function(VitalsDataPoint) _then;

/// Create a copy of VitalsDataPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? value = null,Object? unit = freezed,Object? isAbnormal = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,isAbnormal: freezed == isAbnormal ? _self.isAbnormal : isAbnormal // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VitalsDataPoint].
extension VitalsDataPointPatterns on VitalsDataPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VitalsDataPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VitalsDataPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VitalsDataPoint value)  $default,){
final _that = this;
switch (_that) {
case _VitalsDataPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VitalsDataPoint value)?  $default,){
final _that = this;
switch (_that) {
case _VitalsDataPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime timestamp,  double value,  String? unit,  bool? isAbnormal,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VitalsDataPoint() when $default != null:
return $default(_that.timestamp,_that.value,_that.unit,_that.isAbnormal,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime timestamp,  double value,  String? unit,  bool? isAbnormal,  String? note)  $default,) {final _that = this;
switch (_that) {
case _VitalsDataPoint():
return $default(_that.timestamp,_that.value,_that.unit,_that.isAbnormal,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime timestamp,  double value,  String? unit,  bool? isAbnormal,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _VitalsDataPoint() when $default != null:
return $default(_that.timestamp,_that.value,_that.unit,_that.isAbnormal,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _VitalsDataPoint extends VitalsDataPoint {
  const _VitalsDataPoint({required this.timestamp, required this.value, this.unit, this.isAbnormal, this.note}): super._();
  

@override final  DateTime timestamp;
@override final  double value;
@override final  String? unit;
@override final  bool? isAbnormal;
@override final  String? note;

/// Create a copy of VitalsDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VitalsDataPointCopyWith<_VitalsDataPoint> get copyWith => __$VitalsDataPointCopyWithImpl<_VitalsDataPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VitalsDataPoint&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.value, value) || other.value == value)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.isAbnormal, isAbnormal) || other.isAbnormal == isAbnormal)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,value,unit,isAbnormal,note);

@override
String toString() {
  return 'VitalsDataPoint(timestamp: $timestamp, value: $value, unit: $unit, isAbnormal: $isAbnormal, note: $note)';
}


}

/// @nodoc
abstract mixin class _$VitalsDataPointCopyWith<$Res> implements $VitalsDataPointCopyWith<$Res> {
  factory _$VitalsDataPointCopyWith(_VitalsDataPoint value, $Res Function(_VitalsDataPoint) _then) = __$VitalsDataPointCopyWithImpl;
@override @useResult
$Res call({
 DateTime timestamp, double value, String? unit, bool? isAbnormal, String? note
});




}
/// @nodoc
class __$VitalsDataPointCopyWithImpl<$Res>
    implements _$VitalsDataPointCopyWith<$Res> {
  __$VitalsDataPointCopyWithImpl(this._self, this._then);

  final _VitalsDataPoint _self;
  final $Res Function(_VitalsDataPoint) _then;

/// Create a copy of VitalsDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? value = null,Object? unit = freezed,Object? isAbnormal = freezed,Object? note = freezed,}) {
  return _then(_VitalsDataPoint(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,isAbnormal: freezed == isAbnormal ? _self.isAbnormal : isAbnormal // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$BloodPressureDataPoint {

 DateTime get timestamp; double get systolic; double get diastolic; bool? get isAbnormal; String? get note;
/// Create a copy of BloodPressureDataPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BloodPressureDataPointCopyWith<BloodPressureDataPoint> get copyWith => _$BloodPressureDataPointCopyWithImpl<BloodPressureDataPoint>(this as BloodPressureDataPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BloodPressureDataPoint&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.systolic, systolic) || other.systolic == systolic)&&(identical(other.diastolic, diastolic) || other.diastolic == diastolic)&&(identical(other.isAbnormal, isAbnormal) || other.isAbnormal == isAbnormal)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,systolic,diastolic,isAbnormal,note);

@override
String toString() {
  return 'BloodPressureDataPoint(timestamp: $timestamp, systolic: $systolic, diastolic: $diastolic, isAbnormal: $isAbnormal, note: $note)';
}


}

/// @nodoc
abstract mixin class $BloodPressureDataPointCopyWith<$Res>  {
  factory $BloodPressureDataPointCopyWith(BloodPressureDataPoint value, $Res Function(BloodPressureDataPoint) _then) = _$BloodPressureDataPointCopyWithImpl;
@useResult
$Res call({
 DateTime timestamp, double systolic, double diastolic, bool? isAbnormal, String? note
});




}
/// @nodoc
class _$BloodPressureDataPointCopyWithImpl<$Res>
    implements $BloodPressureDataPointCopyWith<$Res> {
  _$BloodPressureDataPointCopyWithImpl(this._self, this._then);

  final BloodPressureDataPoint _self;
  final $Res Function(BloodPressureDataPoint) _then;

/// Create a copy of BloodPressureDataPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? systolic = null,Object? diastolic = null,Object? isAbnormal = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,systolic: null == systolic ? _self.systolic : systolic // ignore: cast_nullable_to_non_nullable
as double,diastolic: null == diastolic ? _self.diastolic : diastolic // ignore: cast_nullable_to_non_nullable
as double,isAbnormal: freezed == isAbnormal ? _self.isAbnormal : isAbnormal // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BloodPressureDataPoint].
extension BloodPressureDataPointPatterns on BloodPressureDataPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BloodPressureDataPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BloodPressureDataPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BloodPressureDataPoint value)  $default,){
final _that = this;
switch (_that) {
case _BloodPressureDataPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BloodPressureDataPoint value)?  $default,){
final _that = this;
switch (_that) {
case _BloodPressureDataPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime timestamp,  double systolic,  double diastolic,  bool? isAbnormal,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BloodPressureDataPoint() when $default != null:
return $default(_that.timestamp,_that.systolic,_that.diastolic,_that.isAbnormal,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime timestamp,  double systolic,  double diastolic,  bool? isAbnormal,  String? note)  $default,) {final _that = this;
switch (_that) {
case _BloodPressureDataPoint():
return $default(_that.timestamp,_that.systolic,_that.diastolic,_that.isAbnormal,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime timestamp,  double systolic,  double diastolic,  bool? isAbnormal,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _BloodPressureDataPoint() when $default != null:
return $default(_that.timestamp,_that.systolic,_that.diastolic,_that.isAbnormal,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _BloodPressureDataPoint extends BloodPressureDataPoint {
  const _BloodPressureDataPoint({required this.timestamp, required this.systolic, required this.diastolic, this.isAbnormal, this.note}): super._();
  

@override final  DateTime timestamp;
@override final  double systolic;
@override final  double diastolic;
@override final  bool? isAbnormal;
@override final  String? note;

/// Create a copy of BloodPressureDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BloodPressureDataPointCopyWith<_BloodPressureDataPoint> get copyWith => __$BloodPressureDataPointCopyWithImpl<_BloodPressureDataPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BloodPressureDataPoint&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.systolic, systolic) || other.systolic == systolic)&&(identical(other.diastolic, diastolic) || other.diastolic == diastolic)&&(identical(other.isAbnormal, isAbnormal) || other.isAbnormal == isAbnormal)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,systolic,diastolic,isAbnormal,note);

@override
String toString() {
  return 'BloodPressureDataPoint(timestamp: $timestamp, systolic: $systolic, diastolic: $diastolic, isAbnormal: $isAbnormal, note: $note)';
}


}

/// @nodoc
abstract mixin class _$BloodPressureDataPointCopyWith<$Res> implements $BloodPressureDataPointCopyWith<$Res> {
  factory _$BloodPressureDataPointCopyWith(_BloodPressureDataPoint value, $Res Function(_BloodPressureDataPoint) _then) = __$BloodPressureDataPointCopyWithImpl;
@override @useResult
$Res call({
 DateTime timestamp, double systolic, double diastolic, bool? isAbnormal, String? note
});




}
/// @nodoc
class __$BloodPressureDataPointCopyWithImpl<$Res>
    implements _$BloodPressureDataPointCopyWith<$Res> {
  __$BloodPressureDataPointCopyWithImpl(this._self, this._then);

  final _BloodPressureDataPoint _self;
  final $Res Function(_BloodPressureDataPoint) _then;

/// Create a copy of BloodPressureDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? systolic = null,Object? diastolic = null,Object? isAbnormal = freezed,Object? note = freezed,}) {
  return _then(_BloodPressureDataPoint(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,systolic: null == systolic ? _self.systolic : systolic // ignore: cast_nullable_to_non_nullable
as double,diastolic: null == diastolic ? _self.diastolic : diastolic // ignore: cast_nullable_to_non_nullable
as double,isAbnormal: freezed == isAbnormal ? _self.isAbnormal : isAbnormal // ignore: cast_nullable_to_non_nullable
as bool?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$MedicationMarker {

 DateTime get timestamp; String get medicationName; String get dosage; bool get administered; String? get administeredBy;
/// Create a copy of MedicationMarker
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicationMarkerCopyWith<MedicationMarker> get copyWith => _$MedicationMarkerCopyWithImpl<MedicationMarker>(this as MedicationMarker, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationMarker&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.medicationName, medicationName) || other.medicationName == medicationName)&&(identical(other.dosage, dosage) || other.dosage == dosage)&&(identical(other.administered, administered) || other.administered == administered)&&(identical(other.administeredBy, administeredBy) || other.administeredBy == administeredBy));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,medicationName,dosage,administered,administeredBy);

@override
String toString() {
  return 'MedicationMarker(timestamp: $timestamp, medicationName: $medicationName, dosage: $dosage, administered: $administered, administeredBy: $administeredBy)';
}


}

/// @nodoc
abstract mixin class $MedicationMarkerCopyWith<$Res>  {
  factory $MedicationMarkerCopyWith(MedicationMarker value, $Res Function(MedicationMarker) _then) = _$MedicationMarkerCopyWithImpl;
@useResult
$Res call({
 DateTime timestamp, String medicationName, String dosage, bool administered, String? administeredBy
});




}
/// @nodoc
class _$MedicationMarkerCopyWithImpl<$Res>
    implements $MedicationMarkerCopyWith<$Res> {
  _$MedicationMarkerCopyWithImpl(this._self, this._then);

  final MedicationMarker _self;
  final $Res Function(MedicationMarker) _then;

/// Create a copy of MedicationMarker
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? medicationName = null,Object? dosage = null,Object? administered = null,Object? administeredBy = freezed,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,medicationName: null == medicationName ? _self.medicationName : medicationName // ignore: cast_nullable_to_non_nullable
as String,dosage: null == dosage ? _self.dosage : dosage // ignore: cast_nullable_to_non_nullable
as String,administered: null == administered ? _self.administered : administered // ignore: cast_nullable_to_non_nullable
as bool,administeredBy: freezed == administeredBy ? _self.administeredBy : administeredBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MedicationMarker].
extension MedicationMarkerPatterns on MedicationMarker {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicationMarker value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicationMarker() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicationMarker value)  $default,){
final _that = this;
switch (_that) {
case _MedicationMarker():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicationMarker value)?  $default,){
final _that = this;
switch (_that) {
case _MedicationMarker() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime timestamp,  String medicationName,  String dosage,  bool administered,  String? administeredBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicationMarker() when $default != null:
return $default(_that.timestamp,_that.medicationName,_that.dosage,_that.administered,_that.administeredBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime timestamp,  String medicationName,  String dosage,  bool administered,  String? administeredBy)  $default,) {final _that = this;
switch (_that) {
case _MedicationMarker():
return $default(_that.timestamp,_that.medicationName,_that.dosage,_that.administered,_that.administeredBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime timestamp,  String medicationName,  String dosage,  bool administered,  String? administeredBy)?  $default,) {final _that = this;
switch (_that) {
case _MedicationMarker() when $default != null:
return $default(_that.timestamp,_that.medicationName,_that.dosage,_that.administered,_that.administeredBy);case _:
  return null;

}
}

}

/// @nodoc


class _MedicationMarker extends MedicationMarker {
  const _MedicationMarker({required this.timestamp, required this.medicationName, required this.dosage, required this.administered, this.administeredBy}): super._();
  

@override final  DateTime timestamp;
@override final  String medicationName;
@override final  String dosage;
@override final  bool administered;
@override final  String? administeredBy;

/// Create a copy of MedicationMarker
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationMarkerCopyWith<_MedicationMarker> get copyWith => __$MedicationMarkerCopyWithImpl<_MedicationMarker>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicationMarker&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.medicationName, medicationName) || other.medicationName == medicationName)&&(identical(other.dosage, dosage) || other.dosage == dosage)&&(identical(other.administered, administered) || other.administered == administered)&&(identical(other.administeredBy, administeredBy) || other.administeredBy == administeredBy));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,medicationName,dosage,administered,administeredBy);

@override
String toString() {
  return 'MedicationMarker(timestamp: $timestamp, medicationName: $medicationName, dosage: $dosage, administered: $administered, administeredBy: $administeredBy)';
}


}

/// @nodoc
abstract mixin class _$MedicationMarkerCopyWith<$Res> implements $MedicationMarkerCopyWith<$Res> {
  factory _$MedicationMarkerCopyWith(_MedicationMarker value, $Res Function(_MedicationMarker) _then) = __$MedicationMarkerCopyWithImpl;
@override @useResult
$Res call({
 DateTime timestamp, String medicationName, String dosage, bool administered, String? administeredBy
});




}
/// @nodoc
class __$MedicationMarkerCopyWithImpl<$Res>
    implements _$MedicationMarkerCopyWith<$Res> {
  __$MedicationMarkerCopyWithImpl(this._self, this._then);

  final _MedicationMarker _self;
  final $Res Function(_MedicationMarker) _then;

/// Create a copy of MedicationMarker
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? medicationName = null,Object? dosage = null,Object? administered = null,Object? administeredBy = freezed,}) {
  return _then(_MedicationMarker(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,medicationName: null == medicationName ? _self.medicationName : medicationName // ignore: cast_nullable_to_non_nullable
as String,dosage: null == dosage ? _self.dosage : dosage // ignore: cast_nullable_to_non_nullable
as String,administered: null == administered ? _self.administered : administered // ignore: cast_nullable_to_non_nullable
as bool,administeredBy: freezed == administeredBy ? _self.administeredBy : administeredBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CaregiverNote {

 String get id; DateTime get timestamp; String get authorName; String get content; CaregiverNoteType get type; List<String>? get tags;
/// Create a copy of CaregiverNote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaregiverNoteCopyWith<CaregiverNote> get copyWith => _$CaregiverNoteCopyWithImpl<CaregiverNote>(this as CaregiverNote, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaregiverNote&&(identical(other.id, id) || other.id == id)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.tags, tags));
}


@override
int get hashCode => Object.hash(runtimeType,id,timestamp,authorName,content,type,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'CaregiverNote(id: $id, timestamp: $timestamp, authorName: $authorName, content: $content, type: $type, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $CaregiverNoteCopyWith<$Res>  {
  factory $CaregiverNoteCopyWith(CaregiverNote value, $Res Function(CaregiverNote) _then) = _$CaregiverNoteCopyWithImpl;
@useResult
$Res call({
 String id, DateTime timestamp, String authorName, String content, CaregiverNoteType type, List<String>? tags
});




}
/// @nodoc
class _$CaregiverNoteCopyWithImpl<$Res>
    implements $CaregiverNoteCopyWith<$Res> {
  _$CaregiverNoteCopyWithImpl(this._self, this._then);

  final CaregiverNote _self;
  final $Res Function(CaregiverNote) _then;

/// Create a copy of CaregiverNote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? timestamp = null,Object? authorName = null,Object? content = null,Object? type = null,Object? tags = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CaregiverNoteType,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CaregiverNote].
extension CaregiverNotePatterns on CaregiverNote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaregiverNote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaregiverNote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaregiverNote value)  $default,){
final _that = this;
switch (_that) {
case _CaregiverNote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaregiverNote value)?  $default,){
final _that = this;
switch (_that) {
case _CaregiverNote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime timestamp,  String authorName,  String content,  CaregiverNoteType type,  List<String>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaregiverNote() when $default != null:
return $default(_that.id,_that.timestamp,_that.authorName,_that.content,_that.type,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime timestamp,  String authorName,  String content,  CaregiverNoteType type,  List<String>? tags)  $default,) {final _that = this;
switch (_that) {
case _CaregiverNote():
return $default(_that.id,_that.timestamp,_that.authorName,_that.content,_that.type,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime timestamp,  String authorName,  String content,  CaregiverNoteType type,  List<String>? tags)?  $default,) {final _that = this;
switch (_that) {
case _CaregiverNote() when $default != null:
return $default(_that.id,_that.timestamp,_that.authorName,_that.content,_that.type,_that.tags);case _:
  return null;

}
}

}

/// @nodoc


class _CaregiverNote implements CaregiverNote {
  const _CaregiverNote({required this.id, required this.timestamp, required this.authorName, required this.content, required this.type, final  List<String>? tags}): _tags = tags;
  

@override final  String id;
@override final  DateTime timestamp;
@override final  String authorName;
@override final  String content;
@override final  CaregiverNoteType type;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CaregiverNote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaregiverNoteCopyWith<_CaregiverNote> get copyWith => __$CaregiverNoteCopyWithImpl<_CaregiverNote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaregiverNote&&(identical(other.id, id) || other.id == id)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,id,timestamp,authorName,content,type,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'CaregiverNote(id: $id, timestamp: $timestamp, authorName: $authorName, content: $content, type: $type, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$CaregiverNoteCopyWith<$Res> implements $CaregiverNoteCopyWith<$Res> {
  factory _$CaregiverNoteCopyWith(_CaregiverNote value, $Res Function(_CaregiverNote) _then) = __$CaregiverNoteCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime timestamp, String authorName, String content, CaregiverNoteType type, List<String>? tags
});




}
/// @nodoc
class __$CaregiverNoteCopyWithImpl<$Res>
    implements _$CaregiverNoteCopyWith<$Res> {
  __$CaregiverNoteCopyWithImpl(this._self, this._then);

  final _CaregiverNote _self;
  final $Res Function(_CaregiverNote) _then;

/// Create a copy of CaregiverNote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? timestamp = null,Object? authorName = null,Object? content = null,Object? type = null,Object? tags = freezed,}) {
  return _then(_CaregiverNote(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CaregiverNoteType,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc
mixin _$VitalBaseline {

 double get mean; double get min; double get max; double get stdDev;
/// Create a copy of VitalBaseline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VitalBaselineCopyWith<VitalBaseline> get copyWith => _$VitalBaselineCopyWithImpl<VitalBaseline>(this as VitalBaseline, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VitalBaseline&&(identical(other.mean, mean) || other.mean == mean)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.stdDev, stdDev) || other.stdDev == stdDev));
}


@override
int get hashCode => Object.hash(runtimeType,mean,min,max,stdDev);

@override
String toString() {
  return 'VitalBaseline(mean: $mean, min: $min, max: $max, stdDev: $stdDev)';
}


}

/// @nodoc
abstract mixin class $VitalBaselineCopyWith<$Res>  {
  factory $VitalBaselineCopyWith(VitalBaseline value, $Res Function(VitalBaseline) _then) = _$VitalBaselineCopyWithImpl;
@useResult
$Res call({
 double mean, double min, double max, double stdDev
});




}
/// @nodoc
class _$VitalBaselineCopyWithImpl<$Res>
    implements $VitalBaselineCopyWith<$Res> {
  _$VitalBaselineCopyWithImpl(this._self, this._then);

  final VitalBaseline _self;
  final $Res Function(VitalBaseline) _then;

/// Create a copy of VitalBaseline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mean = null,Object? min = null,Object? max = null,Object? stdDev = null,}) {
  return _then(_self.copyWith(
mean: null == mean ? _self.mean : mean // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,stdDev: null == stdDev ? _self.stdDev : stdDev // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [VitalBaseline].
extension VitalBaselinePatterns on VitalBaseline {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VitalBaseline value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VitalBaseline() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VitalBaseline value)  $default,){
final _that = this;
switch (_that) {
case _VitalBaseline():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VitalBaseline value)?  $default,){
final _that = this;
switch (_that) {
case _VitalBaseline() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double mean,  double min,  double max,  double stdDev)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VitalBaseline() when $default != null:
return $default(_that.mean,_that.min,_that.max,_that.stdDev);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double mean,  double min,  double max,  double stdDev)  $default,) {final _that = this;
switch (_that) {
case _VitalBaseline():
return $default(_that.mean,_that.min,_that.max,_that.stdDev);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double mean,  double min,  double max,  double stdDev)?  $default,) {final _that = this;
switch (_that) {
case _VitalBaseline() when $default != null:
return $default(_that.mean,_that.min,_that.max,_that.stdDev);case _:
  return null;

}
}

}

/// @nodoc


class _VitalBaseline extends VitalBaseline {
  const _VitalBaseline({required this.mean, required this.min, required this.max, required this.stdDev}): super._();
  

@override final  double mean;
@override final  double min;
@override final  double max;
@override final  double stdDev;

/// Create a copy of VitalBaseline
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VitalBaselineCopyWith<_VitalBaseline> get copyWith => __$VitalBaselineCopyWithImpl<_VitalBaseline>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VitalBaseline&&(identical(other.mean, mean) || other.mean == mean)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.stdDev, stdDev) || other.stdDev == stdDev));
}


@override
int get hashCode => Object.hash(runtimeType,mean,min,max,stdDev);

@override
String toString() {
  return 'VitalBaseline(mean: $mean, min: $min, max: $max, stdDev: $stdDev)';
}


}

/// @nodoc
abstract mixin class _$VitalBaselineCopyWith<$Res> implements $VitalBaselineCopyWith<$Res> {
  factory _$VitalBaselineCopyWith(_VitalBaseline value, $Res Function(_VitalBaseline) _then) = __$VitalBaselineCopyWithImpl;
@override @useResult
$Res call({
 double mean, double min, double max, double stdDev
});




}
/// @nodoc
class __$VitalBaselineCopyWithImpl<$Res>
    implements _$VitalBaselineCopyWith<$Res> {
  __$VitalBaselineCopyWithImpl(this._self, this._then);

  final _VitalBaseline _self;
  final $Res Function(_VitalBaseline) _then;

/// Create a copy of VitalBaseline
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mean = null,Object? min = null,Object? max = null,Object? stdDev = null,}) {
  return _then(_VitalBaseline(
mean: null == mean ? _self.mean : mean // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,stdDev: null == stdDev ? _self.stdDev : stdDev // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$VitalsTimeline {

 List<BloodPressureDataPoint> get bloodPressure; List<VitalsDataPoint> get heartRate; List<VitalsDataPoint> get spO2; List<VitalsDataPoint> get glucose; List<MedicationMarker> get medications; List<CaregiverNote> get notes; VitalBaseline? get bpBaseline; VitalBaseline? get hrBaseline; VitalBaseline? get spO2Baseline; VitalBaseline? get glucoseBaseline;
/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VitalsTimelineCopyWith<VitalsTimeline> get copyWith => _$VitalsTimelineCopyWithImpl<VitalsTimeline>(this as VitalsTimeline, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VitalsTimeline&&const DeepCollectionEquality().equals(other.bloodPressure, bloodPressure)&&const DeepCollectionEquality().equals(other.heartRate, heartRate)&&const DeepCollectionEquality().equals(other.spO2, spO2)&&const DeepCollectionEquality().equals(other.glucose, glucose)&&const DeepCollectionEquality().equals(other.medications, medications)&&const DeepCollectionEquality().equals(other.notes, notes)&&(identical(other.bpBaseline, bpBaseline) || other.bpBaseline == bpBaseline)&&(identical(other.hrBaseline, hrBaseline) || other.hrBaseline == hrBaseline)&&(identical(other.spO2Baseline, spO2Baseline) || other.spO2Baseline == spO2Baseline)&&(identical(other.glucoseBaseline, glucoseBaseline) || other.glucoseBaseline == glucoseBaseline));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bloodPressure),const DeepCollectionEquality().hash(heartRate),const DeepCollectionEquality().hash(spO2),const DeepCollectionEquality().hash(glucose),const DeepCollectionEquality().hash(medications),const DeepCollectionEquality().hash(notes),bpBaseline,hrBaseline,spO2Baseline,glucoseBaseline);

@override
String toString() {
  return 'VitalsTimeline(bloodPressure: $bloodPressure, heartRate: $heartRate, spO2: $spO2, glucose: $glucose, medications: $medications, notes: $notes, bpBaseline: $bpBaseline, hrBaseline: $hrBaseline, spO2Baseline: $spO2Baseline, glucoseBaseline: $glucoseBaseline)';
}


}

/// @nodoc
abstract mixin class $VitalsTimelineCopyWith<$Res>  {
  factory $VitalsTimelineCopyWith(VitalsTimeline value, $Res Function(VitalsTimeline) _then) = _$VitalsTimelineCopyWithImpl;
@useResult
$Res call({
 List<BloodPressureDataPoint> bloodPressure, List<VitalsDataPoint> heartRate, List<VitalsDataPoint> spO2, List<VitalsDataPoint> glucose, List<MedicationMarker> medications, List<CaregiverNote> notes, VitalBaseline? bpBaseline, VitalBaseline? hrBaseline, VitalBaseline? spO2Baseline, VitalBaseline? glucoseBaseline
});


$VitalBaselineCopyWith<$Res>? get bpBaseline;$VitalBaselineCopyWith<$Res>? get hrBaseline;$VitalBaselineCopyWith<$Res>? get spO2Baseline;$VitalBaselineCopyWith<$Res>? get glucoseBaseline;

}
/// @nodoc
class _$VitalsTimelineCopyWithImpl<$Res>
    implements $VitalsTimelineCopyWith<$Res> {
  _$VitalsTimelineCopyWithImpl(this._self, this._then);

  final VitalsTimeline _self;
  final $Res Function(VitalsTimeline) _then;

/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bloodPressure = null,Object? heartRate = null,Object? spO2 = null,Object? glucose = null,Object? medications = null,Object? notes = null,Object? bpBaseline = freezed,Object? hrBaseline = freezed,Object? spO2Baseline = freezed,Object? glucoseBaseline = freezed,}) {
  return _then(_self.copyWith(
bloodPressure: null == bloodPressure ? _self.bloodPressure : bloodPressure // ignore: cast_nullable_to_non_nullable
as List<BloodPressureDataPoint>,heartRate: null == heartRate ? _self.heartRate : heartRate // ignore: cast_nullable_to_non_nullable
as List<VitalsDataPoint>,spO2: null == spO2 ? _self.spO2 : spO2 // ignore: cast_nullable_to_non_nullable
as List<VitalsDataPoint>,glucose: null == glucose ? _self.glucose : glucose // ignore: cast_nullable_to_non_nullable
as List<VitalsDataPoint>,medications: null == medications ? _self.medications : medications // ignore: cast_nullable_to_non_nullable
as List<MedicationMarker>,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as List<CaregiverNote>,bpBaseline: freezed == bpBaseline ? _self.bpBaseline : bpBaseline // ignore: cast_nullable_to_non_nullable
as VitalBaseline?,hrBaseline: freezed == hrBaseline ? _self.hrBaseline : hrBaseline // ignore: cast_nullable_to_non_nullable
as VitalBaseline?,spO2Baseline: freezed == spO2Baseline ? _self.spO2Baseline : spO2Baseline // ignore: cast_nullable_to_non_nullable
as VitalBaseline?,glucoseBaseline: freezed == glucoseBaseline ? _self.glucoseBaseline : glucoseBaseline // ignore: cast_nullable_to_non_nullable
as VitalBaseline?,
  ));
}
/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalBaselineCopyWith<$Res>? get bpBaseline {
    if (_self.bpBaseline == null) {
    return null;
  }

  return $VitalBaselineCopyWith<$Res>(_self.bpBaseline!, (value) {
    return _then(_self.copyWith(bpBaseline: value));
  });
}/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalBaselineCopyWith<$Res>? get hrBaseline {
    if (_self.hrBaseline == null) {
    return null;
  }

  return $VitalBaselineCopyWith<$Res>(_self.hrBaseline!, (value) {
    return _then(_self.copyWith(hrBaseline: value));
  });
}/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalBaselineCopyWith<$Res>? get spO2Baseline {
    if (_self.spO2Baseline == null) {
    return null;
  }

  return $VitalBaselineCopyWith<$Res>(_self.spO2Baseline!, (value) {
    return _then(_self.copyWith(spO2Baseline: value));
  });
}/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalBaselineCopyWith<$Res>? get glucoseBaseline {
    if (_self.glucoseBaseline == null) {
    return null;
  }

  return $VitalBaselineCopyWith<$Res>(_self.glucoseBaseline!, (value) {
    return _then(_self.copyWith(glucoseBaseline: value));
  });
}
}


/// Adds pattern-matching-related methods to [VitalsTimeline].
extension VitalsTimelinePatterns on VitalsTimeline {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VitalsTimeline value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VitalsTimeline() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VitalsTimeline value)  $default,){
final _that = this;
switch (_that) {
case _VitalsTimeline():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VitalsTimeline value)?  $default,){
final _that = this;
switch (_that) {
case _VitalsTimeline() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BloodPressureDataPoint> bloodPressure,  List<VitalsDataPoint> heartRate,  List<VitalsDataPoint> spO2,  List<VitalsDataPoint> glucose,  List<MedicationMarker> medications,  List<CaregiverNote> notes,  VitalBaseline? bpBaseline,  VitalBaseline? hrBaseline,  VitalBaseline? spO2Baseline,  VitalBaseline? glucoseBaseline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VitalsTimeline() when $default != null:
return $default(_that.bloodPressure,_that.heartRate,_that.spO2,_that.glucose,_that.medications,_that.notes,_that.bpBaseline,_that.hrBaseline,_that.spO2Baseline,_that.glucoseBaseline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BloodPressureDataPoint> bloodPressure,  List<VitalsDataPoint> heartRate,  List<VitalsDataPoint> spO2,  List<VitalsDataPoint> glucose,  List<MedicationMarker> medications,  List<CaregiverNote> notes,  VitalBaseline? bpBaseline,  VitalBaseline? hrBaseline,  VitalBaseline? spO2Baseline,  VitalBaseline? glucoseBaseline)  $default,) {final _that = this;
switch (_that) {
case _VitalsTimeline():
return $default(_that.bloodPressure,_that.heartRate,_that.spO2,_that.glucose,_that.medications,_that.notes,_that.bpBaseline,_that.hrBaseline,_that.spO2Baseline,_that.glucoseBaseline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BloodPressureDataPoint> bloodPressure,  List<VitalsDataPoint> heartRate,  List<VitalsDataPoint> spO2,  List<VitalsDataPoint> glucose,  List<MedicationMarker> medications,  List<CaregiverNote> notes,  VitalBaseline? bpBaseline,  VitalBaseline? hrBaseline,  VitalBaseline? spO2Baseline,  VitalBaseline? glucoseBaseline)?  $default,) {final _that = this;
switch (_that) {
case _VitalsTimeline() when $default != null:
return $default(_that.bloodPressure,_that.heartRate,_that.spO2,_that.glucose,_that.medications,_that.notes,_that.bpBaseline,_that.hrBaseline,_that.spO2Baseline,_that.glucoseBaseline);case _:
  return null;

}
}

}

/// @nodoc


class _VitalsTimeline extends VitalsTimeline {
  const _VitalsTimeline({required final  List<BloodPressureDataPoint> bloodPressure, required final  List<VitalsDataPoint> heartRate, required final  List<VitalsDataPoint> spO2, required final  List<VitalsDataPoint> glucose, required final  List<MedicationMarker> medications, required final  List<CaregiverNote> notes, this.bpBaseline, this.hrBaseline, this.spO2Baseline, this.glucoseBaseline}): _bloodPressure = bloodPressure,_heartRate = heartRate,_spO2 = spO2,_glucose = glucose,_medications = medications,_notes = notes,super._();
  

 final  List<BloodPressureDataPoint> _bloodPressure;
@override List<BloodPressureDataPoint> get bloodPressure {
  if (_bloodPressure is EqualUnmodifiableListView) return _bloodPressure;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bloodPressure);
}

 final  List<VitalsDataPoint> _heartRate;
@override List<VitalsDataPoint> get heartRate {
  if (_heartRate is EqualUnmodifiableListView) return _heartRate;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_heartRate);
}

 final  List<VitalsDataPoint> _spO2;
@override List<VitalsDataPoint> get spO2 {
  if (_spO2 is EqualUnmodifiableListView) return _spO2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_spO2);
}

 final  List<VitalsDataPoint> _glucose;
@override List<VitalsDataPoint> get glucose {
  if (_glucose is EqualUnmodifiableListView) return _glucose;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_glucose);
}

 final  List<MedicationMarker> _medications;
@override List<MedicationMarker> get medications {
  if (_medications is EqualUnmodifiableListView) return _medications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_medications);
}

 final  List<CaregiverNote> _notes;
@override List<CaregiverNote> get notes {
  if (_notes is EqualUnmodifiableListView) return _notes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notes);
}

@override final  VitalBaseline? bpBaseline;
@override final  VitalBaseline? hrBaseline;
@override final  VitalBaseline? spO2Baseline;
@override final  VitalBaseline? glucoseBaseline;

/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VitalsTimelineCopyWith<_VitalsTimeline> get copyWith => __$VitalsTimelineCopyWithImpl<_VitalsTimeline>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VitalsTimeline&&const DeepCollectionEquality().equals(other._bloodPressure, _bloodPressure)&&const DeepCollectionEquality().equals(other._heartRate, _heartRate)&&const DeepCollectionEquality().equals(other._spO2, _spO2)&&const DeepCollectionEquality().equals(other._glucose, _glucose)&&const DeepCollectionEquality().equals(other._medications, _medications)&&const DeepCollectionEquality().equals(other._notes, _notes)&&(identical(other.bpBaseline, bpBaseline) || other.bpBaseline == bpBaseline)&&(identical(other.hrBaseline, hrBaseline) || other.hrBaseline == hrBaseline)&&(identical(other.spO2Baseline, spO2Baseline) || other.spO2Baseline == spO2Baseline)&&(identical(other.glucoseBaseline, glucoseBaseline) || other.glucoseBaseline == glucoseBaseline));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bloodPressure),const DeepCollectionEquality().hash(_heartRate),const DeepCollectionEquality().hash(_spO2),const DeepCollectionEquality().hash(_glucose),const DeepCollectionEquality().hash(_medications),const DeepCollectionEquality().hash(_notes),bpBaseline,hrBaseline,spO2Baseline,glucoseBaseline);

@override
String toString() {
  return 'VitalsTimeline(bloodPressure: $bloodPressure, heartRate: $heartRate, spO2: $spO2, glucose: $glucose, medications: $medications, notes: $notes, bpBaseline: $bpBaseline, hrBaseline: $hrBaseline, spO2Baseline: $spO2Baseline, glucoseBaseline: $glucoseBaseline)';
}


}

/// @nodoc
abstract mixin class _$VitalsTimelineCopyWith<$Res> implements $VitalsTimelineCopyWith<$Res> {
  factory _$VitalsTimelineCopyWith(_VitalsTimeline value, $Res Function(_VitalsTimeline) _then) = __$VitalsTimelineCopyWithImpl;
@override @useResult
$Res call({
 List<BloodPressureDataPoint> bloodPressure, List<VitalsDataPoint> heartRate, List<VitalsDataPoint> spO2, List<VitalsDataPoint> glucose, List<MedicationMarker> medications, List<CaregiverNote> notes, VitalBaseline? bpBaseline, VitalBaseline? hrBaseline, VitalBaseline? spO2Baseline, VitalBaseline? glucoseBaseline
});


@override $VitalBaselineCopyWith<$Res>? get bpBaseline;@override $VitalBaselineCopyWith<$Res>? get hrBaseline;@override $VitalBaselineCopyWith<$Res>? get spO2Baseline;@override $VitalBaselineCopyWith<$Res>? get glucoseBaseline;

}
/// @nodoc
class __$VitalsTimelineCopyWithImpl<$Res>
    implements _$VitalsTimelineCopyWith<$Res> {
  __$VitalsTimelineCopyWithImpl(this._self, this._then);

  final _VitalsTimeline _self;
  final $Res Function(_VitalsTimeline) _then;

/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bloodPressure = null,Object? heartRate = null,Object? spO2 = null,Object? glucose = null,Object? medications = null,Object? notes = null,Object? bpBaseline = freezed,Object? hrBaseline = freezed,Object? spO2Baseline = freezed,Object? glucoseBaseline = freezed,}) {
  return _then(_VitalsTimeline(
bloodPressure: null == bloodPressure ? _self._bloodPressure : bloodPressure // ignore: cast_nullable_to_non_nullable
as List<BloodPressureDataPoint>,heartRate: null == heartRate ? _self._heartRate : heartRate // ignore: cast_nullable_to_non_nullable
as List<VitalsDataPoint>,spO2: null == spO2 ? _self._spO2 : spO2 // ignore: cast_nullable_to_non_nullable
as List<VitalsDataPoint>,glucose: null == glucose ? _self._glucose : glucose // ignore: cast_nullable_to_non_nullable
as List<VitalsDataPoint>,medications: null == medications ? _self._medications : medications // ignore: cast_nullable_to_non_nullable
as List<MedicationMarker>,notes: null == notes ? _self._notes : notes // ignore: cast_nullable_to_non_nullable
as List<CaregiverNote>,bpBaseline: freezed == bpBaseline ? _self.bpBaseline : bpBaseline // ignore: cast_nullable_to_non_nullable
as VitalBaseline?,hrBaseline: freezed == hrBaseline ? _self.hrBaseline : hrBaseline // ignore: cast_nullable_to_non_nullable
as VitalBaseline?,spO2Baseline: freezed == spO2Baseline ? _self.spO2Baseline : spO2Baseline // ignore: cast_nullable_to_non_nullable
as VitalBaseline?,glucoseBaseline: freezed == glucoseBaseline ? _self.glucoseBaseline : glucoseBaseline // ignore: cast_nullable_to_non_nullable
as VitalBaseline?,
  ));
}

/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalBaselineCopyWith<$Res>? get bpBaseline {
    if (_self.bpBaseline == null) {
    return null;
  }

  return $VitalBaselineCopyWith<$Res>(_self.bpBaseline!, (value) {
    return _then(_self.copyWith(bpBaseline: value));
  });
}/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalBaselineCopyWith<$Res>? get hrBaseline {
    if (_self.hrBaseline == null) {
    return null;
  }

  return $VitalBaselineCopyWith<$Res>(_self.hrBaseline!, (value) {
    return _then(_self.copyWith(hrBaseline: value));
  });
}/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalBaselineCopyWith<$Res>? get spO2Baseline {
    if (_self.spO2Baseline == null) {
    return null;
  }

  return $VitalBaselineCopyWith<$Res>(_self.spO2Baseline!, (value) {
    return _then(_self.copyWith(spO2Baseline: value));
  });
}/// Create a copy of VitalsTimeline
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalBaselineCopyWith<$Res>? get glucoseBaseline {
    if (_self.glucoseBaseline == null) {
    return null;
  }

  return $VitalBaselineCopyWith<$Res>(_self.glucoseBaseline!, (value) {
    return _then(_self.copyWith(glucoseBaseline: value));
  });
}
}

// dart format on
