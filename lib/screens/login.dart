import 'package:conversational_interface/presentation/resources/color_manager.dart';
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
              padding: const EdgeInsets.all(AppPadding.p20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(AppStrings.welcome,style: getBoldStyle(color: Colors.black,fontSize: AppSize.s32),)),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p20),
                child: Form(
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 55,
                        width: 330,
                        
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email,color: ColorManager.darkGrey,),
                            hintText: AppStrings.email,
                            filled:  true,
                            fillColor: ColorManager.grey.withOpacity(0.2),
                            hintStyle: getRegularStyle(color: ColorManager.darkGrey,fontSize: AppSize.s18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSize.s8),
                              borderSide: BorderSide(color: Colors.transparent)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSize.s10),
                              borderSide: BorderSide(color: ColorManager.darkGrey.withOpacity(0.5))
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSize.s10),
                              borderSide: BorderSide(color: ColorManager.darkGrey.withOpacity(0.5))
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: AppSize.s32,),

                      Container(
                        height: 55,
                        width: 330,
                        
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock,color: ColorManager.darkGrey,),
                            suffixIcon: Icon(Icons.visibility,color: ColorManager.primary,),
                            hintText: AppStrings.password,
                            filled:  true,
                            fillColor: ColorManager.grey.withOpacity(0.2),
                            hintStyle: getRegularStyle(color: ColorManager.darkGrey,fontSize: AppSize.s18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSize.s8),
                              borderSide: BorderSide(color: Colors.transparent)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSize.s10),
                              borderSide: BorderSide(color: ColorManager.darkGrey.withOpacity(0.5))
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSize.s10),
                              borderSide: BorderSide(color: ColorManager.darkGrey.withOpacity(0.5))
                            ),
                          ),
                        ),
                      ),

                      Align(
                        // alignment: Alignment.centerRight,
                        child: Text(AppStrings.fpassword,style: getRegularStyle(color: ColorManager.primary,fontSize: AppSize.s16),)),
                    ],
                  )
                  ),
              ),
            )
        ],
      )
    );
  }
}