// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkingHours _$WorkingHoursFromJson(Map<String, dynamic> json) =>
    _WorkingHours(
      start: timeFromJson(json['start'] as String),
      end: timeFromJson(json['end'] as String),
      breaks:
          (json['breaks'] as List<dynamic>?)
              ?.map((e) => BreakTime.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$WorkingHoursToJson(_WorkingHours instance) =>
    <String, dynamic>{
      'start': timeToJson(instance.start),
      'end': timeToJson(instance.end),
      'breaks': instance.breaks,
    };
