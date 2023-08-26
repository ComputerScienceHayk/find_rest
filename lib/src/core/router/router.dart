//ignore_for_file: public_member_api_docs
import 'package:auto_route/auto_route.dart';

import  './router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashView.page, initial: true),
        AutoRoute(page: AuthView.page),
        CustomRoute(
          page: RootView.page,
          children: [
            AutoRoute(page: TapeView.page),
            AutoRoute(page: MapView.page),
            AutoRoute(page: FavoritesView.page),
            AutoRoute(page: ProfileView.page),
          ],
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ];
}
