import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/consts/app_colors.dart';
import '../../../../core/consts/app_icons.dart';
import '../../../../core/router/router.gr.dart';

@RoutePage()
class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  List<String> titles = [
    'rootView.tape'.tr(),
    'rootView.map'.tr(),
    'rootView.favorites'.tr(),
    'rootView.profile'.tr(),
  ];
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        TapeView(),
        MapView(),
        FavoritesView(),
        ProfileView(),
      ],
      transitionBuilder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.white,
            centerTitle: true,
            leading: const SizedBox.shrink(),
            title: Text(
              titles.elementAt(tabsRouter.activeIndex),
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 15,
                height: 20/15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: NavigationBar(
            backgroundColor: AppColors.white,
            indicatorColor: Colors.transparent,
            height: 83.h,
            destinations: [
              NavigationDestination(
                icon: Image.asset(AppIcons.tape),
                selectedIcon: Image.asset(
                  AppIcons.tape,
                  color: AppColors.purple,
                ),
                label: 'rootView.tape'.tr(),
              ),
              NavigationDestination(
                icon: Image.asset(AppIcons.map),
                selectedIcon: Image.asset(
                  AppIcons.map,
                  color: AppColors.purple,
                ),
                label: 'rootView.map'.tr(),
              ),
              NavigationDestination(
                icon: Image.asset(AppIcons.favorites),
                selectedIcon: Image.asset(
                  AppIcons.favorites,
                  color: AppColors.purple,
                ),
                label: 'rootView.favorites'.tr(),
              ),
              NavigationDestination(
                icon: Image.asset(AppIcons.profile),
                selectedIcon: Image.asset(
                  AppIcons.profile,
                  color: AppColors.purple,
                ),
                label: 'rootView.profile'.tr(),
              ),
            ],
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: (tabIndex) => {
              tabsRouter.setActiveIndex(tabIndex),
            },
          ),
        );
      },
    );
  }
}
