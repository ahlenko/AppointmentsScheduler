// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'break_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BreakTime {

@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay get start;@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay get end; String? get label;
/// Create a copy of BreakTime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BreakTimeCopyWith<BreakTime> get copyWith => _$BreakTimeCopyWithImpl<BreakTime>(this as BreakTime, _$identity);

  /// Serializes this BreakTime to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BreakTime&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,label);

@override
String toString() {
  return 'BreakTime(start: $start, end: $end, label: $label)';
}


}

/// @nodoc
abstract mixin class $BreakTimeCopyWith<$Res>  {
  factory $BreakTimeCopyWith(BreakTime value, $Res Function(BreakTime) _then) = _$BreakTimeCopyWithImpl;
@useResult
$Res call({
@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay start,@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay end, String? label
});




}
/// @nodoc
class _$BreakTimeCopyWithImpl<$Res>
    implements $BreakTimeCopyWith<$Res> {
  _$BreakTimeCopyWithImpl(this._self, this._then);

  final BreakTime _self;
  final $Res Function(BreakTime) _then;

/// Create a copy of BreakTime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = null,Object? end = null,Object? label = freezed,}) {
  return _then(_self.copyWith(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeOfDay,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeOfDay,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BreakTime].
extension BreakTimePatterns on BreakTime {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BreakTime value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BreakTime() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BreakTime value)  $default,){
final _that = this;
switch (_that) {
case _BreakTime():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BreakTime value)?  $default,){
final _that = this;
switch (_that) {
case _BreakTime() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay start, @JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay end,  String? label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BreakTime() when $default != null:
return $default(_that.start,_that.end,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay start, @JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay end,  String? label)  $default,) {final _that = this;
switch (_that) {
case _BreakTime():
return $default(_that.start,_that.end,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay start, @JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay end,  String? label)?  $default,) {final _that = this;
switch (_that) {
case _BreakTime() when $default != null:
return $default(_that.start,_that.end,_that.label);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BreakTime implements BreakTime {
  const _BreakTime({@JsonKey(toJson: timeToJson, fromJson: timeFromJson) required this.start, @JsonKey(toJson: timeToJson, fromJson: timeFromJson) required this.end, this.label});
  factory _BreakTime.fromJson(Map<String, dynamic> json) => _$BreakTimeFromJson(json);

@override@JsonKey(toJson: timeToJson, fromJson: timeFromJson) final  TimeOfDay start;
@override@JsonKey(toJson: timeToJson, fromJson: timeFromJson) final  TimeOfDay end;
@override final  String? label;

/// Create a copy of BreakTime
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BreakTimeCopyWith<_BreakTime> get copyWith => __$BreakTimeCopyWithImpl<_BreakTime>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BreakTimeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BreakTime&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,label);

@override
String toString() {
  return 'BreakTime(start: $start, end: $end, label: $label)';
}


}

/// @nodoc
abstract mixin class _$BreakTimeCopyWith<$Res> implements $BreakTimeCopyWith<$Res> {
  factory _$BreakTimeCopyWith(_BreakTime value, $Res Function(_BreakTime) _then) = __$BreakTimeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay start,@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay end, String? label
});




}
/// @nodoc
class __$BreakTimeCopyWithImpl<$Res>
    implements _$BreakTimeCopyWith<$Res> {
  __$BreakTimeCopyWithImpl(this._self, this._then);

  final _BreakTime _self;
  final $Res Function(_BreakTime) _then;

/// Create a copy of BreakTime
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = null,Object? end = null,Object? label = freezed,}) {
  return _then(_BreakTime(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeOfDay,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeOfDay,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
