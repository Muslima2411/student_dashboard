import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:student_dashboard_app/src/feature/analytics/analytics_page.dart';
import 'package:student_dashboard_app/src/feature/home/home_page.dart';

import '../profile/profile_page.dart';
import 'bloc/nav_bar_cubit.dart';

@RoutePage()
class MainWrapperPage extends StatelessWidget {
  final _navScreens = [
    const HomePage(),
    const AnalyticsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _navScreens,
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: 'Home',
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.analytics),
          title: 'Analytics',
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: 'Profile',
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
      ],
      navBarStyle: NavBarStyle.style6,
    );
  }
}