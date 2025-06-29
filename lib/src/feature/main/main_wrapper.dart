import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';
import 'package:student_dashboard_app/src/feature/analytics/analytics_page.dart';
import 'package:student_dashboard_app/src/feature/home/home_page.dart';

import '../profile/profile_page.dart';

@RoutePage()
class MainWrapperPage extends StatelessWidget {
  final _navScreens = [
    const HomePage(),
    const AnalyticsPage(),
    const ProfilePage(),
  ];

  MainWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      backgroundColor: const Color(0xFFEDEDED),
      context,
      screens: _navScreens,
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: context.localized.home,
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.analytics),
          title: context.localized.analytics,
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: context.localized.profile,
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
      ],
      navBarStyle: NavBarStyle.style1,
    );
  }
}
