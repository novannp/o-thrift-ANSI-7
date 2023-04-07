import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:o_thrift/src/routes/app_routes.dart';
import 'package:o_thrift/src/views/screens/home_screen.dart';
import 'package:o_thrift/src/views/screens/splash_screen.dart';

class OThrift extends StatelessWidget {
  const OThrift({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 800),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'O-Thrift',
            routes: {
              AppRoutes.splash: (context) => const SplashScreen(),
              AppRoutes.home: (context) => const HomeScreen()
            },
          );
        });
  }
}
