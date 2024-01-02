import 'package:conversational_interface/presentation/resources/strings_manager.dart';
import 'package:conversational_interface/presentation/resources/style_manager.dart';
import 'package:conversational_interface/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
              const SizedBox(height: AppSize.s60,),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: Text(AppStrings.welcome,style: getBoldStyle(color: Colors.black,fontSize: AppSize.s32),),
            ),
        ],
      )
    );
  }
}