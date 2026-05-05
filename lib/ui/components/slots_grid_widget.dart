import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/data/model/create_appointment.dart';
import 'package:appointments/data/model/master_schedule.dart';
import 'package:appointments/data/model/slot_model.dart';
import 'package:appointments/ui/theme/colors.dart';
import 'package:appointments/ui/theme/fonts/types.dart';
import 'package:appointments/util/screen_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class SlotsGridWidget extends StatelessWidget {
  final Function(SlotModel) onSlotSelected;
  final CreateAppointment appointment;
  final MasterSchedule schedule;
  final List<SlotModel> slots;
  final String? errorText;

  const SlotsGridWidget({
    super.key,
    required this.slots,
    required this.errorText,
    required this.schedule,
    required this.appointment,
    required this.onSlotSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(Strings.selectATime.tr, style: Types.roboto16Medium),
            ),
            if (appointment.service != null)
              Text(
                '${Strings.duration.tr} ${schedule.services.where((s) => s.id == appointment.service).first.durationMinutes} ${Strings.min.tr}',
                style: Types.roboto12Regular.copyWith(color: AppColors.gray),
              ),
          ],
        ),
        spacerVertical(8),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: slots.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.8,
          ),
          itemBuilder: (context, index) {
            final slot = slots[index];

            return GestureDetector(
              onTap: () => onSlotSelected(slot),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: slot.selected
                        ? AppColors.purple
                        : slot.highlighted
                        ? AppColors.purple.withValues(alpha: .6)
                        : slot.slotState == SlotState.unavailable
                        ? AppColors.darkGray.withValues(alpha: .4)
                        : slot.slotState == SlotState.rest
                        ? AppColors.orange.withValues(alpha: .7)
                        : Colors.deepPurple,
                  ),
                  color: slot.selected
                      ? AppColors.purple
                      : slot.highlighted
                      ? AppColors.purple.withValues(alpha: .4)
                      : slot.slotState == SlotState.unavailable
                      ? AppColors.darkGray.withValues(alpha: .1)
                      : slot.slotState == SlotState.rest
                      ? AppColors.orange.withValues(alpha: .2)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${slot.time.hour.toString().padLeft(2, '0')}:${slot.time.minute.toString().padLeft(2, '0')}',
                      style: Types.roboto14Medium.copyWith(
                        color: slot.selected || slot.highlighted
                            ? Colors.white
                            : slot.slotState == SlotState.unavailable
                            ? AppColors.darkGray.withValues(alpha: .9)
                            : slot.slotState == SlotState.rest
                            ? AppColors.orange.withValues(alpha: .9)
                            : Colors.deepPurple,
                      ),
                    ),
                    if (slot.busyReason != null)
                      SizedBox(
                        width: 75.w,
                        child: AutoSizeText(
                          slot.busyReason ?? '',
                          maxLines: 1,
                          minFontSize: 6.sp,
                          stepGranularity: 1.sp,
                          maxFontSize: 12.sp,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: Types.roboto12Regular.copyWith(
                            color: slot.selected || slot.highlighted
                                ? AppColors.white
                                : slot.slotState == SlotState.unavailable
                                ? AppColors.darkGray.withValues(alpha: .7)
                                : slot.slotState == SlotState.rest
                                ? AppColors.orange.withValues(alpha: .7)
                                : AppColors.gray,
                          ),
                        ),
                      ),
                  ],
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
