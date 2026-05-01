import 'package:appointments/app/extensions/date_extension.dart';
import 'package:appointments/data/model/break_time.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_hours.freezed.dart';
part 'working_hours.g.dart';

@freezed
abstract class WorkingHours with _$WorkingHours {
  const factory WorkingHours({
    @JsonKey(toJson: timeToJson, fromJson: timeFromJson)
    required TimeOfDay? start,
    @JsonKey(toJson: timeToJson, fromJson: timeFromJson)
    required TimeOfDay? end,
    @Default([]) List<BreakTime> breaks,
  }) = _WorkingHours;

  factory WorkingHours.fromJson(Map<String, dynamic> json) =>
      _$WorkingHoursFromJson(json);
}
