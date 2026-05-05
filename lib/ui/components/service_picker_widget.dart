import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/data/model/service_model.dart';
import 'package:appointments/ui/theme/colors.dart';
import 'package:appointments/ui/theme/fonts/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ServicePickerWidget extends StatelessWidget {
  final ServiceModel? selectedService;
  final List<ServiceModel> services;
  final Function(ServiceModel) onServiceSelected;
  final String? errorText;
  const ServicePickerWidget({
    super.key,
    this.selectedService,
    required this.services,
    required this.onServiceSelected,
    required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Strings.selectAService.tr, style: Types.roboto16Medium),
        SizedBox(height: 8.h),
        DropdownButtonFormField<ServiceModel?>(
          value: selectedService,
          isExpanded: true,

          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 10.h,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColors.purple, width: 2.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColors.purple),
            ),
          ),

          hint: Text(Strings.pleaseSelectAService.tr),
          items: services
              .map(
                (service) => DropdownMenuItem<ServiceModel?>(
                  value: service,

                  child: RichText(
                    text: TextSpan(
                      text: service.name,
                      style: Types.roboto16Medium,
                      children: [
                        TextSpan(
                          text:
                              "  ${service.durationMinutes} ${Strings.min.tr}",
                          style: Types.roboto12Regular.copyWith(height: 1),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value != null) {
              onServiceSelected(value);
            }
          },
        ),
        if (errorText != null) ...[
          SizedBox(height: 4.h),
          Text(
            errorText!,
            style: Types.roboto12Regular.copyWith(color: AppColors.red),
          ),
        ],
      ],
    );
  }
}
