// import 'package:bachatgat/view/SplashScreen/splash_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// // Background notification handler
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   // Handle background notification logic here
//   print("Handling a background message: ${message.messageId}");
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

//   runApp(ShetkariBachatGatApp());
// }

// class ShetkariBachatGatApp extends StatefulWidget {
//   const ShetkariBachatGatApp({super.key});

//   @override
//   State<ShetkariBachatGatApp> createState() => _ShetkariBachatGatAppState();
// }

// class _ShetkariBachatGatAppState extends State<ShetkariBachatGatApp> {
//   late FirebaseMessaging messaging;

//   @override
//   void initState() {
//     super.initState();

//     messaging = FirebaseMessaging.instance;

//     // Request notification permissions
//     messaging.requestPermission();

//   messaging.getToken().then((token){
//     print("token $token");
//   });

//     messaging.subscribeToTopic("Shetkari");
    

//     // Foreground message listener
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       print("Got a message in foreground: ${message.notification?.title}");
//     });

//     // App opened from terminated state via notification
//     FirebaseMessaging.instance.getInitialMessage().then((message) {
//       if (message != null) {
//         print("App opened from terminated state: ${message.notification?.title}");
//       }
//     });

//     // App opened from background via notification
//     FirebaseMessaging.onMessageOpenedApp.listen((message) {
//       print("App opened from background: ${message.notification?.title}");
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(390, 844), // iPhone 12 base size
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (context, child) {
//         return MaterialApp(
//           title: 'Shetkari Bachat Gat',
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             primarySwatch: Colors.green,
//             fontFamily: 'Poppins',
//           ),
//           home: child,
//         );
//       },
//       child: const SplashScreen(),
//     );
//   }
// }


import 'package:bachatgat/view/SplashScreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      statusBarIconBrightness: Brightness.dark, // Black icons (Android)
      statusBarBrightness: Brightness.light,   // iOS style
      systemNavigationBarColor: Colors.white,  // Nav bar background
      systemNavigationBarIconBrightness: Brightness.dark, // Black nav icons
    ),
  );


  runApp(const ShetkariBachatGatApp());
}

class ShetkariBachatGatApp extends StatelessWidget {
  const ShetkariBachatGatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // base screen size (iPhone 12)
      minTextAdapt: true,
      splitScreenMode: true,
      
      builder: (context, child) {
        return MaterialApp(
          title: 'Shetkari Bachat Gat',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
            fontFamily: 'Poppins',
          ),
          home: child, 
        );
      },
      
      child: const SplashScreen(),
    );
  }
}