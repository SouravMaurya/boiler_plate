import 'package:boiler_plate/app/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  Future init() async {
    await Future.delayed(const Duration(seconds: 2));
    // SharedPrefUtil sharedPrefUtil = SharedPrefUtil();
    // bool isLoggedId = sharedPrefUtil.getBool(SharedPrefUtil.keyIsLoggedIn);
    // bool isUserRemember = sharedPrefUtil.getBool(SharedPrefUtil.keyUserRemember);
    // if (isLoggedId && isUserRemember) {
    //   RouteUtil.visitHomePage(context);
    // } else {
    //   sharedPrefUtil.clearPreference();
    //   RouteUtil.visitLoginPage(context);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

          ],
        ),
      ),
    );
  }
}
