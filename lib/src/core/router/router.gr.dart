// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:find_rest/src/features/auth/presentation/views/auth_view.dart'
    as _i1;
import 'package:find_rest/src/features/root/presentation/views/favorites_view.dart'
    as _i2;
import 'package:find_rest/src/features/root/presentation/views/map_view.dart'
    as _i3;
import 'package:find_rest/src/features/root/presentation/views/profile_view.dart'
    as _i4;
import 'package:find_rest/src/features/root/presentation/views/root_view.dart'
    as _i5;
import 'package:find_rest/src/features/root/presentation/views/tape_view.dart'
    as _i7;
import 'package:find_rest/src/features/splash/presentation/views/splash_view.dart'
    as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthView(),
      );
    },
    FavoritesView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavoritesView(),
      );
    },
    MapView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MapView(),
      );
    },
    ProfileView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileView(),
      );
    },
    RootView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RootView(),
      );
    },
    SplashView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashView(),
      );
    },
    TapeView.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.TapeView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthView]
class AuthView extends _i8.PageRouteInfo<void> {
  const AuthView({List<_i8.PageRouteInfo>? children})
      : super(
          AuthView.name,
          initialChildren: children,
        );

  static const String name = 'AuthView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FavoritesView]
class FavoritesView extends _i8.PageRouteInfo<void> {
  const FavoritesView({List<_i8.PageRouteInfo>? children})
      : super(
          FavoritesView.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MapView]
class MapView extends _i8.PageRouteInfo<void> {
  const MapView({List<_i8.PageRouteInfo>? children})
      : super(
          MapView.name,
          initialChildren: children,
        );

  static const String name = 'MapView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfileView]
class ProfileView extends _i8.PageRouteInfo<void> {
  const ProfileView({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileView.name,
          initialChildren: children,
        );

  static const String name = 'ProfileView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RootView]
class RootView extends _i8.PageRouteInfo<void> {
  const RootView({List<_i8.PageRouteInfo>? children})
      : super(
          RootView.name,
          initialChildren: children,
        );

  static const String name = 'RootView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashView]
class SplashView extends _i8.PageRouteInfo<void> {
  const SplashView({List<_i8.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.TapeView]
class TapeView extends _i8.PageRouteInfo<void> {
  const TapeView({List<_i8.PageRouteInfo>? children})
      : super(
          TapeView.name,
          initialChildren: children,
        );

  static const String name = 'TapeView';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
