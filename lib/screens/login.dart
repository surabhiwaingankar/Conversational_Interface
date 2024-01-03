import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/routes_manager.dart';
import 'package:conversational_interface/presentation/resources/strings_manager.dart';
import 'package:conversational_interface/presentation/resources/style_manager.dart';
import 'package:conversational_interface/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: AppSize.s60,
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppStrings.welcome,
                  style:
                      getBoldStyle(color: Colors.black, fontSize: AppSize.s32),
                )),
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
                        prefixIcon: Icon(
                          Icons.email,
                          color: ColorManager.darkGrey,
                        ),
                        hintText: AppStrings.email,
                        filled: true,
                        fillColor: ColorManager.grey.withOpacity(0.2),
                        hintStyle: getRegularStyle(
                            color: ColorManager.darkGrey,
                            fontSize: AppSize.s18),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s8),
                            borderSide: BorderSide(color: Colors.transparent)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                            borderSide: BorderSide(
                                color: ColorManager.darkGrey.withOpacity(0.5))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                            borderSide: BorderSide(
                                color: ColorManager.darkGrey.withOpacity(0.5))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s32,
                  ),
                  Container(
                    height: 55,
                    width: 330,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: ColorManager.darkGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: ColorManager.primary,
                        ),
                        hintText: AppStrings.password,
                        filled: true,
                        fillColor: ColorManager.grey.withOpacity(0.2),
                        hintStyle: getRegularStyle(
                            color: ColorManager.darkGrey,
                            fontSize: AppSize.s18),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s8),
                            borderSide: BorderSide(color: Colors.transparent)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                            borderSide: BorderSide(
                                color: ColorManager.darkGrey.withOpacity(0.5))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                            borderSide: BorderSide(
                                color: ColorManager.darkGrey.withOpacity(0.5))),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(AppStrings.fpassword,
                            style: getRegularStyle(
                                color: ColorManager.primary,
                                fontSize: AppSize.s16)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppSize.s32,
                  ),
                  Container(
                    width: 330,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(AppStrings.login,
                          style: getBoldStyle(
                              color: ColorManager.white,
                              fontSize: AppSize.s18)),
                      style: ElevatedButton.styleFrom(
                          primary: ColorManager.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSize.s8))),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s16,
                  ),
                  Text(AppStrings.or,
                      style: getRegularStyle(
                          color: ColorManager.darkGrey, fontSize: AppSize.s16)),
                  const SizedBox(
                    height: AppSize.s18,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s8),
                        color: ColorManager.primary.withOpacity(0.2),
                        border: Border.all(
                            color: ColorManager.primary.withOpacity(0.9))),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/Google.png",
                          height: AppSize.s28,
                          width: AppSize.s28,
                        )),
                  ),
                  const SizedBox(
                    height: AppSize.s18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppStrings.create,
                          style: getRegularStyle(
                              color: ColorManager.darkGrey,
                              fontSize: AppSize.s16)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.registerRoute);
                        },
                        child: Text(AppStrings.signUp,
                            style: getBoldStyle(
                                color: ColorManager.primary,
                                fontSize: AppSize.s16)),
                      )
                    ],
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    ));
  }
}
