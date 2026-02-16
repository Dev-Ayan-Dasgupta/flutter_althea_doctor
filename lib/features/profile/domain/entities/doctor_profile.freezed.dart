// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DoctorProfile {

 String get id; String get name; String get email; String? get phone; String? get avatarUrl; String? get specialization; String? get licenseNumber; String? get bio; List<String>? get languages; String? get address; String? get city; String? get state; String? get pincode; DateTime? get dateOfBirth; String? get gender; int? get yearsOfExperience;
/// Create a copy of DoctorProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorProfileCopyWith<DoctorProfile> get copyWith => _$DoctorProfileCopyWithImpl<DoctorProfile>(this as DoctorProfile, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.yearsOfExperience, yearsOfExperience) || other.yearsOfExperience == yearsOfExperience));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,avatarUrl,specialization,licenseNumber,bio,const DeepCollectionEquality().hash(languages),address,city,state,pincode,dateOfBirth,gender,yearsOfExperience);

@override
String toString() {
  return 'DoctorProfile(id: $id, name: $name, email: $email, phone: $phone, avatarUrl: $avatarUrl, specialization: $specialization, licenseNumber: $licenseNumber, bio: $bio, languages: $languages, address: $address, city: $city, state: $state, pincode: $pincode, dateOfBirth: $dateOfBirth, gender: $gender, yearsOfExperience: $yearsOfExperience)';
}


}

/// @nodoc
abstract mixin class $DoctorProfileCopyWith<$Res>  {
  factory $DoctorProfileCopyWith(DoctorProfile value, $Res Function(DoctorProfile) _then) = _$DoctorProfileCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, String? phone, String? avatarUrl, String? specialization, String? licenseNumber, String? bio, List<String>? languages, String? address, String? city, String? state, String? pincode, DateTime? dateOfBirth, String? gender, int? yearsOfExperience
});




}
/// @nodoc
class _$DoctorProfileCopyWithImpl<$Res>
    implements $DoctorProfileCopyWith<$Res> {
  _$DoctorProfileCopyWithImpl(this._self, this._then);

  final DoctorProfile _self;
  final $Res Function(DoctorProfile) _then;

/// Create a copy of DoctorProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? avatarUrl = freezed,Object? specialization = freezed,Object? licenseNumber = freezed,Object? bio = freezed,Object? languages = freezed,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? pincode = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? yearsOfExperience = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String?,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,languages: freezed == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,yearsOfExperience: freezed == yearsOfExperience ? _self.yearsOfExperience : yearsOfExperience // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DoctorProfile].
extension DoctorProfilePatterns on DoctorProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoctorProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoctorProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoctorProfile value)  $default,){
final _that = this;
switch (_that) {
case _DoctorProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoctorProfile value)?  $default,){
final _that = this;
switch (_that) {
case _DoctorProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String? phone,  String? avatarUrl,  String? specialization,  String? licenseNumber,  String? bio,  List<String>? languages,  String? address,  String? city,  String? state,  String? pincode,  DateTime? dateOfBirth,  String? gender,  int? yearsOfExperience)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorProfile() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatarUrl,_that.specialization,_that.licenseNumber,_that.bio,_that.languages,_that.address,_that.city,_that.state,_that.pincode,_that.dateOfBirth,_that.gender,_that.yearsOfExperience);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String? phone,  String? avatarUrl,  String? specialization,  String? licenseNumber,  String? bio,  List<String>? languages,  String? address,  String? city,  String? state,  String? pincode,  DateTime? dateOfBirth,  String? gender,  int? yearsOfExperience)  $default,) {final _that = this;
switch (_that) {
case _DoctorProfile():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatarUrl,_that.specialization,_that.licenseNumber,_that.bio,_that.languages,_that.address,_that.city,_that.state,_that.pincode,_that.dateOfBirth,_that.gender,_that.yearsOfExperience);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  String? phone,  String? avatarUrl,  String? specialization,  String? licenseNumber,  String? bio,  List<String>? languages,  String? address,  String? city,  String? state,  String? pincode,  DateTime? dateOfBirth,  String? gender,  int? yearsOfExperience)?  $default,) {final _that = this;
switch (_that) {
case _DoctorProfile() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatarUrl,_that.specialization,_that.licenseNumber,_that.bio,_that.languages,_that.address,_that.city,_that.state,_that.pincode,_that.dateOfBirth,_that.gender,_that.yearsOfExperience);case _:
  return null;

}
}

}

/// @nodoc


class _DoctorProfile extends DoctorProfile {
  const _DoctorProfile({required this.id, required this.name, required this.email, this.phone, this.avatarUrl, this.specialization, this.licenseNumber, this.bio, final  List<String>? languages, this.address, this.city, this.state, this.pincode, this.dateOfBirth, this.gender, this.yearsOfExperience}): _languages = languages,super._();
  

@override final  String id;
@override final  String name;
@override final  String email;
@override final  String? phone;
@override final  String? avatarUrl;
@override final  String? specialization;
@override final  String? licenseNumber;
@override final  String? bio;
 final  List<String>? _languages;
@override List<String>? get languages {
  final value = _languages;
  if (value == null) return null;
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? address;
@override final  String? city;
@override final  String? state;
@override final  String? pincode;
@override final  DateTime? dateOfBirth;
@override final  String? gender;
@override final  int? yearsOfExperience;

/// Create a copy of DoctorProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorProfileCopyWith<_DoctorProfile> get copyWith => __$DoctorProfileCopyWithImpl<_DoctorProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.yearsOfExperience, yearsOfExperience) || other.yearsOfExperience == yearsOfExperience));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,avatarUrl,specialization,licenseNumber,bio,const DeepCollectionEquality().hash(_languages),address,city,state,pincode,dateOfBirth,gender,yearsOfExperience);

@override
String toString() {
  return 'DoctorProfile(id: $id, name: $name, email: $email, phone: $phone, avatarUrl: $avatarUrl, specialization: $specialization, licenseNumber: $licenseNumber, bio: $bio, languages: $languages, address: $address, city: $city, state: $state, pincode: $pincode, dateOfBirth: $dateOfBirth, gender: $gender, yearsOfExperience: $yearsOfExperience)';
}


}

/// @nodoc
abstract mixin class _$DoctorProfileCopyWith<$Res> implements $DoctorProfileCopyWith<$Res> {
  factory _$DoctorProfileCopyWith(_DoctorProfile value, $Res Function(_DoctorProfile) _then) = __$DoctorProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, String? phone, String? avatarUrl, String? specialization, String? licenseNumber, String? bio, List<String>? languages, String? address, String? city, String? state, String? pincode, DateTime? dateOfBirth, String? gender, int? yearsOfExperience
});




}
/// @nodoc
class __$DoctorProfileCopyWithImpl<$Res>
    implements _$DoctorProfileCopyWith<$Res> {
  __$DoctorProfileCopyWithImpl(this._self, this._then);

  final _DoctorProfile _self;
  final $Res Function(_DoctorProfile) _then;

/// Create a copy of DoctorProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? avatarUrl = freezed,Object? specialization = freezed,Object? licenseNumber = freezed,Object? bio = freezed,Object? languages = freezed,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? pincode = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? yearsOfExperience = freezed,}) {
  return _then(_DoctorProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String?,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,languages: freezed == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,yearsOfExperience: freezed == yearsOfExperience ? _self.yearsOfExperience : yearsOfExperience // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
