import 'package:appointments/app/translations/tr_strings.dart';
import 'package:appointments/ui/theme/colors.dart';
import 'package:appointments/ui/theme/fonts/types.dart';
import 'package:appointments/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ClientNameFieldWidget extends StatelessWidget {
  final TextEditingController clientNameController;
  final String? errorText;
  const ClientNameFieldWidget({
    super.key,
    this.errorText,
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
          controller: clientNameController,
          decoration: InputDecoration(border: OutlineInputBorder()),
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
