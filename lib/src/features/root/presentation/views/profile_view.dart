import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/consts/app_colors.dart';
import '../../../../core/consts/app_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/widget_ext.dart';
import '../../../../core/router/router.gr.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';

@RoutePage()
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc,AuthState>(
      builder: (context, state) {
        var name = 'name';
        var email = 'email';
        if(state is LoginState) {
          log('is not Login state?');
          name = state.user.nickname;
          email = state.user.email;
        }
        return Column(
            children: [
              SizedBox(
                height: 38.h,
              ),
              Image.asset(
                AppIcons.avatar,
                width: 64.w,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  height: 40 / 24,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                email,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 21.86 / 16,
                  color: AppColors.textGrey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 27.h,
              ),
              GestureDetector(
                onTap: () => _logOut(context),
                child: SizedBox(
                  width: double.infinity,
                  height: 55.h,
                  child: ColoredBox(
                    color: AppColors.white,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'profile.logout'.tr(),
                        style: const TextStyle(
                          color: AppColors.red,
                          fontSize: 16,
                          height: 21.86/16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ).paddingOnly(
                      l: 29.w,
                    ),
                  ),
                ),
              ),
            ],
          );
      }
    );
  }

  Future<void> _logOut(BuildContext context) async {
    await context.router.push(
      const AuthView(),
    );
    di<AuthBloc>().add(LogOutEvent());
  }
}
