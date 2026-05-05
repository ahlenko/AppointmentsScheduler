import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/data/model/create_appointment.dart';
import 'package:appointments/ui/theme/colors.dart';
import 'package:appointments/ui/theme/fonts/types.dart';
import 'package:appointments/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends StatefulWidget {
  final String? errorText;
  final ValueChanged<DateTime> onDateSelected;
  final CreateAppointment appointment;

  const DatePickerWidget({
    super.key,
    this.errorText,
    required this.appointment,
    required this.onDateSelected,
  });

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget>
    with AfterLayoutMixin {
  late final List<DateTime> _days;

  @override
  void initState() {
    super.initState();
    final today = DateTime.now();
    _days = List.generate(
      7,
      (i) => DateTime(today.year, today.month, today.day + i),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Strings.selectADay.tr, style: Types.roboto16Medium),
        spacerVertical(8),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _days.map((day) {
              final isSelected = widget.appointment.date == day;

              return GestureDetector(
                onTap: () {
                  widget.onDateSelected.call(day);
                },
                child: Card(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.purple : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          DateFormat(
                            "EEE",
                            Get.deviceLocale?.languageCode,
                          ).format(day),
                          style: Types.roboto12Regular.copyWith(
                            color: isSelected ? Colors.white : AppColors.gray,
                          ),
                        ),
                        Text(
                          "${day.day}",
                          style: Types.roboto16Medium.copyWith(
                            color: isSelected ? Colors.white : AppColors.black,
                          ),
                        ),
                        Text(
                          DateFormat(
                            "MMMM",
                            Get.deviceLocale?.languageCode,
                          ).format(day).substring(0, 4),

                          style: Types.roboto12Regular.copyWith(
                            color: isSelected ? Colors.white : AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),

        if (widget.errorText != null) ...[
          spacerVertical(4),
          Text(
            widget.errorText!,
            style: Types.roboto12Regular.copyWith(color: AppColors.red),
          ),
        ],
      ],
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    widget.onDateSelected(_days.first);
  }
}
