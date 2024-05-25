import 'package:boiler_plate/app/constants/app_constants.dart';
import 'package:boiler_plate/app/constants/routing_constants.dart';
import 'package:boiler_plate/app/utils/route_util.dart';
import 'package:boiler_plate/app/utils/shared_pref_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

GlobalKey<NavigatorState> globalNavigationKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await SharedPrefUtil().initializeSharedPreference();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        title: AppConstants.appName,
        navigatorKey: globalNavigationKey,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteUtil.generateRoute,
        initialRoute: RoutingConstants.splashScreenRoute,
        themeMode: ThemeMode.light,
      );
    });
  }
}
