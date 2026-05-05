// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_appointment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAppointmentState {

 bool get loading; MasterSchedule? get masterSchedule; CreateAppointment? get createdAppointment; List<SlotModel> get masterSlots; String? get clientNameError; String? get serviceError; String? get dateError; String? get timeError;
/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAppointmentStateCopyWith<CreateAppointmentState> get copyWith => _$CreateAppointmentStateCopyWithImpl<CreateAppointmentState>(this as CreateAppointmentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAppointmentState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.masterSchedule, masterSchedule) || other.masterSchedule == masterSchedule)&&(identical(other.createdAppointment, createdAppointment) || other.createdAppointment == createdAppointment)&&const DeepCollectionEquality().equals(other.masterSlots, masterSlots)&&(identical(other.clientNameError, clientNameError) || other.clientNameError == clientNameError)&&(identical(other.serviceError, serviceError) || other.serviceError == serviceError)&&(identical(other.dateError, dateError) || other.dateError == dateError)&&(identical(other.timeError, timeError) || other.timeError == timeError));
}


@override
int get hashCode => Object.hash(runtimeType,loading,masterSchedule,createdAppointment,const DeepCollectionEquality().hash(masterSlots),clientNameError,serviceError,dateError,timeError);

@override
String toString() {
  return 'CreateAppointmentState(loading: $loading, masterSchedule: $masterSchedule, createdAppointment: $createdAppointment, masterSlots: $masterSlots, clientNameError: $clientNameError, serviceError: $serviceError, dateError: $dateError, timeError: $timeError)';
}


}

/// @nodoc
abstract mixin class $CreateAppointmentStateCopyWith<$Res>  {
  factory $CreateAppointmentStateCopyWith(CreateAppointmentState value, $Res Function(CreateAppointmentState) _then) = _$CreateAppointmentStateCopyWithImpl;
@useResult
$Res call({
 bool loading, MasterSchedule? masterSchedule, CreateAppointment? createdAppointment, List<SlotModel> masterSlots, String? clientNameError, String? serviceError, String? dateError, String? timeError
});


$MasterScheduleCopyWith<$Res>? get masterSchedule;$CreateAppointmentCopyWith<$Res>? get createdAppointment;

}
/// @nodoc
class _$CreateAppointmentStateCopyWithImpl<$Res>
    implements $CreateAppointmentStateCopyWith<$Res> {
  _$CreateAppointmentStateCopyWithImpl(this._self, this._then);

  final CreateAppointmentState _self;
  final $Res Function(CreateAppointmentState) _then;

/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? masterSchedule = freezed,Object? createdAppointment = freezed,Object? masterSlots = null,Object? clientNameError = freezed,Object? serviceError = freezed,Object? dateError = freezed,Object? timeError = freezed,}) {
  return _then(_self.copyWith(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,masterSchedule: freezed == masterSchedule ? _self.masterSchedule : masterSchedule // ignore: cast_nullable_to_non_nullable
as MasterSchedule?,createdAppointment: freezed == createdAppointment ? _self.createdAppointment : createdAppointment // ignore: cast_nullable_to_non_nullable
as CreateAppointment?,masterSlots: null == masterSlots ? _self.masterSlots : masterSlots // ignore: cast_nullable_to_non_nullable
as List<SlotModel>,clientNameError: freezed == clientNameError ? _self.clientNameError : clientNameError // ignore: cast_nullable_to_non_nullable
as String?,serviceError: freezed == serviceError ? _self.serviceError : serviceError // ignore: cast_nullable_to_non_nullable
as String?,dateError: freezed == dateError ? _self.dateError : dateError // ignore: cast_nullable_to_non_nullable
as String?,timeError: freezed == timeError ? _self.timeError : timeError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MasterScheduleCopyWith<$Res>? get masterSchedule {
    if (_self.masterSchedule == null) {
    return null;
  }

  return $MasterScheduleCopyWith<$Res>(_self.masterSchedule!, (value) {
    return _then(_self.copyWith(masterSchedule: value));
  });
}/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateAppointmentCopyWith<$Res>? get createdAppointment {
    if (_self.createdAppointment == null) {
    return null;
  }

  return $CreateAppointmentCopyWith<$Res>(_self.createdAppointment!, (value) {
    return _then(_self.copyWith(createdAppointment: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateAppointmentState].
extension CreateAppointmentStatePatterns on CreateAppointmentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAppointmentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAppointmentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAppointmentState value)  $default,){
final _that = this;
switch (_that) {
case _CreateAppointmentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAppointmentState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAppointmentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  MasterSchedule? masterSchedule,  CreateAppointment? createdAppointment,  List<SlotModel> masterSlots,  String? clientNameError,  String? serviceError,  String? dateError,  String? timeError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAppointmentState() when $default != null:
return $default(_that.loading,_that.masterSchedule,_that.createdAppointment,_that.masterSlots,_that.clientNameError,_that.serviceError,_that.dateError,_that.timeError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  MasterSchedule? masterSchedule,  CreateAppointment? createdAppointment,  List<SlotModel> masterSlots,  String? clientNameError,  String? serviceError,  String? dateError,  String? timeError)  $default,) {final _that = this;
switch (_that) {
case _CreateAppointmentState():
return $default(_that.loading,_that.masterSchedule,_that.createdAppointment,_that.masterSlots,_that.clientNameError,_that.serviceError,_that.dateError,_that.timeError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  MasterSchedule? masterSchedule,  CreateAppointment? createdAppointment,  List<SlotModel> masterSlots,  String? clientNameError,  String? serviceError,  String? dateError,  String? timeError)?  $default,) {final _that = this;
switch (_that) {
case _CreateAppointmentState() when $default != null:
return $default(_that.loading,_that.masterSchedule,_that.createdAppointment,_that.masterSlots,_that.clientNameError,_that.serviceError,_that.dateError,_that.timeError);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAppointmentState implements CreateAppointmentState {
  const _CreateAppointmentState({this.loading = false, this.masterSchedule, this.createdAppointment, final  List<SlotModel> masterSlots = const [], this.clientNameError, this.serviceError, this.dateError, this.timeError}): _masterSlots = masterSlots;
  

@override@JsonKey() final  bool loading;
@override final  MasterSchedule? masterSchedule;
@override final  CreateAppointment? createdAppointment;
 final  List<SlotModel> _masterSlots;
@override@JsonKey() List<SlotModel> get masterSlots {
  if (_masterSlots is EqualUnmodifiableListView) return _masterSlots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_masterSlots);
}

@override final  String? clientNameError;
@override final  String? serviceError;
@override final  String? dateError;
@override final  String? timeError;

/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAppointmentStateCopyWith<_CreateAppointmentState> get copyWith => __$CreateAppointmentStateCopyWithImpl<_CreateAppointmentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAppointmentState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.masterSchedule, masterSchedule) || other.masterSchedule == masterSchedule)&&(identical(other.createdAppointment, createdAppointment) || other.createdAppointment == createdAppointment)&&const DeepCollectionEquality().equals(other._masterSlots, _masterSlots)&&(identical(other.clientNameError, clientNameError) || other.clientNameError == clientNameError)&&(identical(other.serviceError, serviceError) || other.serviceError == serviceError)&&(identical(other.dateError, dateError) || other.dateError == dateError)&&(identical(other.timeError, timeError) || other.timeError == timeError));
}


@override
int get hashCode => Object.hash(runtimeType,loading,masterSchedule,createdAppointment,const DeepCollectionEquality().hash(_masterSlots),clientNameError,serviceError,dateError,timeError);

@override
String toString() {
  return 'CreateAppointmentState(loading: $loading, masterSchedule: $masterSchedule, createdAppointment: $createdAppointment, masterSlots: $masterSlots, clientNameError: $clientNameError, serviceError: $serviceError, dateError: $dateError, timeError: $timeError)';
}


}

/// @nodoc
abstract mixin class _$CreateAppointmentStateCopyWith<$Res> implements $CreateAppointmentStateCopyWith<$Res> {
  factory _$CreateAppointmentStateCopyWith(_CreateAppointmentState value, $Res Function(_CreateAppointmentState) _then) = __$CreateAppointmentStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, MasterSchedule? masterSchedule, CreateAppointment? createdAppointment, List<SlotModel> masterSlots, String? clientNameError, String? serviceError, String? dateError, String? timeError
});


@override $MasterScheduleCopyWith<$Res>? get masterSchedule;@override $CreateAppointmentCopyWith<$Res>? get createdAppointment;

}
/// @nodoc
class __$CreateAppointmentStateCopyWithImpl<$Res>
    implements _$CreateAppointmentStateCopyWith<$Res> {
  __$CreateAppointmentStateCopyWithImpl(this._self, this._then);

  final _CreateAppointmentState _self;
  final $Res Function(_CreateAppointmentState) _then;

/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? masterSchedule = freezed,Object? createdAppointment = freezed,Object? masterSlots = null,Object? clientNameError = freezed,Object? serviceError = freezed,Object? dateError = freezed,Object? timeError = freezed,}) {
  return _then(_CreateAppointmentState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,masterSchedule: freezed == masterSchedule ? _self.masterSchedule : masterSchedule // ignore: cast_nullable_to_non_nullable
as MasterSchedule?,createdAppointment: freezed == createdAppointment ? _self.createdAppointment : createdAppointment // ignore: cast_nullable_to_non_nullable
as CreateAppointment?,masterSlots: null == masterSlots ? _self._masterSlots : masterSlots // ignore: cast_nullable_to_non_nullable
as List<SlotModel>,clientNameError: freezed == clientNameError ? _self.clientNameError : clientNameError // ignore: cast_nullable_to_non_nullable
as String?,serviceError: freezed == serviceError ? _self.serviceError : serviceError // ignore: cast_nullable_to_non_nullable
as String?,dateError: freezed == dateError ? _self.dateError : dateError // ignore: cast_nullable_to_non_nullable
as String?,timeError: freezed == timeError ? _self.timeError : timeError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MasterScheduleCopyWith<$Res>? get masterSchedule {
    if (_self.masterSchedule == null) {
    return null;
  }

  return $MasterScheduleCopyWith<$Res>(_self.masterSchedule!, (value) {
    return _then(_self.copyWith(masterSchedule: value));
  });
}/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateAppointmentCopyWith<$Res>? get createdAppointment {
    if (_self.createdAppointment == null) {
    return null;
  }

  return $CreateAppointmentCopyWith<$Res>(_self.createdAppointment!, (value) {
    return _then(_self.copyWith(createdAppointment: value));
  });
}
}

// dart format on
