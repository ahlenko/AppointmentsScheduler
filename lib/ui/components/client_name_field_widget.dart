import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/ui/theme/colors.dart';
import 'package:appointments/ui/theme/fonts/types.dart';
import 'package:appointments/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ClientNameFieldWidget extends StatelessWidget {
  final TextEditingController clientNameController;
  final FocusNode focusNode;
  final String? errorText;
  const ClientNameFieldWidget({
    super.key,
    this.errorText,
    required this.focusNode,
    required this.clientNameController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Strings.clientName.tr, style: Types.roboto16Medium),
        spacerVertical(8),
        TextField(
          focusNode: focusNode,
          style: Types.roboto16Medium,
          controller: clientNameController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColors.purple, width: 2.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColors.purple),
            ),
          ),
        ),
        spacerVertical(8),
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
