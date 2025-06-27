import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:nested/nested.dart";
import '../generated/l10n.dart';
import 'feature/analytics/bloc/attendance_bloc.dart';
import 'feature/auth/bloc/login_bloc.dart';
import 'feature/home/bloc/home_bloc.dart';
import 'feature/main/main_wrapper.dart';
import 'feature/profile/bloc/profile_bloc.dart';
import 'feature/settings/inherited/local_cubit.dart';
import 'feature/settings/inherited/theme_controller.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key}) : builderKey = GlobalKey();

  final GlobalKey builderKey;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: <SingleChildWidget>[
            BlocProvider(create: (context) => LoginBloc()),
            BlocProvider(create: (context) => HomeBloc()),
            BlocProvider(create: (context) => AttendanceBloc()),
            BlocProvider(create: (context) => ProfileBloc()),
            BlocProvider(create: (context) => LocaleCubit()),
            BlocProvider(create: (context) => ThemeCubit()),
          ],
          child: BlocBuilder<ThemeCubit, ThemeData>(
            builder: (context, theme) {
              return BlocBuilder<LocaleCubit, Locale>(
                builder: (context, locale) {
                  return MaterialApp(
                    home: MainWrapperPage(),
                    debugShowCheckedModeBanner: false,
                    onGenerateTitle:
                        (BuildContext context) => "Student dashboard",
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: const [
                      Locale('ru', 'RU'),
                      Locale('uz', 'UZ'),
                    ],
                    locale: locale,
                    theme: theme,
                    localeResolutionCallback: (
                      Locale? deviceLocale,
                      Iterable<Locale> supportedLocales,
                    ) {
                      return supportedLocales.firstWhere(
                        (Locale locale) =>
                            locale.languageCode == deviceLocale?.languageCode,
                        orElse: () => const Locale("ru"),
                      );
                    },
                    // routerConfig: AppRouter.router,
                    builder: (BuildContext context, Widget? child) {
                      return MediaQuery.withNoTextScaling(
                        key: builderKey,
                        child: child ?? const SizedBox.shrink(),
                      );
                    },
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
