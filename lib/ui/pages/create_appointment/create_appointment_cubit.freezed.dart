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

 bool get loading; MasterSchedule? get masterSchedule; AppointmentModel? get createdAppointment;
/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAppointmentStateCopyWith<CreateAppointmentState> get copyWith => _$CreateAppointmentStateCopyWithImpl<CreateAppointmentState>(this as CreateAppointmentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAppointmentState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.masterSchedule, masterSchedule) || other.masterSchedule == masterSchedule)&&(identical(other.createdAppointment, createdAppointment) || other.createdAppointment == createdAppointment));
}


@override
int get hashCode => Object.hash(runtimeType,loading,masterSchedule,createdAppointment);

@override
String toString() {
  return 'CreateAppointmentState(loading: $loading, masterSchedule: $masterSchedule, createdAppointment: $createdAppointment)';
}


}

/// @nodoc
abstract mixin class $CreateAppointmentStateCopyWith<$Res>  {
  factory $CreateAppointmentStateCopyWith(CreateAppointmentState value, $Res Function(CreateAppointmentState) _then) = _$CreateAppointmentStateCopyWithImpl;
@useResult
$Res call({
 bool loading, MasterSchedule? masterSchedule, AppointmentModel? createdAppointment
});


$MasterScheduleCopyWith<$Res>? get masterSchedule;$AppointmentModelCopyWith<$Res>? get createdAppointment;

}
/// @nodoc
class _$CreateAppointmentStateCopyWithImpl<$Res>
    implements $CreateAppointmentStateCopyWith<$Res> {
  _$CreateAppointmentStateCopyWithImpl(this._self, this._then);

  final CreateAppointmentState _self;
  final $Res Function(CreateAppointmentState) _then;

/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? masterSchedule = freezed,Object? createdAppointment = freezed,}) {
  return _then(_self.copyWith(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,masterSchedule: freezed == masterSchedule ? _self.masterSchedule : masterSchedule // ignore: cast_nullable_to_non_nullable
as MasterSchedule?,createdAppointment: freezed == createdAppointment ? _self.createdAppointment : createdAppointment // ignore: cast_nullable_to_non_nullable
as AppointmentModel?,
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
$AppointmentModelCopyWith<$Res>? get createdAppointment {
    if (_self.createdAppointment == null) {
    return null;
  }

  return $AppointmentModelCopyWith<$Res>(_self.createdAppointment!, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  MasterSchedule? masterSchedule,  AppointmentModel? createdAppointment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAppointmentState() when $default != null:
return $default(_that.loading,_that.masterSchedule,_that.createdAppointment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  MasterSchedule? masterSchedule,  AppointmentModel? createdAppointment)  $default,) {final _that = this;
switch (_that) {
case _CreateAppointmentState():
return $default(_that.loading,_that.masterSchedule,_that.createdAppointment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  MasterSchedule? masterSchedule,  AppointmentModel? createdAppointment)?  $default,) {final _that = this;
switch (_that) {
case _CreateAppointmentState() when $default != null:
return $default(_that.loading,_that.masterSchedule,_that.createdAppointment);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAppointmentState implements CreateAppointmentState {
  const _CreateAppointmentState({this.loading = false, this.masterSchedule, this.createdAppointment});
  

@override@JsonKey() final  bool loading;
@override final  MasterSchedule? masterSchedule;
@override final  AppointmentModel? createdAppointment;

/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAppointmentStateCopyWith<_CreateAppointmentState> get copyWith => __$CreateAppointmentStateCopyWithImpl<_CreateAppointmentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAppointmentState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.masterSchedule, masterSchedule) || other.masterSchedule == masterSchedule)&&(identical(other.createdAppointment, createdAppointment) || other.createdAppointment == createdAppointment));
}


@override
int get hashCode => Object.hash(runtimeType,loading,masterSchedule,createdAppointment);

@override
String toString() {
  return 'CreateAppointmentState(loading: $loading, masterSchedule: $masterSchedule, createdAppointment: $createdAppointment)';
}


}

/// @nodoc
abstract mixin class _$CreateAppointmentStateCopyWith<$Res> implements $CreateAppointmentStateCopyWith<$Res> {
  factory _$CreateAppointmentStateCopyWith(_CreateAppointmentState value, $Res Function(_CreateAppointmentState) _then) = __$CreateAppointmentStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, MasterSchedule? masterSchedule, AppointmentModel? createdAppointment
});


@override $MasterScheduleCopyWith<$Res>? get masterSchedule;@override $AppointmentModelCopyWith<$Res>? get createdAppointment;

}
/// @nodoc
class __$CreateAppointmentStateCopyWithImpl<$Res>
    implements _$CreateAppointmentStateCopyWith<$Res> {
  __$CreateAppointmentStateCopyWithImpl(this._self, this._then);

  final _CreateAppointmentState _self;
  final $Res Function(_CreateAppointmentState) _then;

/// Create a copy of CreateAppointmentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? masterSchedule = freezed,Object? createdAppointment = freezed,}) {
  return _then(_CreateAppointmentState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,masterSchedule: freezed == masterSchedule ? _self.masterSchedule : masterSchedule // ignore: cast_nullable_to_non_nullable
as MasterSchedule?,createdAppointment: freezed == createdAppointment ? _self.createdAppointment : createdAppointment // ignore: cast_nullable_to_non_nullable
as AppointmentModel?,
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
$AppointmentModelCopyWith<$Res>? get createdAppointment {
    if (_self.createdAppointment == null) {
    return null;
  }

  return $AppointmentModelCopyWith<$Res>(_self.createdAppointment!, (value) {
    return _then(_self.copyWith(createdAppointment: value));
  });
}
}

// dart format on
