import 'package:appointments/app/extensions/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_appointment.freezed.dart';
part 'create_appointment.g.dart';

@freezed
abstract class CreateAppointment with _$CreateAppointment {
  const factory CreateAppointment({
    @JsonKey(toJson: dateToJsonNullable, fromJson: dateFromJsonNullable)
    DateTime? date,
    @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable)
    TimeOfDay? start,
    @JsonKey(toJson: timeToJsonNullable, fromJson: timeFromJsonNullable)
    TimeOfDay? end,
    String? clientName,
    String? service,
  }) = _CreateAppointment;

  factory CreateAppointment.fromJson(Map<String, dynamic> json) =>
      _$CreateAppointmentFromJson(json);
}
