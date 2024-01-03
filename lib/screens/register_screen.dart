import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/routes_manager.dart';
import 'package:conversational_interface/presentation/resources/strings_manager.dart';
import 'package:conversational_interface/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/style_manager.dart';

class RegisterScreen  extends StatelessWidget {
  const RegisterScreen ({super.key});

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
                child: Text(AppStrings.createtitle,style: getBoldStyle(color: Colors.black,fontSize: AppSize.s32),)),
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
                      SizedBox(height: AppSize.s4,),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: const EdgeInsets.only(left: AppPadding.p20),
                          child: Text(AppStrings.terms,style: getRegularStyle(color: ColorManager.darkGrey,fontSize: AppSize.s16)))),  
                       const SizedBox(height: AppSize.s18,),

                        Container(
                          width: 330,
                          height: 55,
                          child: ElevatedButton(onPressed: (){}, 
                          child: Text(AppStrings.createAccount,style: getBoldStyle(color: ColorManager.white,fontSize: AppSize.s18)),style: ElevatedButton.styleFrom(
                            primary: ColorManager.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSize.s8)
                            )
                          ),
                          ),
                          ),
                          const SizedBox(height: AppSize.s16,), 
                          Text(AppStrings.or,style: getRegularStyle(color: ColorManager.darkGrey,fontSize: AppSize.s16)),
                           const SizedBox(height: AppSize.s18,),
                        Center(
                          child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppSize.s8),
                                color: ColorManager.primary.withOpacity(0.2),
                                border: Border.all(color: ColorManager.primary.withOpacity(0.9))
                              ),
                          
                              child:IconButton(onPressed: (){}, icon:Image.asset("assets/images/Google.png",height: AppSize.s28,width: AppSize.s28,)) ,
                                ),
                        ),
                              const SizedBox(height: AppSize.s4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(AppStrings.already,style: getRegularStyle(color: ColorManager.darkGrey,fontSize: AppSize.s16)),
                                  TextButton(
                                    onPressed: (){
                                    Navigator.pushNamed(context, Routes.loginRoute);
                                    },
                                    child: Text(AppStrings.login,style: getBoldStyle(color: ColorManager.primary,fontSize: AppSize.s16)),)
                                ],
                              ),

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