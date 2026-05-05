// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'break_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BreakTime _$BreakTimeFromJson(Map<String, dynamic> json) => _BreakTime(
  start: timeFromJson(json['start'] as String),
  end: timeFromJson(json['end'] as String),
  label: json['label'] as String?,
);

Map<String, dynamic> _$BreakTimeToJson(_BreakTime instance) =>
    <String, dynamic>{
      'start': timeToJson(instance.start),
      'end': timeToJson(instance.end),
      'label': instance.label,
    };
