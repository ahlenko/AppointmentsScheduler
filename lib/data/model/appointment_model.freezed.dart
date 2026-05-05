// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentModel {

@HiveField(0) String get id;@HiveField(1)@JsonKey(toJson: dateToJson, fromJson: dateFromJson) DateTime get date;@HiveField(2)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay get start;@HiveField(3)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay get end;@HiveField(4) String get clientName;@HiveField(5) String? get service;
/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentModelCopyWith<AppointmentModel> get copyWith => _$AppointmentModelCopyWithImpl<AppointmentModel>(this as AppointmentModel, _$identity);

  /// Serializes this AppointmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.service, service) || other.service == service));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,start,end,clientName,service);

@override
String toString() {
  return 'AppointmentModel(id: $id, date: $date, start: $start, end: $end, clientName: $clientName, service: $service)';
}


}

/// @nodoc
abstract mixin class $AppointmentModelCopyWith<$Res>  {
  factory $AppointmentModelCopyWith(AppointmentModel value, $Res Function(AppointmentModel) _then) = _$AppointmentModelCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1)@JsonKey(toJson: dateToJson, fromJson: dateFromJson) DateTime date,@HiveField(2)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay start,@HiveField(3)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay end,@HiveField(4) String clientName,@HiveField(5) String? service
});




}
/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._self, this._then);

  final AppointmentModel _self;
  final $Res Function(AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? start = null,Object? end = null,Object? clientName = null,Object? service = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeOfDay,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeOfDay,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentModel].
extension AppointmentModelPatterns on AppointmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentModel value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)@JsonKey(toJson: dateToJson, fromJson: dateFromJson)  DateTime date, @HiveField(2)@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay start, @HiveField(3)@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay end, @HiveField(4)  String clientName, @HiveField(5)  String? service)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.date,_that.start,_that.end,_that.clientName,_that.service);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)@JsonKey(toJson: dateToJson, fromJson: dateFromJson)  DateTime date, @HiveField(2)@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay start, @HiveField(3)@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay end, @HiveField(4)  String clientName, @HiveField(5)  String? service)  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel():
return $default(_that.id,_that.date,_that.start,_that.end,_that.clientName,_that.service);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)@JsonKey(toJson: dateToJson, fromJson: dateFromJson)  DateTime date, @HiveField(2)@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay start, @HiveField(3)@JsonKey(toJson: timeToJson, fromJson: timeFromJson)  TimeOfDay end, @HiveField(4)  String clientName, @HiveField(5)  String? service)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.date,_that.start,_that.end,_that.clientName,_that.service);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentModel implements AppointmentModel {
  const _AppointmentModel({@HiveField(0) required this.id, @HiveField(1)@JsonKey(toJson: dateToJson, fromJson: dateFromJson) required this.date, @HiveField(2)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) required this.start, @HiveField(3)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) required this.end, @HiveField(4) required this.clientName, @HiveField(5) required this.service});
  factory _AppointmentModel.fromJson(Map<String, dynamic> json) => _$AppointmentModelFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1)@JsonKey(toJson: dateToJson, fromJson: dateFromJson) final  DateTime date;
@override@HiveField(2)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) final  TimeOfDay start;
@override@HiveField(3)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) final  TimeOfDay end;
@override@HiveField(4) final  String clientName;
@override@HiveField(5) final  String? service;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentModelCopyWith<_AppointmentModel> get copyWith => __$AppointmentModelCopyWithImpl<_AppointmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.service, service) || other.service == service));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,start,end,clientName,service);

@override
String toString() {
  return 'AppointmentModel(id: $id, date: $date, start: $start, end: $end, clientName: $clientName, service: $service)';
}


}

/// @nodoc
abstract mixin class _$AppointmentModelCopyWith<$Res> implements $AppointmentModelCopyWith<$Res> {
  factory _$AppointmentModelCopyWith(_AppointmentModel value, $Res Function(_AppointmentModel) _then) = __$AppointmentModelCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1)@JsonKey(toJson: dateToJson, fromJson: dateFromJson) DateTime date,@HiveField(2)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay start,@HiveField(3)@JsonKey(toJson: timeToJson, fromJson: timeFromJson) TimeOfDay end,@HiveField(4) String clientName,@HiveField(5) String? service
});




}
/// @nodoc
class __$AppointmentModelCopyWithImpl<$Res>
    implements _$AppointmentModelCopyWith<$Res> {
  __$AppointmentModelCopyWithImpl(this._self, this._then);

  final _AppointmentModel _self;
  final $Res Function(_AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? start = null,Object? end = null,Object? clientName = null,Object? service = freezed,}) {
  return _then(_AppointmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as TimeOfDay,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as TimeOfDay,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
