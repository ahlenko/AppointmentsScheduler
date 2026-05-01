// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkingHours {

@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay? get start;@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay? get end; List<BreakTime> get breaks;
/// Create a copy of WorkingHours
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingHoursCopyWith<WorkingHours> get copyWith => _$WorkingHoursCopyWithImpl<WorkingHours>(this as WorkingHours, _$identity);

  /// Serializes this WorkingHours to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingHours&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&const DeepCollectionEquality().equals(other.breaks, breaks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,const DeepCollectionEquality().hash(breaks));

@override
String toString() {
  return 'WorkingHours(start: $start, end: $end, breaks: $breaks)';
}


}

/// @nodoc
abstract mixin class $WorkingHoursCopyWith<$Res>  {
  factory $WorkingHoursCopyWith(WorkingHours value, $Res Function(WorkingHours) _then) = _$WorkingHoursCopyWithImpl;
@useResult
$Res call({
@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay? start,@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay? end, List<BreakTime> breaks
});




}
/// @nodoc
class _$WorkingHoursCopyWithImpl<$Res>
    implements $WorkingHoursCopyWith<$Res> {
  _$WorkingHoursCopyWithImpl(this._self, this._then);

  final WorkingHours _self;
  final $Res Function(WorkingHours) _then;

/// Create a copy of WorkingHours
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? end = freezed,Object? breaks = null,}) {
  return _then(_self.copyWith(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,breaks: null == breaks ? _self.breaks : breaks // ignore: cast_nullable_to_non_nullable
as List<BreakTime>,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingHours].
extension WorkingHoursPatterns on WorkingHours {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingHours value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingHours() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingHours value)  $default,){
final _that = this;
switch (_that) {
case _WorkingHours():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingHours value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingHours() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay? start, @JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay? end,  List<BreakTime> breaks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingHours() when $default != null:
return $default(_that.start,_that.end,_that.breaks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay? start, @JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay? end,  List<BreakTime> breaks)  $default,) {final _that = this;
switch (_that) {
case _WorkingHours():
return $default(_that.start,_that.end,_that.breaks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay? start, @JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay? end,  List<BreakTime> breaks)?  $default,) {final _that = this;
switch (_that) {
case _WorkingHours() when $default != null:
return $default(_that.start,_that.end,_that.breaks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkingHours implements WorkingHours {
  const _WorkingHours({@JsonKey(toJson: timeToJson, fromJson: timeFromJson) required this.start, @JsonKey(toJson: timeToJson, fromJson: timeFromJson) required this.end, final  List<BreakTime> breaks = const []}): _breaks = breaks;
  factory _WorkingHours.fromJson(Map<String, dynamic> json) => _$WorkingHoursFromJson(json);

@override@JsonKey(toJson: timeToJson, fromJson: timeFromJson) final  TimeOfDay? start;
@override@JsonKey(toJson: timeToJson, fromJson: timeFromJson) final  TimeOfDay? end;
 final  List<BreakTime> _breaks;
@override@JsonKey() List<BreakTime> get breaks {
  if (_breaks is EqualUnmodifiableListView) return _breaks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_breaks);
}


/// Create a copy of WorkingHours
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingHoursCopyWith<_WorkingHours> get copyWith => __$WorkingHoursCopyWithImpl<_WorkingHours>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkingHoursToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingHours&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&const DeepCollectionEquality().equals(other._breaks, _breaks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,const DeepCollectionEquality().hash(_breaks));

@override
String toString() {
  return 'WorkingHours(start: $start, end: $end, breaks: $breaks)';
}


}

/// @nodoc
abstract mixin class _$WorkingHoursCopyWith<$Res> implements $WorkingHoursCopyWith<$Res> {
  factory _$WorkingHoursCopyWith(_WorkingHours value, $Res Function(_WorkingHours) _then) = __$WorkingHoursCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay? start,@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay? end, List<BreakTime> breaks
});




}
/// @nodoc
class __$WorkingHoursCopyWithImpl<$Res>
    implements _$WorkingHoursCopyWith<$Res> {
  __$WorkingHoursCopyWithImpl(this._self, this._then);

  final _WorkingHours _self;
  final $Res Function(_WorkingHours) _then;

/// Create a copy of WorkingHours
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = freezed,Object? end = freezed,Object? breaks = null,}) {
  return _then(_WorkingHours(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,breaks: null == breaks ? _self._breaks : breaks // ignore: cast_nullable_to_non_nullable
as List<BreakTime>,
  ));
}


}

// dart format on
