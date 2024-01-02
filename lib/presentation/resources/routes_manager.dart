import 'package:conversational_interface/presentation/resources/strings_manager.dart';
import 'package:conversational_interface/screens/homescreen.dart';
import 'package:conversational_interface/screens/login.dart';
import 'package:conversational_interface/screens/mainpage.dart';
import 'package:conversational_interface/screens/onboarding.dart';
import 'package:conversational_interface/screens/productdetails.dart';
import 'package:conversational_interface/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onboarding';
  static const String mainRoute = '/main';
  static const String homeRoute = '/home';
  static const String loginRoute = '/login';
  static const String productDetailsRoute = '/productdetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainPage());
      // case Routes.homeRoute:
      //   return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      // case Routes.productDetailsRoute:
      //   return MaterialPageRoute(builder: (_) => ProductDetails());
      default:
        return UndefinedRoute();
    }
  }

  static Route<dynamic> UndefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRoute),
              ),
              body: Center(
                child: Text(AppStrings.noRoute),
              ),
            ));
  }
}
