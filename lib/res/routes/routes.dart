import 'package:bachatgat/res/routes/routes_name.dart';
import 'package:bachatgat/view/SplashScreen/splash_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppRoutes{
  static appRoutes () => [
    GetPage(name: RoutesName.splachScreen, page: ()=> SplashScreen())
  ];
}