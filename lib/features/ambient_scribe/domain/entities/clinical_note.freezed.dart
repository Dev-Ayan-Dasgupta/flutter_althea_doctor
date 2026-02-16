// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinical_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClinicalNote {

 String get id; String get consultationId; String get patientId; String get patientName; String get doctorId; String get doctorName; DateTime get createdAt; DateTime? get updatedAt; NoteStatus get status; NoteFormat get format;// SOAP components
 String? get subjective; String? get objective; String? get assessment; String? get plan;// Extracted information
 List<String>? get symptoms; List<String>? get diagnoses; List<String>? get medications; List<String>? get procedures; List<String>? get followUpInstructions;// Clinical codes
 List<ClinicalCode>? get icdCodes; List<ClinicalCode>? get cptCodes;// Metadata
 String? get transcriptId; int? get wordCount; int? get confidence;// AI confidence score (0-100)
 bool? get reviewed; String? get reviewedBy; DateTime? get reviewedAt;
/// Create a copy of ClinicalNote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicalNoteCopyWith<ClinicalNote> get copyWith => _$ClinicalNoteCopyWithImpl<ClinicalNote>(this as ClinicalNote, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicalNote&&(identical(other.id, id) || other.id == id)&&(identical(other.consultationId, consultationId) || other.consultationId == consultationId)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.format, format) || other.format == format)&&(identical(other.subjective, subjective) || other.subjective == subjective)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.assessment, assessment) || other.assessment == assessment)&&(identical(other.plan, plan) || other.plan == plan)&&const DeepCollectionEquality().equals(other.symptoms, symptoms)&&const DeepCollectionEquality().equals(other.diagnoses, diagnoses)&&const DeepCollectionEquality().equals(other.medications, medications)&&const DeepCollectionEquality().equals(other.procedures, procedures)&&const DeepCollectionEquality().equals(other.followUpInstructions, followUpInstructions)&&const DeepCollectionEquality().equals(other.icdCodes, icdCodes)&&const DeepCollectionEquality().equals(other.cptCodes, cptCodes)&&(identical(other.transcriptId, transcriptId) || other.transcriptId == transcriptId)&&(identical(other.wordCount, wordCount) || other.wordCount == wordCount)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.reviewed, reviewed) || other.reviewed == reviewed)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,consultationId,patientId,patientName,doctorId,doctorName,createdAt,updatedAt,status,format,subjective,objective,assessment,plan,const DeepCollectionEquality().hash(symptoms),const DeepCollectionEquality().hash(diagnoses),const DeepCollectionEquality().hash(medications),const DeepCollectionEquality().hash(procedures),const DeepCollectionEquality().hash(followUpInstructions),const DeepCollectionEquality().hash(icdCodes),const DeepCollectionEquality().hash(cptCodes),transcriptId,wordCount,confidence,reviewed,reviewedBy,reviewedAt]);

@override
String toString() {
  return 'ClinicalNote(id: $id, consultationId: $consultationId, patientId: $patientId, patientName: $patientName, doctorId: $doctorId, doctorName: $doctorName, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, format: $format, subjective: $subjective, objective: $objective, assessment: $assessment, plan: $plan, symptoms: $symptoms, diagnoses: $diagnoses, medications: $medications, procedures: $procedures, followUpInstructions: $followUpInstructions, icdCodes: $icdCodes, cptCodes: $cptCodes, transcriptId: $transcriptId, wordCount: $wordCount, confidence: $confidence, reviewed: $reviewed, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt)';
}


}

/// @nodoc
abstract mixin class $ClinicalNoteCopyWith<$Res>  {
  factory $ClinicalNoteCopyWith(ClinicalNote value, $Res Function(ClinicalNote) _then) = _$ClinicalNoteCopyWithImpl;
@useResult
$Res call({
 String id, String consultationId, String patientId, String patientName, String doctorId, String doctorName, DateTime createdAt, DateTime? updatedAt, NoteStatus status, NoteFormat format, String? subjective, String? objective, String? assessment, String? plan, List<String>? symptoms, List<String>? diagnoses, List<String>? medications, List<String>? procedures, List<String>? followUpInstructions, List<ClinicalCode>? icdCodes, List<ClinicalCode>? cptCodes, String? transcriptId, int? wordCount, int? confidence, bool? reviewed, String? reviewedBy, DateTime? reviewedAt
});




}
/// @nodoc
class _$ClinicalNoteCopyWithImpl<$Res>
    implements $ClinicalNoteCopyWith<$Res> {
  _$ClinicalNoteCopyWithImpl(this._self, this._then);

  final ClinicalNote _self;
  final $Res Function(ClinicalNote) _then;

/// Create a copy of ClinicalNote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? consultationId = null,Object? patientId = null,Object? patientName = null,Object? doctorId = null,Object? doctorName = null,Object? createdAt = null,Object? updatedAt = freezed,Object? status = null,Object? format = null,Object? subjective = freezed,Object? objective = freezed,Object? assessment = freezed,Object? plan = freezed,Object? symptoms = freezed,Object? diagnoses = freezed,Object? medications = freezed,Object? procedures = freezed,Object? followUpInstructions = freezed,Object? icdCodes = freezed,Object? cptCodes = freezed,Object? transcriptId = freezed,Object? wordCount = freezed,Object? confidence = freezed,Object? reviewed = freezed,Object? reviewedBy = freezed,Object? reviewedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,consultationId: null == consultationId ? _self.consultationId : consultationId // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NoteStatus,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as NoteFormat,subjective: freezed == subjective ? _self.subjective : subjective // ignore: cast_nullable_to_non_nullable
as String?,objective: freezed == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as String?,assessment: freezed == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as String?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String?,symptoms: freezed == symptoms ? _self.symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<String>?,diagnoses: freezed == diagnoses ? _self.diagnoses : diagnoses // ignore: cast_nullable_to_non_nullable
as List<String>?,medications: freezed == medications ? _self.medications : medications // ignore: cast_nullable_to_non_nullable
as List<String>?,procedures: freezed == procedures ? _self.procedures : procedures // ignore: cast_nullable_to_non_nullable
as List<String>?,followUpInstructions: freezed == followUpInstructions ? _self.followUpInstructions : followUpInstructions // ignore: cast_nullable_to_non_nullable
as List<String>?,icdCodes: freezed == icdCodes ? _self.icdCodes : icdCodes // ignore: cast_nullable_to_non_nullable
as List<ClinicalCode>?,cptCodes: freezed == cptCodes ? _self.cptCodes : cptCodes // ignore: cast_nullable_to_non_nullable
as List<ClinicalCode>?,transcriptId: freezed == transcriptId ? _self.transcriptId : transcriptId // ignore: cast_nullable_to_non_nullable
as String?,wordCount: freezed == wordCount ? _self.wordCount : wordCount // ignore: cast_nullable_to_non_nullable
as int?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as int?,reviewed: freezed == reviewed ? _self.reviewed : reviewed // ignore: cast_nullable_to_non_nullable
as bool?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClinicalNote].
extension ClinicalNotePatterns on ClinicalNote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicalNote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicalNote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicalNote value)  $default,){
final _that = this;
switch (_that) {
case _ClinicalNote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicalNote value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicalNote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String consultationId,  String patientId,  String patientName,  String doctorId,  String doctorName,  DateTime createdAt,  DateTime? updatedAt,  NoteStatus status,  NoteFormat format,  String? subjective,  String? objective,  String? assessment,  String? plan,  List<String>? symptoms,  List<String>? diagnoses,  List<String>? medications,  List<String>? procedures,  List<String>? followUpInstructions,  List<ClinicalCode>? icdCodes,  List<ClinicalCode>? cptCodes,  String? transcriptId,  int? wordCount,  int? confidence,  bool? reviewed,  String? reviewedBy,  DateTime? reviewedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicalNote() when $default != null:
return $default(_that.id,_that.consultationId,_that.patientId,_that.patientName,_that.doctorId,_that.doctorName,_that.createdAt,_that.updatedAt,_that.status,_that.format,_that.subjective,_that.objective,_that.assessment,_that.plan,_that.symptoms,_that.diagnoses,_that.medications,_that.procedures,_that.followUpInstructions,_that.icdCodes,_that.cptCodes,_that.transcriptId,_that.wordCount,_that.confidence,_that.reviewed,_that.reviewedBy,_that.reviewedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String consultationId,  String patientId,  String patientName,  String doctorId,  String doctorName,  DateTime createdAt,  DateTime? updatedAt,  NoteStatus status,  NoteFormat format,  String? subjective,  String? objective,  String? assessment,  String? plan,  List<String>? symptoms,  List<String>? diagnoses,  List<String>? medications,  List<String>? procedures,  List<String>? followUpInstructions,  List<ClinicalCode>? icdCodes,  List<ClinicalCode>? cptCodes,  String? transcriptId,  int? wordCount,  int? confidence,  bool? reviewed,  String? reviewedBy,  DateTime? reviewedAt)  $default,) {final _that = this;
switch (_that) {
case _ClinicalNote():
return $default(_that.id,_that.consultationId,_that.patientId,_that.patientName,_that.doctorId,_that.doctorName,_that.createdAt,_that.updatedAt,_that.status,_that.format,_that.subjective,_that.objective,_that.assessment,_that.plan,_that.symptoms,_that.diagnoses,_that.medications,_that.procedures,_that.followUpInstructions,_that.icdCodes,_that.cptCodes,_that.transcriptId,_that.wordCount,_that.confidence,_that.reviewed,_that.reviewedBy,_that.reviewedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String consultationId,  String patientId,  String patientName,  String doctorId,  String doctorName,  DateTime createdAt,  DateTime? updatedAt,  NoteStatus status,  NoteFormat format,  String? subjective,  String? objective,  String? assessment,  String? plan,  List<String>? symptoms,  List<String>? diagnoses,  List<String>? medications,  List<String>? procedures,  List<String>? followUpInstructions,  List<ClinicalCode>? icdCodes,  List<ClinicalCode>? cptCodes,  String? transcriptId,  int? wordCount,  int? confidence,  bool? reviewed,  String? reviewedBy,  DateTime? reviewedAt)?  $default,) {final _that = this;
switch (_that) {
case _ClinicalNote() when $default != null:
return $default(_that.id,_that.consultationId,_that.patientId,_that.patientName,_that.doctorId,_that.doctorName,_that.createdAt,_that.updatedAt,_that.status,_that.format,_that.subjective,_that.objective,_that.assessment,_that.plan,_that.symptoms,_that.diagnoses,_that.medications,_that.procedures,_that.followUpInstructions,_that.icdCodes,_that.cptCodes,_that.transcriptId,_that.wordCount,_that.confidence,_that.reviewed,_that.reviewedBy,_that.reviewedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ClinicalNote extends ClinicalNote {
  const _ClinicalNote({required this.id, required this.consultationId, required this.patientId, required this.patientName, required this.doctorId, required this.doctorName, required this.createdAt, this.updatedAt, required this.status, required this.format, this.subjective, this.objective, this.assessment, this.plan, final  List<String>? symptoms, final  List<String>? diagnoses, final  List<String>? medications, final  List<String>? procedures, final  List<String>? followUpInstructions, final  List<ClinicalCode>? icdCodes, final  List<ClinicalCode>? cptCodes, this.transcriptId, this.wordCount, this.confidence, this.reviewed, this.reviewedBy, this.reviewedAt}): _symptoms = symptoms,_diagnoses = diagnoses,_medications = medications,_procedures = procedures,_followUpInstructions = followUpInstructions,_icdCodes = icdCodes,_cptCodes = cptCodes,super._();
  

@override final  String id;
@override final  String consultationId;
@override final  String patientId;
@override final  String patientName;
@override final  String doctorId;
@override final  String doctorName;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;
@override final  NoteStatus status;
@override final  NoteFormat format;
// SOAP components
@override final  String? subjective;
@override final  String? objective;
@override final  String? assessment;
@override final  String? plan;
// Extracted information
 final  List<String>? _symptoms;
// Extracted information
@override List<String>? get symptoms {
  final value = _symptoms;
  if (value == null) return null;
  if (_symptoms is EqualUnmodifiableListView) return _symptoms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _diagnoses;
@override List<String>? get diagnoses {
  final value = _diagnoses;
  if (value == null) return null;
  if (_diagnoses is EqualUnmodifiableListView) return _diagnoses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _medications;
@override List<String>? get medications {
  final value = _medications;
  if (value == null) return null;
  if (_medications is EqualUnmodifiableListView) return _medications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _procedures;
@override List<String>? get procedures {
  final value = _procedures;
  if (value == null) return null;
  if (_procedures is EqualUnmodifiableListView) return _procedures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _followUpInstructions;
@override List<String>? get followUpInstructions {
  final value = _followUpInstructions;
  if (value == null) return null;
  if (_followUpInstructions is EqualUnmodifiableListView) return _followUpInstructions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Clinical codes
 final  List<ClinicalCode>? _icdCodes;
// Clinical codes
@override List<ClinicalCode>? get icdCodes {
  final value = _icdCodes;
  if (value == null) return null;
  if (_icdCodes is EqualUnmodifiableListView) return _icdCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ClinicalCode>? _cptCodes;
@override List<ClinicalCode>? get cptCodes {
  final value = _cptCodes;
  if (value == null) return null;
  if (_cptCodes is EqualUnmodifiableListView) return _cptCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Metadata
@override final  String? transcriptId;
@override final  int? wordCount;
@override final  int? confidence;
// AI confidence score (0-100)
@override final  bool? reviewed;
@override final  String? reviewedBy;
@override final  DateTime? reviewedAt;

/// Create a copy of ClinicalNote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicalNoteCopyWith<_ClinicalNote> get copyWith => __$ClinicalNoteCopyWithImpl<_ClinicalNote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicalNote&&(identical(other.id, id) || other.id == id)&&(identical(other.consultationId, consultationId) || other.consultationId == consultationId)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.format, format) || other.format == format)&&(identical(other.subjective, subjective) || other.subjective == subjective)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.assessment, assessment) || other.assessment == assessment)&&(identical(other.plan, plan) || other.plan == plan)&&const DeepCollectionEquality().equals(other._symptoms, _symptoms)&&const DeepCollectionEquality().equals(other._diagnoses, _diagnoses)&&const DeepCollectionEquality().equals(other._medications, _medications)&&const DeepCollectionEquality().equals(other._procedures, _procedures)&&const DeepCollectionEquality().equals(other._followUpInstructions, _followUpInstructions)&&const DeepCollectionEquality().equals(other._icdCodes, _icdCodes)&&const DeepCollectionEquality().equals(other._cptCodes, _cptCodes)&&(identical(other.transcriptId, transcriptId) || other.transcriptId == transcriptId)&&(identical(other.wordCount, wordCount) || other.wordCount == wordCount)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.reviewed, reviewed) || other.reviewed == reviewed)&&(identical(other.reviewedBy, reviewedBy) || other.reviewedBy == reviewedBy)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,consultationId,patientId,patientName,doctorId,doctorName,createdAt,updatedAt,status,format,subjective,objective,assessment,plan,const DeepCollectionEquality().hash(_symptoms),const DeepCollectionEquality().hash(_diagnoses),const DeepCollectionEquality().hash(_medications),const DeepCollectionEquality().hash(_procedures),const DeepCollectionEquality().hash(_followUpInstructions),const DeepCollectionEquality().hash(_icdCodes),const DeepCollectionEquality().hash(_cptCodes),transcriptId,wordCount,confidence,reviewed,reviewedBy,reviewedAt]);

@override
String toString() {
  return 'ClinicalNote(id: $id, consultationId: $consultationId, patientId: $patientId, patientName: $patientName, doctorId: $doctorId, doctorName: $doctorName, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, format: $format, subjective: $subjective, objective: $objective, assessment: $assessment, plan: $plan, symptoms: $symptoms, diagnoses: $diagnoses, medications: $medications, procedures: $procedures, followUpInstructions: $followUpInstructions, icdCodes: $icdCodes, cptCodes: $cptCodes, transcriptId: $transcriptId, wordCount: $wordCount, confidence: $confidence, reviewed: $reviewed, reviewedBy: $reviewedBy, reviewedAt: $reviewedAt)';
}


}

/// @nodoc
abstract mixin class _$ClinicalNoteCopyWith<$Res> implements $ClinicalNoteCopyWith<$Res> {
  factory _$ClinicalNoteCopyWith(_ClinicalNote value, $Res Function(_ClinicalNote) _then) = __$ClinicalNoteCopyWithImpl;
@override @useResult
$Res call({
 String id, String consultationId, String patientId, String patientName, String doctorId, String doctorName, DateTime createdAt, DateTime? updatedAt, NoteStatus status, NoteFormat format, String? subjective, String? objective, String? assessment, String? plan, List<String>? symptoms, List<String>? diagnoses, List<String>? medications, List<String>? procedures, List<String>? followUpInstructions, List<ClinicalCode>? icdCodes, List<ClinicalCode>? cptCodes, String? transcriptId, int? wordCount, int? confidence, bool? reviewed, String? reviewedBy, DateTime? reviewedAt
});




}
/// @nodoc
class __$ClinicalNoteCopyWithImpl<$Res>
    implements _$ClinicalNoteCopyWith<$Res> {
  __$ClinicalNoteCopyWithImpl(this._self, this._then);

  final _ClinicalNote _self;
  final $Res Function(_ClinicalNote) _then;

/// Create a copy of ClinicalNote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? consultationId = null,Object? patientId = null,Object? patientName = null,Object? doctorId = null,Object? doctorName = null,Object? createdAt = null,Object? updatedAt = freezed,Object? status = null,Object? format = null,Object? subjective = freezed,Object? objective = freezed,Object? assessment = freezed,Object? plan = freezed,Object? symptoms = freezed,Object? diagnoses = freezed,Object? medications = freezed,Object? procedures = freezed,Object? followUpInstructions = freezed,Object? icdCodes = freezed,Object? cptCodes = freezed,Object? transcriptId = freezed,Object? wordCount = freezed,Object? confidence = freezed,Object? reviewed = freezed,Object? reviewedBy = freezed,Object? reviewedAt = freezed,}) {
  return _then(_ClinicalNote(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,consultationId: null == consultationId ? _self.consultationId : consultationId // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as String,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NoteStatus,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as NoteFormat,subjective: freezed == subjective ? _self.subjective : subjective // ignore: cast_nullable_to_non_nullable
as String?,objective: freezed == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as String?,assessment: freezed == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as String?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String?,symptoms: freezed == symptoms ? _self._symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<String>?,diagnoses: freezed == diagnoses ? _self._diagnoses : diagnoses // ignore: cast_nullable_to_non_nullable
as List<String>?,medications: freezed == medications ? _self._medications : medications // ignore: cast_nullable_to_non_nullable
as List<String>?,procedures: freezed == procedures ? _self._procedures : procedures // ignore: cast_nullable_to_non_nullable
as List<String>?,followUpInstructions: freezed == followUpInstructions ? _self._followUpInstructions : followUpInstructions // ignore: cast_nullable_to_non_nullable
as List<String>?,icdCodes: freezed == icdCodes ? _self._icdCodes : icdCodes // ignore: cast_nullable_to_non_nullable
as List<ClinicalCode>?,cptCodes: freezed == cptCodes ? _self._cptCodes : cptCodes // ignore: cast_nullable_to_non_nullable
as List<ClinicalCode>?,transcriptId: freezed == transcriptId ? _self.transcriptId : transcriptId // ignore: cast_nullable_to_non_nullable
as String?,wordCount: freezed == wordCount ? _self.wordCount : wordCount // ignore: cast_nullable_to_non_nullable
as int?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as int?,reviewed: freezed == reviewed ? _self.reviewed : reviewed // ignore: cast_nullable_to_non_nullable
as bool?,reviewedBy: freezed == reviewedBy ? _self.reviewedBy : reviewedBy // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$ClinicalCode {

 String get code; String get description; CodeType get type; int? get confidence;
/// Create a copy of ClinicalCode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicalCodeCopyWith<ClinicalCode> get copyWith => _$ClinicalCodeCopyWithImpl<ClinicalCode>(this as ClinicalCode, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicalCode&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}


@override
int get hashCode => Object.hash(runtimeType,code,description,type,confidence);

@override
String toString() {
  return 'ClinicalCode(code: $code, description: $description, type: $type, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $ClinicalCodeCopyWith<$Res>  {
  factory $ClinicalCodeCopyWith(ClinicalCode value, $Res Function(ClinicalCode) _then) = _$ClinicalCodeCopyWithImpl;
@useResult
$Res call({
 String code, String description, CodeType type, int? confidence
});




}
/// @nodoc
class _$ClinicalCodeCopyWithImpl<$Res>
    implements $ClinicalCodeCopyWith<$Res> {
  _$ClinicalCodeCopyWithImpl(this._self, this._then);

  final ClinicalCode _self;
  final $Res Function(ClinicalCode) _then;

/// Create a copy of ClinicalCode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? description = null,Object? type = null,Object? confidence = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CodeType,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClinicalCode].
extension ClinicalCodePatterns on ClinicalCode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicalCode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicalCode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicalCode value)  $default,){
final _that = this;
switch (_that) {
case _ClinicalCode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicalCode value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicalCode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String description,  CodeType type,  int? confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicalCode() when $default != null:
return $default(_that.code,_that.description,_that.type,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String description,  CodeType type,  int? confidence)  $default,) {final _that = this;
switch (_that) {
case _ClinicalCode():
return $default(_that.code,_that.description,_that.type,_that.confidence);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String description,  CodeType type,  int? confidence)?  $default,) {final _that = this;
switch (_that) {
case _ClinicalCode() when $default != null:
return $default(_that.code,_that.description,_that.type,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc


class _ClinicalCode implements ClinicalCode {
  const _ClinicalCode({required this.code, required this.description, required this.type, this.confidence});
  

@override final  String code;
@override final  String description;
@override final  CodeType type;
@override final  int? confidence;

/// Create a copy of ClinicalCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicalCodeCopyWith<_ClinicalCode> get copyWith => __$ClinicalCodeCopyWithImpl<_ClinicalCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicalCode&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}


@override
int get hashCode => Object.hash(runtimeType,code,description,type,confidence);

@override
String toString() {
  return 'ClinicalCode(code: $code, description: $description, type: $type, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$ClinicalCodeCopyWith<$Res> implements $ClinicalCodeCopyWith<$Res> {
  factory _$ClinicalCodeCopyWith(_ClinicalCode value, $Res Function(_ClinicalCode) _then) = __$ClinicalCodeCopyWithImpl;
@override @useResult
$Res call({
 String code, String description, CodeType type, int? confidence
});




}
/// @nodoc
class __$ClinicalCodeCopyWithImpl<$Res>
    implements _$ClinicalCodeCopyWith<$Res> {
  __$ClinicalCodeCopyWithImpl(this._self, this._then);

  final _ClinicalCode _self;
  final $Res Function(_ClinicalCode) _then;

/// Create a copy of ClinicalCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? description = null,Object? type = null,Object? confidence = freezed,}) {
  return _then(_ClinicalCode(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CodeType,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$TranscriptSegment {

 String get id; String get speaker;// 'doctor' or 'patient'
 String get text; double get startTime;// seconds
 double get endTime;// seconds
 int? get confidence;// 0-100
 List<String>? get keywords;
/// Create a copy of TranscriptSegment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranscriptSegmentCopyWith<TranscriptSegment> get copyWith => _$TranscriptSegmentCopyWithImpl<TranscriptSegment>(this as TranscriptSegment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranscriptSegment&&(identical(other.id, id) || other.id == id)&&(identical(other.speaker, speaker) || other.speaker == speaker)&&(identical(other.text, text) || other.text == text)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&const DeepCollectionEquality().equals(other.keywords, keywords));
}


@override
int get hashCode => Object.hash(runtimeType,id,speaker,text,startTime,endTime,confidence,const DeepCollectionEquality().hash(keywords));

@override
String toString() {
  return 'TranscriptSegment(id: $id, speaker: $speaker, text: $text, startTime: $startTime, endTime: $endTime, confidence: $confidence, keywords: $keywords)';
}


}

/// @nodoc
abstract mixin class $TranscriptSegmentCopyWith<$Res>  {
  factory $TranscriptSegmentCopyWith(TranscriptSegment value, $Res Function(TranscriptSegment) _then) = _$TranscriptSegmentCopyWithImpl;
@useResult
$Res call({
 String id, String speaker, String text, double startTime, double endTime, int? confidence, List<String>? keywords
});




}
/// @nodoc
class _$TranscriptSegmentCopyWithImpl<$Res>
    implements $TranscriptSegmentCopyWith<$Res> {
  _$TranscriptSegmentCopyWithImpl(this._self, this._then);

  final TranscriptSegment _self;
  final $Res Function(TranscriptSegment) _then;

/// Create a copy of TranscriptSegment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? speaker = null,Object? text = null,Object? startTime = null,Object? endTime = null,Object? confidence = freezed,Object? keywords = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,speaker: null == speaker ? _self.speaker : speaker // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as double,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as double,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as int?,keywords: freezed == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TranscriptSegment].
extension TranscriptSegmentPatterns on TranscriptSegment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranscriptSegment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranscriptSegment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranscriptSegment value)  $default,){
final _that = this;
switch (_that) {
case _TranscriptSegment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranscriptSegment value)?  $default,){
final _that = this;
switch (_that) {
case _TranscriptSegment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String speaker,  String text,  double startTime,  double endTime,  int? confidence,  List<String>? keywords)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranscriptSegment() when $default != null:
return $default(_that.id,_that.speaker,_that.text,_that.startTime,_that.endTime,_that.confidence,_that.keywords);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String speaker,  String text,  double startTime,  double endTime,  int? confidence,  List<String>? keywords)  $default,) {final _that = this;
switch (_that) {
case _TranscriptSegment():
return $default(_that.id,_that.speaker,_that.text,_that.startTime,_that.endTime,_that.confidence,_that.keywords);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String speaker,  String text,  double startTime,  double endTime,  int? confidence,  List<String>? keywords)?  $default,) {final _that = this;
switch (_that) {
case _TranscriptSegment() when $default != null:
return $default(_that.id,_that.speaker,_that.text,_that.startTime,_that.endTime,_that.confidence,_that.keywords);case _:
  return null;

}
}

}

/// @nodoc


class _TranscriptSegment implements TranscriptSegment {
  const _TranscriptSegment({required this.id, required this.speaker, required this.text, required this.startTime, required this.endTime, this.confidence, final  List<String>? keywords}): _keywords = keywords;
  

@override final  String id;
@override final  String speaker;
// 'doctor' or 'patient'
@override final  String text;
@override final  double startTime;
// seconds
@override final  double endTime;
// seconds
@override final  int? confidence;
// 0-100
 final  List<String>? _keywords;
// 0-100
@override List<String>? get keywords {
  final value = _keywords;
  if (value == null) return null;
  if (_keywords is EqualUnmodifiableListView) return _keywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TranscriptSegment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranscriptSegmentCopyWith<_TranscriptSegment> get copyWith => __$TranscriptSegmentCopyWithImpl<_TranscriptSegment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranscriptSegment&&(identical(other.id, id) || other.id == id)&&(identical(other.speaker, speaker) || other.speaker == speaker)&&(identical(other.text, text) || other.text == text)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&const DeepCollectionEquality().equals(other._keywords, _keywords));
}


@override
int get hashCode => Object.hash(runtimeType,id,speaker,text,startTime,endTime,confidence,const DeepCollectionEquality().hash(_keywords));

@override
String toString() {
  return 'TranscriptSegment(id: $id, speaker: $speaker, text: $text, startTime: $startTime, endTime: $endTime, confidence: $confidence, keywords: $keywords)';
}


}

/// @nodoc
abstract mixin class _$TranscriptSegmentCopyWith<$Res> implements $TranscriptSegmentCopyWith<$Res> {
  factory _$TranscriptSegmentCopyWith(_TranscriptSegment value, $Res Function(_TranscriptSegment) _then) = __$TranscriptSegmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String speaker, String text, double startTime, double endTime, int? confidence, List<String>? keywords
});




}
/// @nodoc
class __$TranscriptSegmentCopyWithImpl<$Res>
    implements _$TranscriptSegmentCopyWith<$Res> {
  __$TranscriptSegmentCopyWithImpl(this._self, this._then);

  final _TranscriptSegment _self;
  final $Res Function(_TranscriptSegment) _then;

/// Create a copy of TranscriptSegment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? speaker = null,Object? text = null,Object? startTime = null,Object? endTime = null,Object? confidence = freezed,Object? keywords = freezed,}) {
  return _then(_TranscriptSegment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,speaker: null == speaker ? _self.speaker : speaker // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as double,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as double,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as int?,keywords: freezed == keywords ? _self._keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc
mixin _$Transcript {

 String get id; String get consultationId; DateTime get createdAt; List<TranscriptSegment> get segments; int get totalDuration;// seconds
 String? get language; int? get overallConfidence;
/// Create a copy of Transcript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranscriptCopyWith<Transcript> get copyWith => _$TranscriptCopyWithImpl<Transcript>(this as Transcript, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transcript&&(identical(other.id, id) || other.id == id)&&(identical(other.consultationId, consultationId) || other.consultationId == consultationId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.segments, segments)&&(identical(other.totalDuration, totalDuration) || other.totalDuration == totalDuration)&&(identical(other.language, language) || other.language == language)&&(identical(other.overallConfidence, overallConfidence) || other.overallConfidence == overallConfidence));
}


@override
int get hashCode => Object.hash(runtimeType,id,consultationId,createdAt,const DeepCollectionEquality().hash(segments),totalDuration,language,overallConfidence);

@override
String toString() {
  return 'Transcript(id: $id, consultationId: $consultationId, createdAt: $createdAt, segments: $segments, totalDuration: $totalDuration, language: $language, overallConfidence: $overallConfidence)';
}


}

/// @nodoc
abstract mixin class $TranscriptCopyWith<$Res>  {
  factory $TranscriptCopyWith(Transcript value, $Res Function(Transcript) _then) = _$TranscriptCopyWithImpl;
@useResult
$Res call({
 String id, String consultationId, DateTime createdAt, List<TranscriptSegment> segments, int totalDuration, String? language, int? overallConfidence
});




}
/// @nodoc
class _$TranscriptCopyWithImpl<$Res>
    implements $TranscriptCopyWith<$Res> {
  _$TranscriptCopyWithImpl(this._self, this._then);

  final Transcript _self;
  final $Res Function(Transcript) _then;

/// Create a copy of Transcript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? consultationId = null,Object? createdAt = null,Object? segments = null,Object? totalDuration = null,Object? language = freezed,Object? overallConfidence = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,consultationId: null == consultationId ? _self.consultationId : consultationId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,segments: null == segments ? _self.segments : segments // ignore: cast_nullable_to_non_nullable
as List<TranscriptSegment>,totalDuration: null == totalDuration ? _self.totalDuration : totalDuration // ignore: cast_nullable_to_non_nullable
as int,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,overallConfidence: freezed == overallConfidence ? _self.overallConfidence : overallConfidence // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Transcript].
extension TranscriptPatterns on Transcript {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transcript value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transcript() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transcript value)  $default,){
final _that = this;
switch (_that) {
case _Transcript():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transcript value)?  $default,){
final _that = this;
switch (_that) {
case _Transcript() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String consultationId,  DateTime createdAt,  List<TranscriptSegment> segments,  int totalDuration,  String? language,  int? overallConfidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transcript() when $default != null:
return $default(_that.id,_that.consultationId,_that.createdAt,_that.segments,_that.totalDuration,_that.language,_that.overallConfidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String consultationId,  DateTime createdAt,  List<TranscriptSegment> segments,  int totalDuration,  String? language,  int? overallConfidence)  $default,) {final _that = this;
switch (_that) {
case _Transcript():
return $default(_that.id,_that.consultationId,_that.createdAt,_that.segments,_that.totalDuration,_that.language,_that.overallConfidence);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String consultationId,  DateTime createdAt,  List<TranscriptSegment> segments,  int totalDuration,  String? language,  int? overallConfidence)?  $default,) {final _that = this;
switch (_that) {
case _Transcript() when $default != null:
return $default(_that.id,_that.consultationId,_that.createdAt,_that.segments,_that.totalDuration,_that.language,_that.overallConfidence);case _:
  return null;

}
}

}

/// @nodoc


class _Transcript extends Transcript {
  const _Transcript({required this.id, required this.consultationId, required this.createdAt, required final  List<TranscriptSegment> segments, required this.totalDuration, this.language, this.overallConfidence}): _segments = segments,super._();
  

@override final  String id;
@override final  String consultationId;
@override final  DateTime createdAt;
 final  List<TranscriptSegment> _segments;
@override List<TranscriptSegment> get segments {
  if (_segments is EqualUnmodifiableListView) return _segments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_segments);
}

@override final  int totalDuration;
// seconds
@override final  String? language;
@override final  int? overallConfidence;

/// Create a copy of Transcript
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranscriptCopyWith<_Transcript> get copyWith => __$TranscriptCopyWithImpl<_Transcript>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transcript&&(identical(other.id, id) || other.id == id)&&(identical(other.consultationId, consultationId) || other.consultationId == consultationId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._segments, _segments)&&(identical(other.totalDuration, totalDuration) || other.totalDuration == totalDuration)&&(identical(other.language, language) || other.language == language)&&(identical(other.overallConfidence, overallConfidence) || other.overallConfidence == overallConfidence));
}


@override
int get hashCode => Object.hash(runtimeType,id,consultationId,createdAt,const DeepCollectionEquality().hash(_segments),totalDuration,language,overallConfidence);

@override
String toString() {
  return 'Transcript(id: $id, consultationId: $consultationId, createdAt: $createdAt, segments: $segments, totalDuration: $totalDuration, language: $language, overallConfidence: $overallConfidence)';
}


}

/// @nodoc
abstract mixin class _$TranscriptCopyWith<$Res> implements $TranscriptCopyWith<$Res> {
  factory _$TranscriptCopyWith(_Transcript value, $Res Function(_Transcript) _then) = __$TranscriptCopyWithImpl;
@override @useResult
$Res call({
 String id, String consultationId, DateTime createdAt, List<TranscriptSegment> segments, int totalDuration, String? language, int? overallConfidence
});




}
/// @nodoc
class __$TranscriptCopyWithImpl<$Res>
    implements _$TranscriptCopyWith<$Res> {
  __$TranscriptCopyWithImpl(this._self, this._then);

  final _Transcript _self;
  final $Res Function(_Transcript) _then;

/// Create a copy of Transcript
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? consultationId = null,Object? createdAt = null,Object? segments = null,Object? totalDuration = null,Object? language = freezed,Object? overallConfidence = freezed,}) {
  return _then(_Transcript(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,consultationId: null == consultationId ? _self.consultationId : consultationId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,segments: null == segments ? _self._segments : segments // ignore: cast_nullable_to_non_nullable
as List<TranscriptSegment>,totalDuration: null == totalDuration ? _self.totalDuration : totalDuration // ignore: cast_nullable_to_non_nullable
as int,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,overallConfidence: freezed == overallConfidence ? _self.overallConfidence : overallConfidence // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$NoteTemplate {

 String get id; String get name; String get description; NoteFormat get format; String? get subjectiveTemplate; String? get objectiveTemplate; String? get assessmentTemplate; String? get planTemplate; List<String>? get defaultSections; bool? get isDefault;
/// Create a copy of NoteTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteTemplateCopyWith<NoteTemplate> get copyWith => _$NoteTemplateCopyWithImpl<NoteTemplate>(this as NoteTemplate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.format, format) || other.format == format)&&(identical(other.subjectiveTemplate, subjectiveTemplate) || other.subjectiveTemplate == subjectiveTemplate)&&(identical(other.objectiveTemplate, objectiveTemplate) || other.objectiveTemplate == objectiveTemplate)&&(identical(other.assessmentTemplate, assessmentTemplate) || other.assessmentTemplate == assessmentTemplate)&&(identical(other.planTemplate, planTemplate) || other.planTemplate == planTemplate)&&const DeepCollectionEquality().equals(other.defaultSections, defaultSections)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,format,subjectiveTemplate,objectiveTemplate,assessmentTemplate,planTemplate,const DeepCollectionEquality().hash(defaultSections),isDefault);

@override
String toString() {
  return 'NoteTemplate(id: $id, name: $name, description: $description, format: $format, subjectiveTemplate: $subjectiveTemplate, objectiveTemplate: $objectiveTemplate, assessmentTemplate: $assessmentTemplate, planTemplate: $planTemplate, defaultSections: $defaultSections, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $NoteTemplateCopyWith<$Res>  {
  factory $NoteTemplateCopyWith(NoteTemplate value, $Res Function(NoteTemplate) _then) = _$NoteTemplateCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, NoteFormat format, String? subjectiveTemplate, String? objectiveTemplate, String? assessmentTemplate, String? planTemplate, List<String>? defaultSections, bool? isDefault
});




}
/// @nodoc
class _$NoteTemplateCopyWithImpl<$Res>
    implements $NoteTemplateCopyWith<$Res> {
  _$NoteTemplateCopyWithImpl(this._self, this._then);

  final NoteTemplate _self;
  final $Res Function(NoteTemplate) _then;

/// Create a copy of NoteTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? format = null,Object? subjectiveTemplate = freezed,Object? objectiveTemplate = freezed,Object? assessmentTemplate = freezed,Object? planTemplate = freezed,Object? defaultSections = freezed,Object? isDefault = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as NoteFormat,subjectiveTemplate: freezed == subjectiveTemplate ? _self.subjectiveTemplate : subjectiveTemplate // ignore: cast_nullable_to_non_nullable
as String?,objectiveTemplate: freezed == objectiveTemplate ? _self.objectiveTemplate : objectiveTemplate // ignore: cast_nullable_to_non_nullable
as String?,assessmentTemplate: freezed == assessmentTemplate ? _self.assessmentTemplate : assessmentTemplate // ignore: cast_nullable_to_non_nullable
as String?,planTemplate: freezed == planTemplate ? _self.planTemplate : planTemplate // ignore: cast_nullable_to_non_nullable
as String?,defaultSections: freezed == defaultSections ? _self.defaultSections : defaultSections // ignore: cast_nullable_to_non_nullable
as List<String>?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [NoteTemplate].
extension NoteTemplatePatterns on NoteTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoteTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoteTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoteTemplate value)  $default,){
final _that = this;
switch (_that) {
case _NoteTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoteTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _NoteTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  NoteFormat format,  String? subjectiveTemplate,  String? objectiveTemplate,  String? assessmentTemplate,  String? planTemplate,  List<String>? defaultSections,  bool? isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoteTemplate() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.format,_that.subjectiveTemplate,_that.objectiveTemplate,_that.assessmentTemplate,_that.planTemplate,_that.defaultSections,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  NoteFormat format,  String? subjectiveTemplate,  String? objectiveTemplate,  String? assessmentTemplate,  String? planTemplate,  List<String>? defaultSections,  bool? isDefault)  $default,) {final _that = this;
switch (_that) {
case _NoteTemplate():
return $default(_that.id,_that.name,_that.description,_that.format,_that.subjectiveTemplate,_that.objectiveTemplate,_that.assessmentTemplate,_that.planTemplate,_that.defaultSections,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  NoteFormat format,  String? subjectiveTemplate,  String? objectiveTemplate,  String? assessmentTemplate,  String? planTemplate,  List<String>? defaultSections,  bool? isDefault)?  $default,) {final _that = this;
switch (_that) {
case _NoteTemplate() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.format,_that.subjectiveTemplate,_that.objectiveTemplate,_that.assessmentTemplate,_that.planTemplate,_that.defaultSections,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _NoteTemplate implements NoteTemplate {
  const _NoteTemplate({required this.id, required this.name, required this.description, required this.format, this.subjectiveTemplate, this.objectiveTemplate, this.assessmentTemplate, this.planTemplate, final  List<String>? defaultSections, this.isDefault}): _defaultSections = defaultSections;
  

@override final  String id;
@override final  String name;
@override final  String description;
@override final  NoteFormat format;
@override final  String? subjectiveTemplate;
@override final  String? objectiveTemplate;
@override final  String? assessmentTemplate;
@override final  String? planTemplate;
 final  List<String>? _defaultSections;
@override List<String>? get defaultSections {
  final value = _defaultSections;
  if (value == null) return null;
  if (_defaultSections is EqualUnmodifiableListView) return _defaultSections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? isDefault;

/// Create a copy of NoteTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteTemplateCopyWith<_NoteTemplate> get copyWith => __$NoteTemplateCopyWithImpl<_NoteTemplate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.format, format) || other.format == format)&&(identical(other.subjectiveTemplate, subjectiveTemplate) || other.subjectiveTemplate == subjectiveTemplate)&&(identical(other.objectiveTemplate, objectiveTemplate) || other.objectiveTemplate == objectiveTemplate)&&(identical(other.assessmentTemplate, assessmentTemplate) || other.assessmentTemplate == assessmentTemplate)&&(identical(other.planTemplate, planTemplate) || other.planTemplate == planTemplate)&&const DeepCollectionEquality().equals(other._defaultSections, _defaultSections)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,format,subjectiveTemplate,objectiveTemplate,assessmentTemplate,planTemplate,const DeepCollectionEquality().hash(_defaultSections),isDefault);

@override
String toString() {
  return 'NoteTemplate(id: $id, name: $name, description: $description, format: $format, subjectiveTemplate: $subjectiveTemplate, objectiveTemplate: $objectiveTemplate, assessmentTemplate: $assessmentTemplate, planTemplate: $planTemplate, defaultSections: $defaultSections, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$NoteTemplateCopyWith<$Res> implements $NoteTemplateCopyWith<$Res> {
  factory _$NoteTemplateCopyWith(_NoteTemplate value, $Res Function(_NoteTemplate) _then) = __$NoteTemplateCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, NoteFormat format, String? subjectiveTemplate, String? objectiveTemplate, String? assessmentTemplate, String? planTemplate, List<String>? defaultSections, bool? isDefault
});




}
/// @nodoc
class __$NoteTemplateCopyWithImpl<$Res>
    implements _$NoteTemplateCopyWith<$Res> {
  __$NoteTemplateCopyWithImpl(this._self, this._then);

  final _NoteTemplate _self;
  final $Res Function(_NoteTemplate) _then;

/// Create a copy of NoteTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? format = null,Object? subjectiveTemplate = freezed,Object? objectiveTemplate = freezed,Object? assessmentTemplate = freezed,Object? planTemplate = freezed,Object? defaultSections = freezed,Object? isDefault = freezed,}) {
  return _then(_NoteTemplate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as NoteFormat,subjectiveTemplate: freezed == subjectiveTemplate ? _self.subjectiveTemplate : subjectiveTemplate // ignore: cast_nullable_to_non_nullable
as String?,objectiveTemplate: freezed == objectiveTemplate ? _self.objectiveTemplate : objectiveTemplate // ignore: cast_nullable_to_non_nullable
as String?,assessmentTemplate: freezed == assessmentTemplate ? _self.assessmentTemplate : assessmentTemplate // ignore: cast_nullable_to_non_nullable
as String?,planTemplate: freezed == planTemplate ? _self.planTemplate : planTemplate // ignore: cast_nullable_to_non_nullable
as String?,defaultSections: freezed == defaultSections ? _self._defaultSections : defaultSections // ignore: cast_nullable_to_non_nullable
as List<String>?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
