import 'package:boiler_plate/app/constants/routing_constants.dart';
import 'package:boiler_plate/components/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteUtil {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map arguments = {};
    if (settings.arguments != null) {
      arguments.clear();
      arguments = settings.arguments as Map;
    }

    switch (settings.name) {
      case RoutingConstants.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }

  // static visitLoginPage(BuildContext context) {
  //   Navigator.pushNamedAndRemoveUntil(
  //     context,
  //     RoutingConstants.loginScreenRoute,
  //     (route) => false,
  //   );
  // }
}
