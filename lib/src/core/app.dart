import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../features/auth/presentation/bloc/auth_bloc.dart';
import 'di/di.dart';
import 'router/router.dart';
import 'theme/theme.dart';


class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaleFactor: 1,
      ),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, __) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<AuthBloc>.value(
                value: di.get<AuthBloc>(),
              ),
            ],
            child: CupertinoApp.router(
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routerConfig: _appRouter.config(),
            ),
          );
        },
      ),
    );
  }
}
