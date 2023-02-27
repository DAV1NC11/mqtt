import 'package:dav1nc11_s_application/presentation/splash_mobile_screen/splash_mobile_screen.dart';
import 'package:dav1nc11_s_application/presentation/splash_mobile_screen/binding/splash_mobile_binding.dart';
import 'package:dav1nc11_s_application/presentation/getting_started_mobile_screen/getting_started_mobile_screen.dart';
import 'package:dav1nc11_s_application/presentation/getting_started_mobile_screen/binding/getting_started_mobile_binding.dart';
import 'package:dav1nc11_s_application/presentation/water_mobile_screen/water_mobile_screen.dart';
import 'package:dav1nc11_s_application/presentation/water_mobile_screen/binding/water_mobile_binding.dart';
import 'package:dav1nc11_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:dav1nc11_s_application/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashMobileScreen = '/splash_mobile_screen';

  static const String gettingStartedMobileScreen =
      '/getting_started_mobile_screen';

  static const String waterMobileScreen = '/water_mobile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashMobileScreen,
      page: () => SplashMobileScreen(),
      bindings: [
        SplashMobileBinding(),
      ],
    ),
    GetPage(
      name: gettingStartedMobileScreen,
      page: () => GettingStartedMobileScreen(),
      bindings: [
        GettingStartedMobileBinding(),
      ],
    ),
    GetPage(
      name: waterMobileScreen,
      page: () => WaterMobileScreen(),
      bindings: [
        WaterMobileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashMobileScreen(),
      bindings: [
        SplashMobileBinding(),
      ],
    )
  ];
}
