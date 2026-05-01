import 'package:appointments/app/extensions/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'break_time.freezed.dart';
part 'break_time.g.dart';

@freezed
abstract class BreakTime with _$BreakTime {
  const factory BreakTime({
    @JsonKey(toJson: timeToJson, fromJson: timeFromJson)
    required TimeOfDay? start,
    @JsonKey(toJson: timeToJson, fromJson: timeFromJson)
    required TimeOfDay? end,
    String? label,
  }) = _BreakTime;

  factory BreakTime.fromJson(Map<String, dynamic> json) =>
      _$BreakTimeFromJson(json);
}
