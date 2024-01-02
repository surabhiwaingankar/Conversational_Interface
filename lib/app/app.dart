import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/font_manager.dart';
import 'package:conversational_interface/presentation/resources/routes_manager.dart';
import 'package:conversational_interface/presentation/resources/theme_manager.dart';
import 'package:conversational_interface/screens/mainpage.dart';
import 'package:flutter/material.dart';

import '../screens/homescreen.dart';
import '../screens/wishlistscreen.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); //named constructor and private
  int appState = 0;
  static final MyApp instance = MyApp._internal(); //single instance
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: Routes.splashRoute,
        onGenerateRoute: RouteGenerator.getRoute,
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        // home: const MainPage()
    );
  }
}
