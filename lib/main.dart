import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:video_conference_app/Constants/appColors.dart';
import 'package:video_conference_app/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Standard mobile resolution design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
         
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: white,
            primaryColor: themeColor,
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: themeColor,
              primary: themeColor,
            ),
          ),
          home: child,
        );
      },
      // child: const AuthOnboardingScreen(),
      child: HomeScreen(),
    );
  }
}

