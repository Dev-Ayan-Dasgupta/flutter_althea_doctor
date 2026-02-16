// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinical_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClinicalOrder {

 String get id; String get patientId; String get patientName; OrderType get orderType; OrderStatus get status; String get orderedBy; String get orderedByName; DateTime get orderedAt; String get title; String? get description; DateTime? get scheduledFor; DateTime? get completedAt; String? get completedBy; String? get notes; bool? get urgent; List<String>? get attachments;// Medication specific
 MedicationOrderDetails? get medicationDetails;// Lab specific
 LabOrderDetails? get labDetails;// Procedure specific
 ProcedureOrderDetails? get procedureDetails;
/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicalOrderCopyWith<ClinicalOrder> get copyWith => _$ClinicalOrderCopyWithImpl<ClinicalOrder>(this as ClinicalOrder, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicalOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderedBy, orderedBy) || other.orderedBy == orderedBy)&&(identical(other.orderedByName, orderedByName) || other.orderedByName == orderedByName)&&(identical(other.orderedAt, orderedAt) || other.orderedAt == orderedAt)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedBy, completedBy) || other.completedBy == completedBy)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.urgent, urgent) || other.urgent == urgent)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.medicationDetails, medicationDetails) || other.medicationDetails == medicationDetails)&&(identical(other.labDetails, labDetails) || other.labDetails == labDetails)&&(identical(other.procedureDetails, procedureDetails) || other.procedureDetails == procedureDetails));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,orderType,status,orderedBy,orderedByName,orderedAt,title,description,scheduledFor,completedAt,completedBy,notes,urgent,const DeepCollectionEquality().hash(attachments),medicationDetails,labDetails,procedureDetails]);

@override
String toString() {
  return 'ClinicalOrder(id: $id, patientId: $patientId, patientName: $patientName, orderType: $orderType, status: $status, orderedBy: $orderedBy, orderedByName: $orderedByName, orderedAt: $orderedAt, title: $title, description: $description, scheduledFor: $scheduledFor, completedAt: $completedAt, completedBy: $completedBy, notes: $notes, urgent: $urgent, attachments: $attachments, medicationDetails: $medicationDetails, labDetails: $labDetails, procedureDetails: $procedureDetails)';
}


}

/// @nodoc
abstract mixin class $ClinicalOrderCopyWith<$Res>  {
  factory $ClinicalOrderCopyWith(ClinicalOrder value, $Res Function(ClinicalOrder) _then) = _$ClinicalOrderCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, OrderType orderType, OrderStatus status, String orderedBy, String orderedByName, DateTime orderedAt, String title, String? description, DateTime? scheduledFor, DateTime? completedAt, String? completedBy, String? notes, bool? urgent, List<String>? attachments, MedicationOrderDetails? medicationDetails, LabOrderDetails? labDetails, ProcedureOrderDetails? procedureDetails
});


$MedicationOrderDetailsCopyWith<$Res>? get medicationDetails;$LabOrderDetailsCopyWith<$Res>? get labDetails;$ProcedureOrderDetailsCopyWith<$Res>? get procedureDetails;

}
/// @nodoc
class _$ClinicalOrderCopyWithImpl<$Res>
    implements $ClinicalOrderCopyWith<$Res> {
  _$ClinicalOrderCopyWithImpl(this._self, this._then);

  final ClinicalOrder _self;
  final $Res Function(ClinicalOrder) _then;

/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? orderType = null,Object? status = null,Object? orderedBy = null,Object? orderedByName = null,Object? orderedAt = null,Object? title = null,Object? description = freezed,Object? scheduledFor = freezed,Object? completedAt = freezed,Object? completedBy = freezed,Object? notes = freezed,Object? urgent = freezed,Object? attachments = freezed,Object? medicationDetails = freezed,Object? labDetails = freezed,Object? procedureDetails = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as OrderType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,orderedBy: null == orderedBy ? _self.orderedBy : orderedBy // ignore: cast_nullable_to_non_nullable
as String,orderedByName: null == orderedByName ? _self.orderedByName : orderedByName // ignore: cast_nullable_to_non_nullable
as String,orderedAt: null == orderedAt ? _self.orderedAt : orderedAt // ignore: cast_nullable_to_non_nullable
as DateTime,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,scheduledFor: freezed == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedBy: freezed == completedBy ? _self.completedBy : completedBy // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,urgent: freezed == urgent ? _self.urgent : urgent // ignore: cast_nullable_to_non_nullable
as bool?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,medicationDetails: freezed == medicationDetails ? _self.medicationDetails : medicationDetails // ignore: cast_nullable_to_non_nullable
as MedicationOrderDetails?,labDetails: freezed == labDetails ? _self.labDetails : labDetails // ignore: cast_nullable_to_non_nullable
as LabOrderDetails?,procedureDetails: freezed == procedureDetails ? _self.procedureDetails : procedureDetails // ignore: cast_nullable_to_non_nullable
as ProcedureOrderDetails?,
  ));
}
/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MedicationOrderDetailsCopyWith<$Res>? get medicationDetails {
    if (_self.medicationDetails == null) {
    return null;
  }

  return $MedicationOrderDetailsCopyWith<$Res>(_self.medicationDetails!, (value) {
    return _then(_self.copyWith(medicationDetails: value));
  });
}/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LabOrderDetailsCopyWith<$Res>? get labDetails {
    if (_self.labDetails == null) {
    return null;
  }

  return $LabOrderDetailsCopyWith<$Res>(_self.labDetails!, (value) {
    return _then(_self.copyWith(labDetails: value));
  });
}/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcedureOrderDetailsCopyWith<$Res>? get procedureDetails {
    if (_self.procedureDetails == null) {
    return null;
  }

  return $ProcedureOrderDetailsCopyWith<$Res>(_self.procedureDetails!, (value) {
    return _then(_self.copyWith(procedureDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClinicalOrder].
extension ClinicalOrderPatterns on ClinicalOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicalOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicalOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicalOrder value)  $default,){
final _that = this;
switch (_that) {
case _ClinicalOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicalOrder value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicalOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  OrderType orderType,  OrderStatus status,  String orderedBy,  String orderedByName,  DateTime orderedAt,  String title,  String? description,  DateTime? scheduledFor,  DateTime? completedAt,  String? completedBy,  String? notes,  bool? urgent,  List<String>? attachments,  MedicationOrderDetails? medicationDetails,  LabOrderDetails? labDetails,  ProcedureOrderDetails? procedureDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicalOrder() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.orderType,_that.status,_that.orderedBy,_that.orderedByName,_that.orderedAt,_that.title,_that.description,_that.scheduledFor,_that.completedAt,_that.completedBy,_that.notes,_that.urgent,_that.attachments,_that.medicationDetails,_that.labDetails,_that.procedureDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  OrderType orderType,  OrderStatus status,  String orderedBy,  String orderedByName,  DateTime orderedAt,  String title,  String? description,  DateTime? scheduledFor,  DateTime? completedAt,  String? completedBy,  String? notes,  bool? urgent,  List<String>? attachments,  MedicationOrderDetails? medicationDetails,  LabOrderDetails? labDetails,  ProcedureOrderDetails? procedureDetails)  $default,) {final _that = this;
switch (_that) {
case _ClinicalOrder():
return $default(_that.id,_that.patientId,_that.patientName,_that.orderType,_that.status,_that.orderedBy,_that.orderedByName,_that.orderedAt,_that.title,_that.description,_that.scheduledFor,_that.completedAt,_that.completedBy,_that.notes,_that.urgent,_that.attachments,_that.medicationDetails,_that.labDetails,_that.procedureDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  OrderType orderType,  OrderStatus status,  String orderedBy,  String orderedByName,  DateTime orderedAt,  String title,  String? description,  DateTime? scheduledFor,  DateTime? completedAt,  String? completedBy,  String? notes,  bool? urgent,  List<String>? attachments,  MedicationOrderDetails? medicationDetails,  LabOrderDetails? labDetails,  ProcedureOrderDetails? procedureDetails)?  $default,) {final _that = this;
switch (_that) {
case _ClinicalOrder() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.orderType,_that.status,_that.orderedBy,_that.orderedByName,_that.orderedAt,_that.title,_that.description,_that.scheduledFor,_that.completedAt,_that.completedBy,_that.notes,_that.urgent,_that.attachments,_that.medicationDetails,_that.labDetails,_that.procedureDetails);case _:
  return null;

}
}

}

/// @nodoc


class _ClinicalOrder extends ClinicalOrder {
  const _ClinicalOrder({required this.id, required this.patientId, required this.patientName, required this.orderType, required this.status, required this.orderedBy, required this.orderedByName, required this.orderedAt, required this.title, this.description, this.scheduledFor, this.completedAt, this.completedBy, this.notes, this.urgent, final  List<String>? attachments, this.medicationDetails, this.labDetails, this.procedureDetails}): _attachments = attachments,super._();
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  OrderType orderType;
@override final  OrderStatus status;
@override final  String orderedBy;
@override final  String orderedByName;
@override final  DateTime orderedAt;
@override final  String title;
@override final  String? description;
@override final  DateTime? scheduledFor;
@override final  DateTime? completedAt;
@override final  String? completedBy;
@override final  String? notes;
@override final  bool? urgent;
 final  List<String>? _attachments;
@override List<String>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Medication specific
@override final  MedicationOrderDetails? medicationDetails;
// Lab specific
@override final  LabOrderDetails? labDetails;
// Procedure specific
@override final  ProcedureOrderDetails? procedureDetails;

/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicalOrderCopyWith<_ClinicalOrder> get copyWith => __$ClinicalOrderCopyWithImpl<_ClinicalOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicalOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderedBy, orderedBy) || other.orderedBy == orderedBy)&&(identical(other.orderedByName, orderedByName) || other.orderedByName == orderedByName)&&(identical(other.orderedAt, orderedAt) || other.orderedAt == orderedAt)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedBy, completedBy) || other.completedBy == completedBy)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.urgent, urgent) || other.urgent == urgent)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.medicationDetails, medicationDetails) || other.medicationDetails == medicationDetails)&&(identical(other.labDetails, labDetails) || other.labDetails == labDetails)&&(identical(other.procedureDetails, procedureDetails) || other.procedureDetails == procedureDetails));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,orderType,status,orderedBy,orderedByName,orderedAt,title,description,scheduledFor,completedAt,completedBy,notes,urgent,const DeepCollectionEquality().hash(_attachments),medicationDetails,labDetails,procedureDetails]);

@override
String toString() {
  return 'ClinicalOrder(id: $id, patientId: $patientId, patientName: $patientName, orderType: $orderType, status: $status, orderedBy: $orderedBy, orderedByName: $orderedByName, orderedAt: $orderedAt, title: $title, description: $description, scheduledFor: $scheduledFor, completedAt: $completedAt, completedBy: $completedBy, notes: $notes, urgent: $urgent, attachments: $attachments, medicationDetails: $medicationDetails, labDetails: $labDetails, procedureDetails: $procedureDetails)';
}


}

/// @nodoc
abstract mixin class _$ClinicalOrderCopyWith<$Res> implements $ClinicalOrderCopyWith<$Res> {
  factory _$ClinicalOrderCopyWith(_ClinicalOrder value, $Res Function(_ClinicalOrder) _then) = __$ClinicalOrderCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, OrderType orderType, OrderStatus status, String orderedBy, String orderedByName, DateTime orderedAt, String title, String? description, DateTime? scheduledFor, DateTime? completedAt, String? completedBy, String? notes, bool? urgent, List<String>? attachments, MedicationOrderDetails? medicationDetails, LabOrderDetails? labDetails, ProcedureOrderDetails? procedureDetails
});


@override $MedicationOrderDetailsCopyWith<$Res>? get medicationDetails;@override $LabOrderDetailsCopyWith<$Res>? get labDetails;@override $ProcedureOrderDetailsCopyWith<$Res>? get procedureDetails;

}
/// @nodoc
class __$ClinicalOrderCopyWithImpl<$Res>
    implements _$ClinicalOrderCopyWith<$Res> {
  __$ClinicalOrderCopyWithImpl(this._self, this._then);

  final _ClinicalOrder _self;
  final $Res Function(_ClinicalOrder) _then;

/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? orderType = null,Object? status = null,Object? orderedBy = null,Object? orderedByName = null,Object? orderedAt = null,Object? title = null,Object? description = freezed,Object? scheduledFor = freezed,Object? completedAt = freezed,Object? completedBy = freezed,Object? notes = freezed,Object? urgent = freezed,Object? attachments = freezed,Object? medicationDetails = freezed,Object? labDetails = freezed,Object? procedureDetails = freezed,}) {
  return _then(_ClinicalOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as OrderType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,orderedBy: null == orderedBy ? _self.orderedBy : orderedBy // ignore: cast_nullable_to_non_nullable
as String,orderedByName: null == orderedByName ? _self.orderedByName : orderedByName // ignore: cast_nullable_to_non_nullable
as String,orderedAt: null == orderedAt ? _self.orderedAt : orderedAt // ignore: cast_nullable_to_non_nullable
as DateTime,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,scheduledFor: freezed == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedBy: freezed == completedBy ? _self.completedBy : completedBy // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,urgent: freezed == urgent ? _self.urgent : urgent // ignore: cast_nullable_to_non_nullable
as bool?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<String>?,medicationDetails: freezed == medicationDetails ? _self.medicationDetails : medicationDetails // ignore: cast_nullable_to_non_nullable
as MedicationOrderDetails?,labDetails: freezed == labDetails ? _self.labDetails : labDetails // ignore: cast_nullable_to_non_nullable
as LabOrderDetails?,procedureDetails: freezed == procedureDetails ? _self.procedureDetails : procedureDetails // ignore: cast_nullable_to_non_nullable
as ProcedureOrderDetails?,
  ));
}

/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MedicationOrderDetailsCopyWith<$Res>? get medicationDetails {
    if (_self.medicationDetails == null) {
    return null;
  }

  return $MedicationOrderDetailsCopyWith<$Res>(_self.medicationDetails!, (value) {
    return _then(_self.copyWith(medicationDetails: value));
  });
}/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LabOrderDetailsCopyWith<$Res>? get labDetails {
    if (_self.labDetails == null) {
    return null;
  }

  return $LabOrderDetailsCopyWith<$Res>(_self.labDetails!, (value) {
    return _then(_self.copyWith(labDetails: value));
  });
}/// Create a copy of ClinicalOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcedureOrderDetailsCopyWith<$Res>? get procedureDetails {
    if (_self.procedureDetails == null) {
    return null;
  }

  return $ProcedureOrderDetailsCopyWith<$Res>(_self.procedureDetails!, (value) {
    return _then(_self.copyWith(procedureDetails: value));
  });
}
}

/// @nodoc
mixin _$MedicationOrderDetails {

 String get medicationName; String get dosage; String get route;// oral, IV, topical, etc.
 String get frequency;// Once daily, BID, TID, etc.
 int get durationDays; String? get instructions; String? get indication; bool? get genericAllowed; int? get refills; String? get pharmacy;
/// Create a copy of MedicationOrderDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicationOrderDetailsCopyWith<MedicationOrderDetails> get copyWith => _$MedicationOrderDetailsCopyWithImpl<MedicationOrderDetails>(this as MedicationOrderDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationOrderDetails&&(identical(other.medicationName, medicationName) || other.medicationName == medicationName)&&(identical(other.dosage, dosage) || other.dosage == dosage)&&(identical(other.route, route) || other.route == route)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.durationDays, durationDays) || other.durationDays == durationDays)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.indication, indication) || other.indication == indication)&&(identical(other.genericAllowed, genericAllowed) || other.genericAllowed == genericAllowed)&&(identical(other.refills, refills) || other.refills == refills)&&(identical(other.pharmacy, pharmacy) || other.pharmacy == pharmacy));
}


@override
int get hashCode => Object.hash(runtimeType,medicationName,dosage,route,frequency,durationDays,instructions,indication,genericAllowed,refills,pharmacy);

@override
String toString() {
  return 'MedicationOrderDetails(medicationName: $medicationName, dosage: $dosage, route: $route, frequency: $frequency, durationDays: $durationDays, instructions: $instructions, indication: $indication, genericAllowed: $genericAllowed, refills: $refills, pharmacy: $pharmacy)';
}


}

/// @nodoc
abstract mixin class $MedicationOrderDetailsCopyWith<$Res>  {
  factory $MedicationOrderDetailsCopyWith(MedicationOrderDetails value, $Res Function(MedicationOrderDetails) _then) = _$MedicationOrderDetailsCopyWithImpl;
@useResult
$Res call({
 String medicationName, String dosage, String route, String frequency, int durationDays, String? instructions, String? indication, bool? genericAllowed, int? refills, String? pharmacy
});




}
/// @nodoc
class _$MedicationOrderDetailsCopyWithImpl<$Res>
    implements $MedicationOrderDetailsCopyWith<$Res> {
  _$MedicationOrderDetailsCopyWithImpl(this._self, this._then);

  final MedicationOrderDetails _self;
  final $Res Function(MedicationOrderDetails) _then;

/// Create a copy of MedicationOrderDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? medicationName = null,Object? dosage = null,Object? route = null,Object? frequency = null,Object? durationDays = null,Object? instructions = freezed,Object? indication = freezed,Object? genericAllowed = freezed,Object? refills = freezed,Object? pharmacy = freezed,}) {
  return _then(_self.copyWith(
medicationName: null == medicationName ? _self.medicationName : medicationName // ignore: cast_nullable_to_non_nullable
as String,dosage: null == dosage ? _self.dosage : dosage // ignore: cast_nullable_to_non_nullable
as String,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,durationDays: null == durationDays ? _self.durationDays : durationDays // ignore: cast_nullable_to_non_nullable
as int,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,indication: freezed == indication ? _self.indication : indication // ignore: cast_nullable_to_non_nullable
as String?,genericAllowed: freezed == genericAllowed ? _self.genericAllowed : genericAllowed // ignore: cast_nullable_to_non_nullable
as bool?,refills: freezed == refills ? _self.refills : refills // ignore: cast_nullable_to_non_nullable
as int?,pharmacy: freezed == pharmacy ? _self.pharmacy : pharmacy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MedicationOrderDetails].
extension MedicationOrderDetailsPatterns on MedicationOrderDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicationOrderDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicationOrderDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicationOrderDetails value)  $default,){
final _that = this;
switch (_that) {
case _MedicationOrderDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicationOrderDetails value)?  $default,){
final _that = this;
switch (_that) {
case _MedicationOrderDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String medicationName,  String dosage,  String route,  String frequency,  int durationDays,  String? instructions,  String? indication,  bool? genericAllowed,  int? refills,  String? pharmacy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicationOrderDetails() when $default != null:
return $default(_that.medicationName,_that.dosage,_that.route,_that.frequency,_that.durationDays,_that.instructions,_that.indication,_that.genericAllowed,_that.refills,_that.pharmacy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String medicationName,  String dosage,  String route,  String frequency,  int durationDays,  String? instructions,  String? indication,  bool? genericAllowed,  int? refills,  String? pharmacy)  $default,) {final _that = this;
switch (_that) {
case _MedicationOrderDetails():
return $default(_that.medicationName,_that.dosage,_that.route,_that.frequency,_that.durationDays,_that.instructions,_that.indication,_that.genericAllowed,_that.refills,_that.pharmacy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String medicationName,  String dosage,  String route,  String frequency,  int durationDays,  String? instructions,  String? indication,  bool? genericAllowed,  int? refills,  String? pharmacy)?  $default,) {final _that = this;
switch (_that) {
case _MedicationOrderDetails() when $default != null:
return $default(_that.medicationName,_that.dosage,_that.route,_that.frequency,_that.durationDays,_that.instructions,_that.indication,_that.genericAllowed,_that.refills,_that.pharmacy);case _:
  return null;

}
}

}

/// @nodoc


class _MedicationOrderDetails extends MedicationOrderDetails {
  const _MedicationOrderDetails({required this.medicationName, required this.dosage, required this.route, required this.frequency, required this.durationDays, this.instructions, this.indication, this.genericAllowed, this.refills, this.pharmacy}): super._();
  

@override final  String medicationName;
@override final  String dosage;
@override final  String route;
// oral, IV, topical, etc.
@override final  String frequency;
// Once daily, BID, TID, etc.
@override final  int durationDays;
@override final  String? instructions;
@override final  String? indication;
@override final  bool? genericAllowed;
@override final  int? refills;
@override final  String? pharmacy;

/// Create a copy of MedicationOrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationOrderDetailsCopyWith<_MedicationOrderDetails> get copyWith => __$MedicationOrderDetailsCopyWithImpl<_MedicationOrderDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicationOrderDetails&&(identical(other.medicationName, medicationName) || other.medicationName == medicationName)&&(identical(other.dosage, dosage) || other.dosage == dosage)&&(identical(other.route, route) || other.route == route)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.durationDays, durationDays) || other.durationDays == durationDays)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.indication, indication) || other.indication == indication)&&(identical(other.genericAllowed, genericAllowed) || other.genericAllowed == genericAllowed)&&(identical(other.refills, refills) || other.refills == refills)&&(identical(other.pharmacy, pharmacy) || other.pharmacy == pharmacy));
}


@override
int get hashCode => Object.hash(runtimeType,medicationName,dosage,route,frequency,durationDays,instructions,indication,genericAllowed,refills,pharmacy);

@override
String toString() {
  return 'MedicationOrderDetails(medicationName: $medicationName, dosage: $dosage, route: $route, frequency: $frequency, durationDays: $durationDays, instructions: $instructions, indication: $indication, genericAllowed: $genericAllowed, refills: $refills, pharmacy: $pharmacy)';
}


}

/// @nodoc
abstract mixin class _$MedicationOrderDetailsCopyWith<$Res> implements $MedicationOrderDetailsCopyWith<$Res> {
  factory _$MedicationOrderDetailsCopyWith(_MedicationOrderDetails value, $Res Function(_MedicationOrderDetails) _then) = __$MedicationOrderDetailsCopyWithImpl;
@override @useResult
$Res call({
 String medicationName, String dosage, String route, String frequency, int durationDays, String? instructions, String? indication, bool? genericAllowed, int? refills, String? pharmacy
});




}
/// @nodoc
class __$MedicationOrderDetailsCopyWithImpl<$Res>
    implements _$MedicationOrderDetailsCopyWith<$Res> {
  __$MedicationOrderDetailsCopyWithImpl(this._self, this._then);

  final _MedicationOrderDetails _self;
  final $Res Function(_MedicationOrderDetails) _then;

/// Create a copy of MedicationOrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? medicationName = null,Object? dosage = null,Object? route = null,Object? frequency = null,Object? durationDays = null,Object? instructions = freezed,Object? indication = freezed,Object? genericAllowed = freezed,Object? refills = freezed,Object? pharmacy = freezed,}) {
  return _then(_MedicationOrderDetails(
medicationName: null == medicationName ? _self.medicationName : medicationName // ignore: cast_nullable_to_non_nullable
as String,dosage: null == dosage ? _self.dosage : dosage // ignore: cast_nullable_to_non_nullable
as String,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,durationDays: null == durationDays ? _self.durationDays : durationDays // ignore: cast_nullable_to_non_nullable
as int,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,indication: freezed == indication ? _self.indication : indication // ignore: cast_nullable_to_non_nullable
as String?,genericAllowed: freezed == genericAllowed ? _self.genericAllowed : genericAllowed // ignore: cast_nullable_to_non_nullable
as bool?,refills: freezed == refills ? _self.refills : refills // ignore: cast_nullable_to_non_nullable
as int?,pharmacy: freezed == pharmacy ? _self.pharmacy : pharmacy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$LabOrderDetails {

 List<String> get tests; String? get specimenType; bool? get fasting; String? get clinicalNotes; DateTime? get collectionTime; String? get labName;
/// Create a copy of LabOrderDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabOrderDetailsCopyWith<LabOrderDetails> get copyWith => _$LabOrderDetailsCopyWithImpl<LabOrderDetails>(this as LabOrderDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabOrderDetails&&const DeepCollectionEquality().equals(other.tests, tests)&&(identical(other.specimenType, specimenType) || other.specimenType == specimenType)&&(identical(other.fasting, fasting) || other.fasting == fasting)&&(identical(other.clinicalNotes, clinicalNotes) || other.clinicalNotes == clinicalNotes)&&(identical(other.collectionTime, collectionTime) || other.collectionTime == collectionTime)&&(identical(other.labName, labName) || other.labName == labName));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tests),specimenType,fasting,clinicalNotes,collectionTime,labName);

@override
String toString() {
  return 'LabOrderDetails(tests: $tests, specimenType: $specimenType, fasting: $fasting, clinicalNotes: $clinicalNotes, collectionTime: $collectionTime, labName: $labName)';
}


}

/// @nodoc
abstract mixin class $LabOrderDetailsCopyWith<$Res>  {
  factory $LabOrderDetailsCopyWith(LabOrderDetails value, $Res Function(LabOrderDetails) _then) = _$LabOrderDetailsCopyWithImpl;
@useResult
$Res call({
 List<String> tests, String? specimenType, bool? fasting, String? clinicalNotes, DateTime? collectionTime, String? labName
});




}
/// @nodoc
class _$LabOrderDetailsCopyWithImpl<$Res>
    implements $LabOrderDetailsCopyWith<$Res> {
  _$LabOrderDetailsCopyWithImpl(this._self, this._then);

  final LabOrderDetails _self;
  final $Res Function(LabOrderDetails) _then;

/// Create a copy of LabOrderDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tests = null,Object? specimenType = freezed,Object? fasting = freezed,Object? clinicalNotes = freezed,Object? collectionTime = freezed,Object? labName = freezed,}) {
  return _then(_self.copyWith(
tests: null == tests ? _self.tests : tests // ignore: cast_nullable_to_non_nullable
as List<String>,specimenType: freezed == specimenType ? _self.specimenType : specimenType // ignore: cast_nullable_to_non_nullable
as String?,fasting: freezed == fasting ? _self.fasting : fasting // ignore: cast_nullable_to_non_nullable
as bool?,clinicalNotes: freezed == clinicalNotes ? _self.clinicalNotes : clinicalNotes // ignore: cast_nullable_to_non_nullable
as String?,collectionTime: freezed == collectionTime ? _self.collectionTime : collectionTime // ignore: cast_nullable_to_non_nullable
as DateTime?,labName: freezed == labName ? _self.labName : labName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LabOrderDetails].
extension LabOrderDetailsPatterns on LabOrderDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabOrderDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabOrderDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabOrderDetails value)  $default,){
final _that = this;
switch (_that) {
case _LabOrderDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabOrderDetails value)?  $default,){
final _that = this;
switch (_that) {
case _LabOrderDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> tests,  String? specimenType,  bool? fasting,  String? clinicalNotes,  DateTime? collectionTime,  String? labName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LabOrderDetails() when $default != null:
return $default(_that.tests,_that.specimenType,_that.fasting,_that.clinicalNotes,_that.collectionTime,_that.labName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> tests,  String? specimenType,  bool? fasting,  String? clinicalNotes,  DateTime? collectionTime,  String? labName)  $default,) {final _that = this;
switch (_that) {
case _LabOrderDetails():
return $default(_that.tests,_that.specimenType,_that.fasting,_that.clinicalNotes,_that.collectionTime,_that.labName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> tests,  String? specimenType,  bool? fasting,  String? clinicalNotes,  DateTime? collectionTime,  String? labName)?  $default,) {final _that = this;
switch (_that) {
case _LabOrderDetails() when $default != null:
return $default(_that.tests,_that.specimenType,_that.fasting,_that.clinicalNotes,_that.collectionTime,_that.labName);case _:
  return null;

}
}

}

/// @nodoc


class _LabOrderDetails implements LabOrderDetails {
  const _LabOrderDetails({required final  List<String> tests, this.specimenType, this.fasting, this.clinicalNotes, this.collectionTime, this.labName}): _tests = tests;
  

 final  List<String> _tests;
@override List<String> get tests {
  if (_tests is EqualUnmodifiableListView) return _tests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tests);
}

@override final  String? specimenType;
@override final  bool? fasting;
@override final  String? clinicalNotes;
@override final  DateTime? collectionTime;
@override final  String? labName;

/// Create a copy of LabOrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabOrderDetailsCopyWith<_LabOrderDetails> get copyWith => __$LabOrderDetailsCopyWithImpl<_LabOrderDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabOrderDetails&&const DeepCollectionEquality().equals(other._tests, _tests)&&(identical(other.specimenType, specimenType) || other.specimenType == specimenType)&&(identical(other.fasting, fasting) || other.fasting == fasting)&&(identical(other.clinicalNotes, clinicalNotes) || other.clinicalNotes == clinicalNotes)&&(identical(other.collectionTime, collectionTime) || other.collectionTime == collectionTime)&&(identical(other.labName, labName) || other.labName == labName));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tests),specimenType,fasting,clinicalNotes,collectionTime,labName);

@override
String toString() {
  return 'LabOrderDetails(tests: $tests, specimenType: $specimenType, fasting: $fasting, clinicalNotes: $clinicalNotes, collectionTime: $collectionTime, labName: $labName)';
}


}

/// @nodoc
abstract mixin class _$LabOrderDetailsCopyWith<$Res> implements $LabOrderDetailsCopyWith<$Res> {
  factory _$LabOrderDetailsCopyWith(_LabOrderDetails value, $Res Function(_LabOrderDetails) _then) = __$LabOrderDetailsCopyWithImpl;
@override @useResult
$Res call({
 List<String> tests, String? specimenType, bool? fasting, String? clinicalNotes, DateTime? collectionTime, String? labName
});




}
/// @nodoc
class __$LabOrderDetailsCopyWithImpl<$Res>
    implements _$LabOrderDetailsCopyWith<$Res> {
  __$LabOrderDetailsCopyWithImpl(this._self, this._then);

  final _LabOrderDetails _self;
  final $Res Function(_LabOrderDetails) _then;

/// Create a copy of LabOrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tests = null,Object? specimenType = freezed,Object? fasting = freezed,Object? clinicalNotes = freezed,Object? collectionTime = freezed,Object? labName = freezed,}) {
  return _then(_LabOrderDetails(
tests: null == tests ? _self._tests : tests // ignore: cast_nullable_to_non_nullable
as List<String>,specimenType: freezed == specimenType ? _self.specimenType : specimenType // ignore: cast_nullable_to_non_nullable
as String?,fasting: freezed == fasting ? _self.fasting : fasting // ignore: cast_nullable_to_non_nullable
as bool?,clinicalNotes: freezed == clinicalNotes ? _self.clinicalNotes : clinicalNotes // ignore: cast_nullable_to_non_nullable
as String?,collectionTime: freezed == collectionTime ? _self.collectionTime : collectionTime // ignore: cast_nullable_to_non_nullable
as DateTime?,labName: freezed == labName ? _self.labName : labName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ProcedureOrderDetails {

 String get procedureName; String? get procedureCode; String? get indication; String? get specialInstructions; String? get anesthesiaType; String? get location;
/// Create a copy of ProcedureOrderDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcedureOrderDetailsCopyWith<ProcedureOrderDetails> get copyWith => _$ProcedureOrderDetailsCopyWithImpl<ProcedureOrderDetails>(this as ProcedureOrderDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcedureOrderDetails&&(identical(other.procedureName, procedureName) || other.procedureName == procedureName)&&(identical(other.procedureCode, procedureCode) || other.procedureCode == procedureCode)&&(identical(other.indication, indication) || other.indication == indication)&&(identical(other.specialInstructions, specialInstructions) || other.specialInstructions == specialInstructions)&&(identical(other.anesthesiaType, anesthesiaType) || other.anesthesiaType == anesthesiaType)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,procedureName,procedureCode,indication,specialInstructions,anesthesiaType,location);

@override
String toString() {
  return 'ProcedureOrderDetails(procedureName: $procedureName, procedureCode: $procedureCode, indication: $indication, specialInstructions: $specialInstructions, anesthesiaType: $anesthesiaType, location: $location)';
}


}

/// @nodoc
abstract mixin class $ProcedureOrderDetailsCopyWith<$Res>  {
  factory $ProcedureOrderDetailsCopyWith(ProcedureOrderDetails value, $Res Function(ProcedureOrderDetails) _then) = _$ProcedureOrderDetailsCopyWithImpl;
@useResult
$Res call({
 String procedureName, String? procedureCode, String? indication, String? specialInstructions, String? anesthesiaType, String? location
});




}
/// @nodoc
class _$ProcedureOrderDetailsCopyWithImpl<$Res>
    implements $ProcedureOrderDetailsCopyWith<$Res> {
  _$ProcedureOrderDetailsCopyWithImpl(this._self, this._then);

  final ProcedureOrderDetails _self;
  final $Res Function(ProcedureOrderDetails) _then;

/// Create a copy of ProcedureOrderDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? procedureName = null,Object? procedureCode = freezed,Object? indication = freezed,Object? specialInstructions = freezed,Object? anesthesiaType = freezed,Object? location = freezed,}) {
  return _then(_self.copyWith(
procedureName: null == procedureName ? _self.procedureName : procedureName // ignore: cast_nullable_to_non_nullable
as String,procedureCode: freezed == procedureCode ? _self.procedureCode : procedureCode // ignore: cast_nullable_to_non_nullable
as String?,indication: freezed == indication ? _self.indication : indication // ignore: cast_nullable_to_non_nullable
as String?,specialInstructions: freezed == specialInstructions ? _self.specialInstructions : specialInstructions // ignore: cast_nullable_to_non_nullable
as String?,anesthesiaType: freezed == anesthesiaType ? _self.anesthesiaType : anesthesiaType // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProcedureOrderDetails].
extension ProcedureOrderDetailsPatterns on ProcedureOrderDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProcedureOrderDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcedureOrderDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProcedureOrderDetails value)  $default,){
final _that = this;
switch (_that) {
case _ProcedureOrderDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProcedureOrderDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ProcedureOrderDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String procedureName,  String? procedureCode,  String? indication,  String? specialInstructions,  String? anesthesiaType,  String? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcedureOrderDetails() when $default != null:
return $default(_that.procedureName,_that.procedureCode,_that.indication,_that.specialInstructions,_that.anesthesiaType,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String procedureName,  String? procedureCode,  String? indication,  String? specialInstructions,  String? anesthesiaType,  String? location)  $default,) {final _that = this;
switch (_that) {
case _ProcedureOrderDetails():
return $default(_that.procedureName,_that.procedureCode,_that.indication,_that.specialInstructions,_that.anesthesiaType,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String procedureName,  String? procedureCode,  String? indication,  String? specialInstructions,  String? anesthesiaType,  String? location)?  $default,) {final _that = this;
switch (_that) {
case _ProcedureOrderDetails() when $default != null:
return $default(_that.procedureName,_that.procedureCode,_that.indication,_that.specialInstructions,_that.anesthesiaType,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _ProcedureOrderDetails implements ProcedureOrderDetails {
  const _ProcedureOrderDetails({required this.procedureName, this.procedureCode, this.indication, this.specialInstructions, this.anesthesiaType, this.location});
  

@override final  String procedureName;
@override final  String? procedureCode;
@override final  String? indication;
@override final  String? specialInstructions;
@override final  String? anesthesiaType;
@override final  String? location;

/// Create a copy of ProcedureOrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcedureOrderDetailsCopyWith<_ProcedureOrderDetails> get copyWith => __$ProcedureOrderDetailsCopyWithImpl<_ProcedureOrderDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcedureOrderDetails&&(identical(other.procedureName, procedureName) || other.procedureName == procedureName)&&(identical(other.procedureCode, procedureCode) || other.procedureCode == procedureCode)&&(identical(other.indication, indication) || other.indication == indication)&&(identical(other.specialInstructions, specialInstructions) || other.specialInstructions == specialInstructions)&&(identical(other.anesthesiaType, anesthesiaType) || other.anesthesiaType == anesthesiaType)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,procedureName,procedureCode,indication,specialInstructions,anesthesiaType,location);

@override
String toString() {
  return 'ProcedureOrderDetails(procedureName: $procedureName, procedureCode: $procedureCode, indication: $indication, specialInstructions: $specialInstructions, anesthesiaType: $anesthesiaType, location: $location)';
}


}

/// @nodoc
abstract mixin class _$ProcedureOrderDetailsCopyWith<$Res> implements $ProcedureOrderDetailsCopyWith<$Res> {
  factory _$ProcedureOrderDetailsCopyWith(_ProcedureOrderDetails value, $Res Function(_ProcedureOrderDetails) _then) = __$ProcedureOrderDetailsCopyWithImpl;
@override @useResult
$Res call({
 String procedureName, String? procedureCode, String? indication, String? specialInstructions, String? anesthesiaType, String? location
});




}
/// @nodoc
class __$ProcedureOrderDetailsCopyWithImpl<$Res>
    implements _$ProcedureOrderDetailsCopyWith<$Res> {
  __$ProcedureOrderDetailsCopyWithImpl(this._self, this._then);

  final _ProcedureOrderDetails _self;
  final $Res Function(_ProcedureOrderDetails) _then;

/// Create a copy of ProcedureOrderDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? procedureName = null,Object? procedureCode = freezed,Object? indication = freezed,Object? specialInstructions = freezed,Object? anesthesiaType = freezed,Object? location = freezed,}) {
  return _then(_ProcedureOrderDetails(
procedureName: null == procedureName ? _self.procedureName : procedureName // ignore: cast_nullable_to_non_nullable
as String,procedureCode: freezed == procedureCode ? _self.procedureCode : procedureCode // ignore: cast_nullable_to_non_nullable
as String?,indication: freezed == indication ? _self.indication : indication // ignore: cast_nullable_to_non_nullable
as String?,specialInstructions: freezed == specialInstructions ? _self.specialInstructions : specialInstructions // ignore: cast_nullable_to_non_nullable
as String?,anesthesiaType: freezed == anesthesiaType ? _self.anesthesiaType : anesthesiaType // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$OrderTemplate {

 String get id; String get name; OrderType get orderType; String get description; String? get category; List<String>? get tags;// Template data (JSON string or structured data)
 Map<String, dynamic>? get templateData;
/// Create a copy of OrderTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderTemplateCopyWith<OrderTemplate> get copyWith => _$OrderTemplateCopyWithImpl<OrderTemplate>(this as OrderTemplate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.templateData, templateData));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,orderType,description,category,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(templateData));

@override
String toString() {
  return 'OrderTemplate(id: $id, name: $name, orderType: $orderType, description: $description, category: $category, tags: $tags, templateData: $templateData)';
}


}

/// @nodoc
abstract mixin class $OrderTemplateCopyWith<$Res>  {
  factory $OrderTemplateCopyWith(OrderTemplate value, $Res Function(OrderTemplate) _then) = _$OrderTemplateCopyWithImpl;
@useResult
$Res call({
 String id, String name, OrderType orderType, String description, String? category, List<String>? tags, Map<String, dynamic>? templateData
});




}
/// @nodoc
class _$OrderTemplateCopyWithImpl<$Res>
    implements $OrderTemplateCopyWith<$Res> {
  _$OrderTemplateCopyWithImpl(this._self, this._then);

  final OrderTemplate _self;
  final $Res Function(OrderTemplate) _then;

/// Create a copy of OrderTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? orderType = null,Object? description = null,Object? category = freezed,Object? tags = freezed,Object? templateData = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as OrderType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,templateData: freezed == templateData ? _self.templateData : templateData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderTemplate].
extension OrderTemplatePatterns on OrderTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderTemplate value)  $default,){
final _that = this;
switch (_that) {
case _OrderTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _OrderTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  OrderType orderType,  String description,  String? category,  List<String>? tags,  Map<String, dynamic>? templateData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderTemplate() when $default != null:
return $default(_that.id,_that.name,_that.orderType,_that.description,_that.category,_that.tags,_that.templateData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  OrderType orderType,  String description,  String? category,  List<String>? tags,  Map<String, dynamic>? templateData)  $default,) {final _that = this;
switch (_that) {
case _OrderTemplate():
return $default(_that.id,_that.name,_that.orderType,_that.description,_that.category,_that.tags,_that.templateData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  OrderType orderType,  String description,  String? category,  List<String>? tags,  Map<String, dynamic>? templateData)?  $default,) {final _that = this;
switch (_that) {
case _OrderTemplate() when $default != null:
return $default(_that.id,_that.name,_that.orderType,_that.description,_that.category,_that.tags,_that.templateData);case _:
  return null;

}
}

}

/// @nodoc


class _OrderTemplate implements OrderTemplate {
  const _OrderTemplate({required this.id, required this.name, required this.orderType, required this.description, this.category, final  List<String>? tags, final  Map<String, dynamic>? templateData}): _tags = tags,_templateData = templateData;
  

@override final  String id;
@override final  String name;
@override final  OrderType orderType;
@override final  String description;
@override final  String? category;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Template data (JSON string or structured data)
 final  Map<String, dynamic>? _templateData;
// Template data (JSON string or structured data)
@override Map<String, dynamic>? get templateData {
  final value = _templateData;
  if (value == null) return null;
  if (_templateData is EqualUnmodifiableMapView) return _templateData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of OrderTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderTemplateCopyWith<_OrderTemplate> get copyWith => __$OrderTemplateCopyWithImpl<_OrderTemplate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._templateData, _templateData));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,orderType,description,category,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_templateData));

@override
String toString() {
  return 'OrderTemplate(id: $id, name: $name, orderType: $orderType, description: $description, category: $category, tags: $tags, templateData: $templateData)';
}


}

/// @nodoc
abstract mixin class _$OrderTemplateCopyWith<$Res> implements $OrderTemplateCopyWith<$Res> {
  factory _$OrderTemplateCopyWith(_OrderTemplate value, $Res Function(_OrderTemplate) _then) = __$OrderTemplateCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, OrderType orderType, String description, String? category, List<String>? tags, Map<String, dynamic>? templateData
});




}
/// @nodoc
class __$OrderTemplateCopyWithImpl<$Res>
    implements _$OrderTemplateCopyWith<$Res> {
  __$OrderTemplateCopyWithImpl(this._self, this._then);

  final _OrderTemplate _self;
  final $Res Function(_OrderTemplate) _then;

/// Create a copy of OrderTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? orderType = null,Object? description = null,Object? category = freezed,Object? tags = freezed,Object? templateData = freezed,}) {
  return _then(_OrderTemplate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as OrderType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,templateData: freezed == templateData ? _self._templateData : templateData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
