import 'package:flutter/material.dart';

TimeOfDay? timeFromJson(String? value) {
  if (value == null || value.isEmpty) return null;

  final parts = value.split(':');
  if (parts.length != 2) return null;

  return TimeOfDay(
    hour: int.tryParse(parts[0]) ?? 0,
    minute: int.tryParse(parts[1]) ?? 0,
  );
}

String? timeToJson(TimeOfDay? time) {
  if (time == null) return null;

  final h = time.hour.toString().padLeft(2, '0');
  final m = time.minute.toString().padLeft(2, '0');

  return '$h:$m';
}

DateTime? dateFromJson(String? value) {
  if (value == null || value.isEmpty) return null;
  return DateTime.tryParse(value);
}

String? dateToJson(DateTime? date) {
  if (date == null) return null;
  return date.toIso8601String().split('T').first;
}
