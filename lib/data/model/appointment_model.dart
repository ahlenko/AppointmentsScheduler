import 'dart:developer';

import 'package:appointments/app/extensions/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    @HiveField(0) required String id,
    @HiveField(1)
    @JsonKey(toJson: dateToJson, fromJson: dateFromJson)
    DateTime? date,
    @HiveField(2)
    @JsonKey(toJson: timeToJson, fromJson: timeFromJson)
    TimeOfDay? start,
    @HiveField(3)
    @JsonKey(toJson: timeToJson, fromJson: timeFromJson)
    TimeOfDay? end,
    @HiveField(4) String? clientName,
    @HiveField(5) String? service,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}
