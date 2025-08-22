import 'dart:async';
import 'package:bachatgat/res/colors/app_color.dart';
import 'package:bachatgat/view/BottomNavigation_Bar/bottomnavigation_view.dart';
import 'package:flutter/material.dart';
// import 'package:bachatgat/homepage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      _goToHome();
    });
  }

  void _goToHome() {
    Navigator.of(context).pushReplacement(_createSmoothRoute());
  }

  Route _createSmoothRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 800),
      pageBuilder: (context, animation, secondaryAnimation) => const BottomNavPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final fadeAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        );

        final slideAnimation = Tween<Offset>(
          begin: const Offset(0.0, 0.2),
          end: Offset.zero,
        ).animate(animation);

        return FadeTransition(
          opacity: fadeAnimation,
          child: SlideTransition(position: slideAnimation, child: child),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/Images/splash_screen_logo.png",
                width: 650.w,
                height: 700.h,
                fit: BoxFit.contain,
              ),
            ),
          ),

          /// Bottom section
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.primaryGreen, width: 3.w),
                ),
                color: AppColors.Splash,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Text(
                      "Shetkari Bachat Gat",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w900,
                        color: AppColors.accentRed,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      "Growing Together, Saving Together",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.customGrey,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 20.h),

                    /// Button
                    GeometricButton(onTap: _goToHome, text: "GET STARTED"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Custom button
class GeometricButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const GeometricButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(300.w, 55.h), // responsive size
            painter: GeometricButtonPainter(),
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Painter remains same
class GeometricButtonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final yellowPaint = Paint()..color = AppColors.yellowShade;
    final greyPaint = Paint()..color = AppColors.darkGrey;
    final blackPaint = Paint()..color = AppColors.black;

    final yellowPath = Path()
      ..moveTo(0, size.height * 0.5)
      ..lineTo(size.width, size.height * 0.5)
      ..lineTo(size.width * 0.9, size.height)
      ..lineTo(size.width * 0.1, size.height)
      ..close();
    canvas.drawPath(yellowPath, yellowPaint);

    final trapezoidPath = Path()
      ..moveTo(size.width * 0.05, size.height * 0.1)
      ..lineTo(size.width * 0.95, size.height * 0.1)
      ..lineTo(size.width, size.height * 0.9)
      ..lineTo(size.width * 0.1, size.height * 0.9)
      ..close();
    canvas.drawPath(trapezoidPath, greyPaint);

    final topLeftPath = Path()
      ..moveTo(size.width * 0.0, size.height * 0.3)
      ..lineTo(size.width * 0.1, size.height * 0.1)
      ..lineTo(size.width * 0.1, size.height * 0.4)
      ..close();
    canvas.drawPath(topLeftPath, blackPaint);

    final bottomLeftPath = Path()
      ..moveTo(size.width * 0.2, size.height * 0.8)
      ..lineTo(size.width * 0.3, size.height * 0.7)
      ..lineTo(size.width * 0.3, size.height)
      ..close();
    canvas.drawPath(bottomLeftPath, yellowPaint);

    final topRightPath1 = Path()
      ..moveTo(size.width * 0.75, size.height * 0.0)
      ..lineTo(size.width * 0.85, size.height * 0.2)
      ..lineTo(size.width * 0.8, size.height * 0.2)
      ..close();
    canvas.drawPath(topRightPath1, blackPaint);

    final topRightPath2 = Path()
      ..moveTo(size.width * 0.85, size.height * 0.0)
      ..lineTo(size.width * 0.95, size.height * 0.2)
      ..lineTo(size.width * 0.9, size.height * 0.2)
      ..close();
    canvas.drawPath(topRightPath2, yellowPaint);

    final bottomRightPath = Path()
      ..moveTo(size.width * 0.8, size.height * 0.6)
      ..lineTo(size.width * 0.9, size.height * 0.7)
      ..lineTo(size.width, size.height * 0.6)
      ..close();
    canvas.drawPath(bottomRightPath, blackPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}