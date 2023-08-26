import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/common_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    required this.onLogin,
    super.key,
  });
  final Future<void> Function() onLogin;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: CommonButton(
        text: 'authView.login'.tr(),
        onTap: onLogin,
      ),
    );
  }
}
