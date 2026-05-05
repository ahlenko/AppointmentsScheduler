import 'package:appointments/app/extensions/time_of_day_extension.dart';
import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/data/model/appointment_model.dart';
import 'package:appointments/data/model/service_model.dart';
import 'package:appointments/ui/theme/colors.dart';
import 'package:appointments/ui/theme/fonts/types.dart';
import 'package:appointments/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AppoitmentCreatedBottomSheet extends StatelessWidget {
  final AppointmentModel appointmentModel;
  final List<ServiceModel> services;
  const AppoitmentCreatedBottomSheet({
    super.key,
    required this.appointmentModel,
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    final service = services.firstWhere(
      (service) => service.id == appointmentModel.service,
    );
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            spacerVertical(16),
            Text(
              Strings.appointmentAreCreated.tr,
              style: Types.roboto16Medium.copyWith(color: AppColors.black),
            ),
            spacerVertical(8),
            Card(
              color: AppColors.white,
              elevation: 2,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.purple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          DateFormat(
                            "EEE",
                            Get.deviceLocale?.languageCode,
                          ).format(appointmentModel.date),
                          style: Types.roboto12Regular.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        Text(
                          "${appointmentModel.date.day}",
                          style: Types.roboto16Medium.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        Text(
                          DateFormat(
                            "MMMM",
                            Get.deviceLocale?.languageCode,
                          ).format(appointmentModel.date).substring(0, 4),

                          style: Types.roboto12Regular.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  spacerHorizontal(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${Strings.client.tr} ${appointmentModel.clientName}",
                        style: Types.roboto16Medium,
                      ),
                      spacerVertical(2),
                      Text(
                        "${Strings.service.tr} ${service.name}, ${Strings.duration.tr} ${service.durationMinutes} ${Strings.min.tr}",
                        style: Types.roboto12Regular,
                      ),
                      spacerVertical(2),
                      Text(
                        "${Strings.appointmentTime.tr} ${appointmentModel.start.toFormattedString()} - ${appointmentModel.end.toFormattedString()}",
                        style: Types.roboto14Medium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            spacerVertical(16),
            SizedBox(
              width: double.infinity,
              height: 45.h,
              child: FilledButton(
                onPressed: Navigator.of(context).pop,
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),

                child: Text(
                  Strings.confirm.tr,
                  style: Types.roboto16Medium.copyWith(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
