import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../feature/analytics/analytics_page.dart';
import '../../feature/auth/login_page.dart';
import '../../feature/home/home_page.dart';
import '../../feature/main/main_wrapper.dart';
import '../../feature/profile/profile_page.dart';
import '../../feature/profile/settings_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  static final RouterConfig<UrlState> router = AppRouter().config();

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
    AutoRoute(path: '/login', page: LoginRoute.page, initial: true),
    AutoRoute(path: '/settings', page: SettingsRoute.page),
    AutoRoute(
      path: '/main',
      page: MainWrapperRoute.page,
      children: [
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'analytics', page: AnalyticsRoute.page),
        AutoRoute(path: 'profile', page: ProfileRoute.page),
      ],
      // guards: [AuthGuard()],
    ),
  ];
}

// // Optional: Define a simple AuthGuard for authentication
// class AuthGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     const isAuthenticated = false;
//     if (isAuthenticated) {
//       resolver.next();
//     } else {
//       router.push(LoginRoute());
//     }
//   }
// }
