import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/consts/app_colors.dart';
import '../../../../core/di/di.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/inputs_area.dart';
import '../widgets/login_button.dart';
import '../widgets/registration_button.dart';

@RoutePage()
class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final _formKey = GlobalKey<FormState>();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  final FocusNode _loginFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    _loginFocusNode.unfocus();
    _passwordFocusNode.unfocus();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _loginFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: CupertinoPageScaffold(
        backgroundColor: AppColors.lightBg,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: AppColors.white,
          automaticallyImplyLeading: false,
          middle: Text(
            'authView.auth'.tr(),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              height: 20 / 15,
            ),
          ),
        ),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 200.h,
                ),
                InputsArea(
                  loginController: _loginController,
                  passwordController: _passwordController,
                  loginFocusNode: _loginFocusNode,
                  passwordFocusNode: _passwordFocusNode,
                ),
                SizedBox(
                  height: 32.h,
                ),
                LoginButton(
                  onLogin: _onLogin,
                ),
                SizedBox(
                  height: 19.h,
                ),
                RegistrationButton(
                  onRegister: _onRegister,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onLogin() async {
    if (_formKey.currentState!.validate()) {
      di<AuthBloc>().add(
        LoginEvent(
          login: _loginController.text,
          password: _passwordController.text,
          context: context,
        ),
      );
    }
  }

  Future<void> _onRegister() async {
    if (_formKey.currentState!.validate()) {
      di<AuthBloc>().add(
        LoginEvent(
          login: _loginController.text,
          password: _passwordController.text,
          context: context,
        ),
      );
    }
  }
}
