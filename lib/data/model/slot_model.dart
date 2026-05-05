import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class SlotModel {
  final TimeOfDay time;
  String? busyReason;
  bool highlighted;
  bool selected;
  SlotState slotState;

  SlotModel({
    required this.time,
    this.selected = false,
    this.highlighted = false,
    this.busyReason,
    this.slotState = SlotState.available,
  });
}

enum SlotState {
  available(Strings.available, AppColors.white),
  selected(Strings.selected, AppColors.purple),
  unavailable(Strings.unavailable, AppColors.darkGray),
  hided(Strings.hided, AppColors.darkGray),
  rest(Strings.rest, AppColors.orange);

  final String translation;
  final Color color;
  const SlotState(this.translation, this.color);
}
