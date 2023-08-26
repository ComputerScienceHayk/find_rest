import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'firebase_options.dart';
import 'src/core/app.dart';
import 'src/core/bloc/app_bloc_observer.dart';
import 'src/core/di/di.dart';
import 'src/core/enums/flavor.dart';
import 'src/features/auth/data/models/local/tokens.dart';

Future<void> run({Flavor env = Flavor.PROD}) async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
        ],
      );
      await Hive.initFlutter();
      await initializeFirebase();
      await configureDependencies(env);
      await initHive();
      Hive.registerAdapter(TokensAdapter());
      Bloc.observer = AppBlocObserver();
      runApp(
        EasyLocalization(
          supportedLocales: const [
            Locale('ru', 'RU'),
          ],
          startLocale: const Locale('ru', 'RU'),
          fallbackLocale: const Locale('ru', 'RU'),
          path: 'assets/translations',
          child: App(),
        ),
      );
      FlutterNativeSplash.remove();
    },
    (error, stackTrace) {
      WidgetsFlutterBinding.ensureInitialized();

      FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
    zoneSpecification: ZoneSpecification(
      createTimer: (self, parent, zone, duration, void Function() callback) {
        return parent.createTimer(zone, duration, callback);
      },
      createPeriodicTimer:
          (self, parent, zone, duration, void Function(Timer) callback) {
        return parent.createPeriodicTimer(zone, duration, callback);
      },
    ),
  );
}

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
}

Future<void> initHive() async {
  await Hive.openBox('token');
}

Future<void> main() async {
  await run();
}