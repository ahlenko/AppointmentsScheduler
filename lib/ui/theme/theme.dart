import 'package:appointments/ui/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData createTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
  );
}
