import 'package:flutter/material.dart';

TimeOfDay timeFromJson(String value) {
  final parts = value.split(':');

  return TimeOfDay(
    hour: int.tryParse(parts[0]) ?? 0,
    minute: int.tryParse(parts[1]) ?? 0,
  );
}

String timeToJson(TimeOfDay time) {
  final h = time.hour.toString().padLeft(2, '0');
  final m = time.minute.toString().padLeft(2, '0');

  return '$h:$m';
}

DateTime dateFromJson(String json) => DateTime.parse(json);

String dateToJson(DateTime date) => date.toIso8601String();

TimeOfDay? timeFromJsonNullable(String? value) {
  if (value == null || value.isEmpty) return null;

  final parts = value.split(':');
  if (parts.length != 2) return null;

  return TimeOfDay(
    hour: int.tryParse(parts[0]) ?? 0,
    minute: int.tryParse(parts[1]) ?? 0,
  );
}

String? timeToJsonNullable(TimeOfDay? time) {
  if (time == null) return null;

  final h = time.hour.toString().padLeft(2, '0');
  final m = time.minute.toString().padLeft(2, '0');

  return '$h:$m';
}

DateTime? dateFromJsonNullable(String? value) {
  if (value == null || value.isEmpty) return null;
  return DateTime.tryParse(value);
}

String? dateToJsonNullable(DateTime? date) {
  if (date == null) return null;
  return date.toIso8601String().split('T').first;
}
