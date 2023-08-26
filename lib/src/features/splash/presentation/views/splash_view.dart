import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/consts/app_colors.dart';
import '../../../../core/mixins/after_layout_mixin.dart';
import '../../../../core/router/router.gr.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with AfterLayoutMixin {
  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    FlutterNativeSplash.remove();
    await Future.delayed(
      const Duration(seconds: 3),
    );
    await checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.yellow,
      child: Center(
        child: Lottie.network(
          'https://lottie.host/fb5338d1-b5ca-4cff-b4e8-1053081cb252/wyPPjPUhkK.json',
        ),
      ),
    );
  }

  Future<void> checkAuth() async {
    final tokenBox = Hive.box('token');
    final String? token = tokenBox.get('token');
    log('token in splash screen $token');
    /// TODO:
    await context.router.push(
      const AuthView(),
    );
  }
}
