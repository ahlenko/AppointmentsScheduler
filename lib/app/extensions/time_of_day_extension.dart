import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  int toMinutes() => hour * 60 + minute;

  String toFormattedString() =>
      "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
}
