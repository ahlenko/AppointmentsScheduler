// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MasterSchedule {

 WorkingHours get workingHours; int get bufferMinutes; List<ServiceModel> get services; List<AppointmentModel> get appointments;
/// Create a copy of MasterSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterScheduleCopyWith<MasterSchedule> get copyWith => _$MasterScheduleCopyWithImpl<MasterSchedule>(this as MasterSchedule, _$identity);

  /// Serializes this MasterSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterSchedule&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&(identical(other.bufferMinutes, bufferMinutes) || other.bufferMinutes == bufferMinutes)&&const DeepCollectionEquality().equals(other.services, services)&&const DeepCollectionEquality().equals(other.appointments, appointments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workingHours,bufferMinutes,const DeepCollectionEquality().hash(services),const DeepCollectionEquality().hash(appointments));

@override
String toString() {
  return 'MasterSchedule(workingHours: $workingHours, bufferMinutes: $bufferMinutes, services: $services, appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class $MasterScheduleCopyWith<$Res>  {
  factory $MasterScheduleCopyWith(MasterSchedule value, $Res Function(MasterSchedule) _then) = _$MasterScheduleCopyWithImpl;
@useResult
$Res call({
 WorkingHours workingHours, int bufferMinutes, List<ServiceModel> services, List<AppointmentModel> appointments
});


$WorkingHoursCopyWith<$Res> get workingHours;

}
/// @nodoc
class _$MasterScheduleCopyWithImpl<$Res>
    implements $MasterScheduleCopyWith<$Res> {
  _$MasterScheduleCopyWithImpl(this._self, this._then);

  final MasterSchedule _self;
  final $Res Function(MasterSchedule) _then;

/// Create a copy of MasterSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workingHours = null,Object? bufferMinutes = null,Object? services = null,Object? appointments = null,}) {
  return _then(_self.copyWith(
workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHours,bufferMinutes: null == bufferMinutes ? _self.bufferMinutes : bufferMinutes // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceModel>,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,
  ));
}
/// Create a copy of MasterSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHoursCopyWith<$Res> get workingHours {
  
  return $WorkingHoursCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}


/// Adds pattern-matching-related methods to [MasterSchedule].
extension MasterSchedulePatterns on MasterSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MasterSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MasterSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MasterSchedule value)  $default,){
final _that = this;
switch (_that) {
case _MasterSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MasterSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _MasterSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorkingHours workingHours,  int bufferMinutes,  List<ServiceModel> services,  List<AppointmentModel> appointments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MasterSchedule() when $default != null:
return $default(_that.workingHours,_that.bufferMinutes,_that.services,_that.appointments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorkingHours workingHours,  int bufferMinutes,  List<ServiceModel> services,  List<AppointmentModel> appointments)  $default,) {final _that = this;
switch (_that) {
case _MasterSchedule():
return $default(_that.workingHours,_that.bufferMinutes,_that.services,_that.appointments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorkingHours workingHours,  int bufferMinutes,  List<ServiceModel> services,  List<AppointmentModel> appointments)?  $default,) {final _that = this;
switch (_that) {
case _MasterSchedule() when $default != null:
return $default(_that.workingHours,_that.bufferMinutes,_that.services,_that.appointments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MasterSchedule implements MasterSchedule {
  const _MasterSchedule({required this.workingHours, required this.bufferMinutes, required final  List<ServiceModel> services, required final  List<AppointmentModel> appointments}): _services = services,_appointments = appointments;
  factory _MasterSchedule.fromJson(Map<String, dynamic> json) => _$MasterScheduleFromJson(json);

@override final  WorkingHours workingHours;
@override final  int bufferMinutes;
 final  List<ServiceModel> _services;
@override List<ServiceModel> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

 final  List<AppointmentModel> _appointments;
@override List<AppointmentModel> get appointments {
  if (_appointments is EqualUnmodifiableListView) return _appointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appointments);
}


/// Create a copy of MasterSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterScheduleCopyWith<_MasterSchedule> get copyWith => __$MasterScheduleCopyWithImpl<_MasterSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasterSchedule&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&(identical(other.bufferMinutes, bufferMinutes) || other.bufferMinutes == bufferMinutes)&&const DeepCollectionEquality().equals(other._services, _services)&&const DeepCollectionEquality().equals(other._appointments, _appointments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workingHours,bufferMinutes,const DeepCollectionEquality().hash(_services),const DeepCollectionEquality().hash(_appointments));

@override
String toString() {
  return 'MasterSchedule(workingHours: $workingHours, bufferMinutes: $bufferMinutes, services: $services, appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class _$MasterScheduleCopyWith<$Res> implements $MasterScheduleCopyWith<$Res> {
  factory _$MasterScheduleCopyWith(_MasterSchedule value, $Res Function(_MasterSchedule) _then) = __$MasterScheduleCopyWithImpl;
@override @useResult
$Res call({
 WorkingHours workingHours, int bufferMinutes, List<ServiceModel> services, List<AppointmentModel> appointments
});


@override $WorkingHoursCopyWith<$Res> get workingHours;

}
/// @nodoc
class __$MasterScheduleCopyWithImpl<$Res>
    implements _$MasterScheduleCopyWith<$Res> {
  __$MasterScheduleCopyWithImpl(this._self, this._then);

  final _MasterSchedule _self;
  final $Res Function(_MasterSchedule) _then;

/// Create a copy of MasterSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workingHours = null,Object? bufferMinutes = null,Object? services = null,Object? appointments = null,}) {
  return _then(_MasterSchedule(
workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHours,bufferMinutes: null == bufferMinutes ? _self.bufferMinutes : bufferMinutes // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceModel>,appointments: null == appointments ? _self._appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,
  ));
}

/// Create a copy of MasterSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHoursCopyWith<$Res> get workingHours {
  
  return $WorkingHoursCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}

// dart format on
