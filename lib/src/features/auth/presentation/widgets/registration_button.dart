import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/common_button.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    required this.onRegister,
    super.key,
  });
  final Future<void> Function() onRegister;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: CommonButton(
        text: 'authView.registration'.tr(),
        onTap: onRegister,
      ),
    );
  }
}
