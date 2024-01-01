import 'dart:async';

import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/routes_manager.dart';
import 'package:conversational_interface/presentation/resources/strings_manager.dart';
import 'package:conversational_interface/screens/homescreen.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/font_manager.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Timer? _timer;
  _startDelay(){
    _timer=Timer(const Duration(seconds:3),_goNext);
  }
  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }
  @override
  void initState() {
   
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child :Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image.asset('assets/images/splash_logo.png'),
      Text(
        AppStrings.appName,
        style: TextStyle(
          fontFamily: FontConstants.fontFamily,
          fontSize: FontSize.s30,
          color: ColorManager.primary,
          fontWeight: FontWeight.bold,),
      ),
        ],
      )
      ),
     );
  }
}