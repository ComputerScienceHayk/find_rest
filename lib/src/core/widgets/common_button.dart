import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/app_colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    required this.text,
    required this.onTap,
    this.buttonColor = AppColors.purple,
    this.textColor = AppColors.white,
    super.key,
  });
  final VoidCallback onTap;
  final Color buttonColor;
  final Color textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6.w),
        child: SizedBox(
          width: double.infinity,
          height: 55.h,
          child: ColoredBox(
            color: buttonColor,
            child: Align(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  height: 24/16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
