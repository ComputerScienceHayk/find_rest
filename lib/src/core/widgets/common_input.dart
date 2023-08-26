import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/app_colors.dart';

class CommonInput extends StatelessWidget {
  const CommonInput({
    required this.controller,
    required this.placeholder,
    required this.errorText,
    required this.focusNode,
    super.key,
  });

  final TextEditingController controller;
  final String placeholder;
  final String errorText;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      controller: controller,
      placeholder: placeholder,
      focusNode: focusNode,
      padding: EdgeInsets.symmetric(
        vertical: 19.h,
      ),
      placeholderStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 21.86 / 16,
        color: AppColors.textGrey,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }

        return null;
      },
    );
  }
}
