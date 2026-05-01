import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/ui/theme/colors.dart';
import 'package:appointments/ui/theme/fonts/types.dart';
import 'package:appointments/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class DatePickerWidget extends StatefulWidget {
  final String? errorText;
  final ValueChanged<DateTime>? onDateSelected;

  const DatePickerWidget({super.key, this.errorText, this.onDateSelected});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  late final List<DateTime> _days;
  DateTime? _selected;

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
              final isSelected = _selected == day;

              return GestureDetector(
                onTap: () {
                  setState(() => _selected = day);
                  widget.onDateSelected?.call(day);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.red : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.red),
                  ),
                  child: Text(
                    "${day.day}.${day.month}",
                    style: Types.roboto12Regular.copyWith(
                      color: isSelected ? Colors.white : AppColors.red,
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
}
