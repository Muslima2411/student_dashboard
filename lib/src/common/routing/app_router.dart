import 'package:auto_route/auto_route.dart';

/// TODO - make best practices for auto route
/// TODO - all bottom sheets should be up of the screens
/// TODO - privesti v poryadok dat comenti

part "app_router.gr.dart";

@AutoRouterConfig(replaceInRouteName: "Page,Route")
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
    // AutoRoute(
    //   // initial: true,
    //   page: SplashRoute.page,
    // // ),
    // AutoRoute(
    //   // initial: true,
    //   page: ErrorRoute.page,
    // ),
    //
    // AutoRoute(
    //   // initial: true,
    //   page: ChooseLanguageRoute.page,
    // ),
    //
    // AutoRoute(
    //   // initial: true,
    //   page: ChooseLanguageRoute.page,
    // ),
    //
    // AutoRoute(
    //   // initial: true,
    //   page: OnBoardingRoute.page,
    // ),
    //
    // /// Cargo Main
    // AutoRoute(
    //   page: CargoMainRoute.page,
    //   children: <AutoRoute>[
    //     AutoRoute(initial: true, page: CargoHomeRoute.page),
    //     AutoRoute(page: MyCargoRoute.page),
    //     AutoRoute(page: CreateCargoRoute.page),
    //     AutoRoute(page: CargoChatsRoute.page),
    //     AutoRoute(page: CargoProfileRoute.page),
    //   ],
    // ),
    //
    // /// Transporter Main
    // AutoRoute(
    //   initial: true,
    //   page: TransporterMainRoute.page,
    //   children: <AutoRoute>[
    //     AutoRoute(initial: true, page: TransporterHomeRoute.page),
    //     AutoRoute(page: TransporterMyOrdersRoute.page),
    //     AutoRoute(page: TransporterSearchOrdersRoute.page),
    //     AutoRoute(page: TransporterChatRoute.page),
    //     AutoRoute(page: TransporterProfileRoute.page),
    //   ],
    // ),
    //
    // /// Auth
    // AutoRoute(
    //   // initial: true,
    //   page: AuthGateRoute.page,
    // ),
    // AutoRoute(page: LoginRoute.page),
    //
    // /// cargo profile part
    // AutoRoute(page: TransporterMyReviewsRoute.page),
    // AutoRoute(page: TransporterSettingsRoute.page),
    // AutoRoute(page: TransporterEditProfileInfoRoute.page),
    // AutoRoute(page: TransporterVerificationRoute.page),
    //
    // AutoRoute(page: RegisterChooseRoleRoute.page),
    // AutoRoute(page: RegisterEnterDataRoute.page),
    // AutoRoute(page: RegisterPasswordRoute.page),
    // AutoRoute(page: OtpVerificationRoute.page),
    // AutoRoute(page: PasswordRecoveryRoute.page),
    // AutoRoute(page: RegisterSuccessRoute.page),
  ];
}
