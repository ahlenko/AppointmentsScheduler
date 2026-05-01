// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MasterSchedule _$MasterScheduleFromJson(Map<String, dynamic> json) =>
    _MasterSchedule(
      workingHours: WorkingHours.fromJson(
        json['workingHours'] as Map<String, dynamic>,
      ),
      bufferMinutes: (json['bufferMinutes'] as num).toInt(),
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      appointments: (json['appointments'] as List<dynamic>)
          .map((e) => AppointmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MasterScheduleToJson(_MasterSchedule instance) =>
    <String, dynamic>{
      'workingHours': instance.workingHours,
      'bufferMinutes': instance.bufferMinutes,
      'services': instance.services,
      'appointments': instance.appointments,
    };
