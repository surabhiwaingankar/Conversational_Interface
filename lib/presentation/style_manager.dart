
import 'package:conversational_interface/presentation/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize , String fontfamily,FontWeight fontWeight,Color color){
return TextStyle(
  fontFamily: fontfamily,
  fontSize: fontSize,
  color: color,
  fontWeight: fontWeight,
);
}
// regular textsytle
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color,}){
  return _getTextStyle(fontSize, "Montserrat", FontWeightManager.regular, color);
}

//light textsytle
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color,}){
  return _getTextStyle(fontSize, "Montserrat", FontWeightManager.light, color);
}
//bold textstyle
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color,}){
  return _getTextStyle(fontSize, "Montserrat", FontWeightManager.bold, color);
}

// semi bold textstyle
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required Color color,}){
  return _getTextStyle(fontSize, "Montserrat", FontWeightManager.semiBold, color);
}
// Medium textstyle
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color,}){
  return _getTextStyle(fontSize, "Montserrat", FontWeightManager.medium, color);
}