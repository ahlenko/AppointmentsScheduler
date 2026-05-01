import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/ui/theme/colors.dart';
import 'package:appointments/ui/theme/fonts/types.dart';
import 'package:appointments/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class SlotsGridWidget extends StatelessWidget {
  final String? errorText;
  final DateTime? selectedDate;
  final Map<int, String>? disabledSlots;
  final ValueChanged<TimeOfDay>? onSlotSelected;

  const SlotsGridWidget({
    super.key,
    this.errorText,
    this.selectedDate,
    this.disabledSlots,
    this.onSlotSelected,
  });

  @override
  Widget build(BuildContext context) {
    final slots = List.generate(24 * 4, (index) {
      final minutes = index * 15;
      final hour = minutes ~/ 60;
      final minute = minutes % 60;
      return TimeOfDay(hour: hour, minute: minute);
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Strings.selectATime.tr, style: Types.roboto16Medium),
        spacerVertical(8),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: slots.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 2.2,
          ),
          itemBuilder: (context, index) {
            final slot = slots[index];
            final minutes = slot.hour * 60 + slot.minute;
            final isDisabled = disabledSlots?.containsKey(minutes) ?? false;
            final reason = disabledSlots?[minutes];

            return Tooltip(
              message: isDisabled ? (reason ?? 'Unavailable') : '',
              child: GestureDetector(
                onTap: isDisabled ? null : () => onSlotSelected?.call(slot),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: isDisabled
                        ? Colors.grey.shade300
                        : Colors.transparent,
                    border: Border.all(
                      color: isDisabled ? Colors.grey : AppColors.red,
                    ),
                  ),
                  child: Text(
                    '${slot.hour.toString().padLeft(2, '0')}:${slot.minute.toString().padLeft(2, '0')}',
                    style: Types.roboto12Regular.copyWith(
                      color: isDisabled ? Colors.grey : AppColors.red,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        if (errorText != null) ...[
          spacerVertical(4),
          Text(
            errorText!,
            style: Types.roboto12Regular.copyWith(color: AppColors.red),
          ),
        ],
      ],
    );
  }
}
