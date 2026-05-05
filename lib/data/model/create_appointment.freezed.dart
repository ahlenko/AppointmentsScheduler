// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAppointment {

@JsonKey(toJson: dateToJsonNullable, fromJson: dateFromJsonNullable) DateTime? get date;@JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) TimeOfDay? get start;@JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) TimeOfDay? get end; String? get clientName; String? get service;
/// Create a copy of CreateAppointment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAppointmentCopyWith<CreateAppointment> get copyWith => _$CreateAppointmentCopyWithImpl<CreateAppointment>(this as CreateAppointment, _$identity);

  /// Serializes this CreateAppointment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAppointment&&(identical(other.date, date) || other.date == date)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.service, service) || other.service == service));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,start,end,clientName,service);

@override
String toString() {
  return 'CreateAppointment(date: $date, start: $start, end: $end, clientName: $clientName, service: $service)';
}


}

/// @nodoc
abstract mixin class $CreateAppointmentCopyWith<$Res>  {
  factory $CreateAppointmentCopyWith(CreateAppointment value, $Res Function(CreateAppointment) _then) = _$CreateAppointmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(toJson: dateToJsonNullable, fromJson: dateFromJsonNullable) DateTime? date,@JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) TimeOfDay? start,@JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) TimeOfDay? end, String? clientName, String? service
});




}
/// @nodoc
class _$CreateAppointmentCopyWithImpl<$Res>
    implements $CreateAppointmentCopyWith<$Res> {
  _$CreateAppointmentCopyWithImpl(this._self, this._then);

  final CreateAppointment _self;
  final $Res Function(CreateAppointment) _then;

/// Create a copy of CreateAppointment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? start = freezed,Object? end = freezed,Object? clientName = freezed,Object? service = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAppointment].
extension CreateAppointmentPatterns on CreateAppointment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAppointment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAppointment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAppointment value)  $default,){
final _that = this;
switch (_that) {
case _CreateAppointment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAppointment value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAppointment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(toJson: dateToJsonNullable, fromJson: dateFromJsonNullable)  DateTime? date, @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable)  TimeOfDay? start, @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable)  TimeOfDay? end,  String? clientName,  String? service)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAppointment() when $default != null:
return $default(_that.date,_that.start,_that.end,_that.clientName,_that.service);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(toJson: dateToJsonNullable, fromJson: dateFromJsonNullable)  DateTime? date, @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable)  TimeOfDay? start, @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable)  TimeOfDay? end,  String? clientName,  String? service)  $default,) {final _that = this;
switch (_that) {
case _CreateAppointment():
return $default(_that.date,_that.start,_that.end,_that.clientName,_that.service);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(toJson: dateToJsonNullable, fromJson: dateFromJsonNullable)  DateTime? date, @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable)  TimeOfDay? start, @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable)  TimeOfDay? end,  String? clientName,  String? service)?  $default,) {final _that = this;
switch (_that) {
case _CreateAppointment() when $default != null:
return $default(_that.date,_that.start,_that.end,_that.clientName,_that.service);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAppointment implements CreateAppointment {
  const _CreateAppointment({@JsonKey(toJson: dateToJsonNullable, fromJson: dateFromJsonNullable) this.date, @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) this.start, @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) this.end, this.clientName, this.service});
  factory _CreateAppointment.fromJson(Map<String, dynamic> json) => _$CreateAppointmentFromJson(json);

@override@JsonKey(toJson: dateToJsonNullable, fromJson: dateFromJsonNullable) final  DateTime? date;
@override@JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) final  TimeOfDay? start;
@override@JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) final  TimeOfDay? end;
@override final  String? clientName;
@override final  String? service;

/// Create a copy of CreateAppointment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAppointmentCopyWith<_CreateAppointment> get copyWith => __$CreateAppointmentCopyWithImpl<_CreateAppointment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAppointmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAppointment&&(identical(other.date, date) || other.date == date)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.service, service) || other.service == service));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,start,end,clientName,service);

@override
String toString() {
  return 'CreateAppointment(date: $date, start: $start, end: $end, clientName: $clientName, service: $service)';
}


}

/// @nodoc
abstract mixin class _$CreateAppointmentCopyWith<$Res> implements $CreateAppointmentCopyWith<$Res> {
  factory _$CreateAppointmentCopyWith(_CreateAppointment value, $Res Function(_CreateAppointment) _then) = __$CreateAppointmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(toJson: dateToJsonNullable, fromJson: dateFromJsonNullable) DateTime? date,@JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) TimeOfDay? start,@JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable) TimeOfDay? end, String? clientName, String? service
});




}
/// @nodoc
class __$CreateAppointmentCopyWithImpl<$Res>
    implements _$CreateAppointmentCopyWith<$Res> {
  __$CreateAppointmentCopyWithImpl(this._self, this._then);

  final _CreateAppointment _self;
  final $Res Function(_CreateAppointment) _then;

/// Create a copy of CreateAppointment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? start = freezed,Object? end = freezed,Object? clientName = freezed,Object? service = freezed,}) {
  return _then(_CreateAppointment(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
