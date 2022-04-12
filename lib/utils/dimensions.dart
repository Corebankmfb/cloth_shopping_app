import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // Dynamic Page Height
  static double pageView = screenHeight/2.64;
  static double pageViewContainer = screenHeight/3.84;
  static double pageViewTextContainer = screenHeight/7.03;

  //Dynamic height for padding and margin
  static double height45 = screenHeight/15.12;

  //Dynamic width for padding and margin


  //Dynamic Font Size
  static double font20 = screenHeight/34.17;
}