import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/routes_manager.dart';
import 'package:conversational_interface/presentation/resources/strings_manager.dart';
import 'package:conversational_interface/presentation/resources/style_manager.dart';
import 'package:conversational_interface/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  List<String> images = [
    'onboarding1',
    'onboarding2',
    'onboarding3',
  ];
  List<String> texts = [
    AppStrings.onBoardingText1,
    AppStrings.onBoardingText2,
    AppStrings.onBoardingText3,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
         itemCount: 3,
         itemBuilder: (context,index){
            return Column(
        children: [
         const SizedBox(height: AppSize.s12,),
           Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, Routes.mainRoute);
              }, child: Text(AppStrings.skip,style: getBoldStyle(color: Colors.black,fontSize: AppSize.s16),),),
            )),
        const SizedBox(height: AppSize.s60,),
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/${images[index]}.png'),
                ),
              ),
            ),
          ),

          const SizedBox(height: AppSize.s18,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: AppMargin.m20),
            child: Text(texts[index],style: getRegularStyle(color: ColorManager.darkGrey,fontSize: AppSize.s18),)),
    
            
             Expanded(
               child: Stack(
                 children: [
                   Positioned(
                      bottom: 20,
                      left: MediaQuery.of(context).size.width/2-20,
                     child: Container(
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(3, (indexDots) {
                                  return Container(
                                    padding: const EdgeInsets.all(2),
                                    margin: const EdgeInsets.symmetric(horizontal:1),
                                    width: index==indexDots?25:10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: index==indexDots?ColorManager.darkGrey:ColorManager.darkGrey.withOpacity(0.5),
                                    ),
                                  );
                                }),
                              ),
                     ),
                   ),
                 ],
               ),
             )
        ],
      );
         }
         ),
    );
  }
}


// class OnBoardingPage extends StatelessWidget {
//   const OnBoardingPage({super.key, required this.image, required this.text});
//   final String image,text;

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }













