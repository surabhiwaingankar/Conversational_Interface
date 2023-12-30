
import 'dart:ui';

class ColorManager{
  static Color primary=HexColor.fromHex("F83758");
  static Color darkGrey=HexColor.fromHex("525252");
  static Color grey=HexColor.fromHex("737477");
  static Color lightGrey=HexColor.fromHex("9E9E9E");
  static Color primaryOpacity70=HexColor.fromHex("F83758").withOpacity(0.7);

  // new colors 
  static Color darkPrimary=HexColor.fromHex("d17d11");
  static Color grey1=HexColor.fromHex("707070");
  static Color grey2=HexColor.fromHex("797979");
  static Color white=HexColor.fromHex("FFFFFF");
  static Color error=HexColor.fromHex("e61f34");//red color
}

extension HexColor on Color {
  static Color fromHex(String hexColor){
     hexColor = hexColor.replaceAll('#', '');
    if(hexColor.length==6){
        hexColor="FF$hexColor"; // now it includes opacity 100
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}