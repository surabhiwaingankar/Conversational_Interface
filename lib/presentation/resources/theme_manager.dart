
import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/style_manager.dart';
import 'package:conversational_interface/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
   // main color of app
primaryColor: ColorManager.primary,
primaryColorLight: ColorManager.primaryOpacity70,
primaryColorDark: ColorManager.darkPrimary,

//ripple color
splashColor: ColorManager.primaryOpacity70,

disabledColor: ColorManager.grey1,
hintColor: ColorManager.grey,
   // cardview theme
cardTheme: CardTheme(
  color: ColorManager.white,
  shadowColor: ColorManager.grey,
  elevation: AppSize.s4,
),



   //Appbar theme
appBarTheme: AppBarTheme(
  centerTitle: true,
  color: ColorManager.primary,
  elevation: AppSize.s4,
  shadowColor: ColorManager.primaryOpacity70,
  titleTextStyle: getRegularStyle(color: ColorManager.white,fontSize: AppSize.s16),

),
    // Button theme
buttonTheme: ButtonThemeData(
  shape: StadiumBorder(),
  disabledColor: ColorManager.grey1,
  buttonColor: ColorManager.primary,
  splashColor: ColorManager.primaryOpacity70,
),

// elevated button theme
elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    textStyle: getRegularStyle(color:ColorManager.white),
    primary: ColorManager.primary,
    shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSize.s12),
      ),
  ),
),
      // Text theme
textTheme: TextTheme(
  headline1: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: AppSize.s16),
  subtitle1: getMediumStyle(color: ColorManager.lightGrey,fontSize: AppSize.s14),
  caption: getRegularStyle(color: ColorManager.grey1),
  bodyText1: getRegularStyle(color: ColorManager.grey),

),

    //input decoration theme (textformfield)
inputDecorationTheme: InputDecorationTheme(
  contentPadding: const EdgeInsets.all(AppPadding.p8),
  hintStyle: getRegularStyle(color: ColorManager.grey1),
  // label style
  labelStyle: getRegularStyle(color: ColorManager.darkGrey),
  //ERROR STYLE
  errorStyle: getRegularStyle(color: ColorManager.error),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: ColorManager.grey,width:AppSize.s1_5),
    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
  ),

  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: ColorManager.error,width:AppSize.s1_5),
    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
  ),

  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: ColorManager.primary,width:AppSize.s1_5),
    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
  ),

)

  );
}