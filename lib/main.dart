
import 'package:bachatgat/view/SplashScreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ShetkariBachatGatApp());
}

class ShetkariBachatGatApp extends StatelessWidget {
  const ShetkariBachatGatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // base screen size (iPhone 12)
      minTextAdapt: true, // adapt text size
      splitScreenMode: true, // handle tablets/foldables
      builder: (context, child) {
        return MaterialApp(
          title: 'Shetkari Bachat Gat',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
            fontFamily: 'Poppins',
          ),
          home: child, // child is your SplashScreen
        );
      },
      child: const SplashScreen(),
    );
  }
}