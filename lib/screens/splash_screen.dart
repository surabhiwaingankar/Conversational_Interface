import 'dart:async';

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
    _timer=Timer(Duration(seconds:3),_goNext);
  }
  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.mainRoute);
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
           Image.asset('assets/images/logo.png',height: 120,width: 120,),
      // Text(
      //   AppStrings.appName,
      //   style: TextStyle(
      //     fontFamily: FontConstants.fontFamily,
      //     fontSize: FontSize.s20,
      //     fontWeight: FontWeight.bold,),
      // ),
        ],
      )
      ),
     );
  }
}