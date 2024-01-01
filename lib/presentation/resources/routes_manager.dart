import 'package:conversational_interface/presentation/resources/strings_manager.dart';
import 'package:conversational_interface/screens/homescreen.dart';
import 'package:conversational_interface/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes{

  static const String splashRoute='/';
  static const String onBoardingRoute='/onboarding';
  static const String mainRoute='/main';
 

}

class RouteGenerator{

  static Route<dynamic> getRoute (RouteSettings routeSettings){

    switch(routeSettings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=>SplashScreen());
    
   
 
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_)=>HomeScreen());
      default:
        return UndefinedRoute();
    }
  }
  static Route<dynamic> UndefinedRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title: Text(AppStrings.noRoute),),
      body: Center(child: Text(AppStrings.noRoute),),
    ));
  }
}