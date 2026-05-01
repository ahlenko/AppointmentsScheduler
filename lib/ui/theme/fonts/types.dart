import 'package:appointments/ui/theme/colors.dart';
import 'package:appointments/ui/theme/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Types {
  static TextStyle robotoBase = TextStyle(
    color: AppColors.black,
    fontFamily: Fonts.roboto,
    fontWeight: FontWeight.normal,
    fontSize: 10.sp,
  );

  static TextStyle roboto16Medium = robotoBase.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle roboto12Regular = robotoBase.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
}
