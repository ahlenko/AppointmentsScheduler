// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAppointment _$CreateAppointmentFromJson(Map<String, dynamic> json) =>
    _CreateAppointment(
      date: dateFromJsonNullable(json['date'] as String?),
      start: timeFromJsonNullable(json['start'] as String?),
      end: timeFromJsonNullable(json['end'] as String?),
      clientName: json['clientName'] as String?,
      service: json['service'] as String?,
    );

Map<String, dynamic> _$CreateAppointmentToJson(_CreateAppointment instance) =>
    <String, dynamic>{
      'date': dateToJsonNullable(instance.date),
      'start': timeToJsonNullable(instance.start),
      'end': timeToJsonNullable(instance.end),
      'clientName': instance.clientName,
      'service': instance.service,
    };
