import 'package:flutter/material.dart';

TimeOfDay timeFromJson(String value) {
  final parts = value.split(':');

  return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
}

String timeToJson(TimeOfDay time) {
  final h = time.hour.toString().padLeft(2, '0');

  final m = time.minute.toString().padLeft(2, '0');

  return '$h:$m';
}

DateTime dateFromJson(String value) {
  return DateTime.parse(value);
}

String dateToJson(DateTime date) {
  return date.toIso8601String().split('T').first;
}
