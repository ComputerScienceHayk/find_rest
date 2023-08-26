import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/consts/app_colors.dart';
import '../../../../core/widgets/common_input.dart';

class InputsArea extends StatelessWidget {
  const InputsArea({
    required this.loginController,
    required this.passwordController,
    required this.loginFocusNode,
    required this.passwordFocusNode,
    super.key,
  });

  final TextEditingController loginController;
  final TextEditingController passwordController;
  final FocusNode loginFocusNode;
  final FocusNode passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            CommonInput(
              controller: loginController,
              placeholder: 'authView.loginOrEmail'.tr(),
              errorText: 'authView.pleaseEnterLogin'.tr(),
              focusNode: loginFocusNode,
            ),
            const Divider(
              thickness: 0.5,
              color: AppColors.grey,
            ),
            CommonInput(
              controller: passwordController,
              placeholder: 'authView.password'.tr(),
              errorText: 'authView.pleaseEnterPassword'.tr(),
              focusNode: passwordFocusNode,
            ),
          ],
        ),
      ),
    );
  }
}
