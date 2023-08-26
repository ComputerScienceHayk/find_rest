import 'package:flutter/cupertino.dart';

import '../consts/app_colors.dart';
import '../consts/app_fonts.dart';

const base = CupertinoThemeData();

final lightTheme = base.copyWith(
  brightness: Brightness.light,
  primaryColor: AppColors.grey,
  barBackgroundColor: AppColors.lightBg,
  textTheme: const CupertinoTextThemeData(
      primaryColor: CupertinoColors.black,
      textStyle: TextStyle(
        color: AppColors.black,
        fontFamily: AppFonts.manrope,
      ),
  ),
  scaffoldBackgroundColor: AppColors.lightBg,
  applyThemeToAll: true,
);
