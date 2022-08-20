import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Dimensions {
  static double ScreenHeight = Get.context!.height ;
  static double ScreenWidth = Get.context!.width ;
  static double x = 803/250 ;
  static double pageViewContainer = ScreenHeight/x ;

  static double height15 = ScreenHeight/(ScreenHeight/15) ;
  static double height45 = ScreenHeight/(ScreenHeight/45) ;
  static double height53 = ScreenHeight/(ScreenHeight/53) ;

  static double width10 = ScreenHeight/(ScreenHeight/10) ;
  static double width15 = ScreenHeight/(ScreenHeight/15) ;
  static double width20 = ScreenHeight/(ScreenHeight/20) ;
  static double width30 = ScreenHeight/(ScreenHeight/30) ;

  static double font20 = ScreenHeight/(ScreenHeight/20) ;

  static double radius10 = ScreenHeight/(ScreenHeight/10) ;
  static double radius15 = ScreenHeight/(ScreenHeight/15) ;
  static double radius20 = ScreenHeight/(ScreenHeight/20) ;
  static double radius25 = ScreenHeight/(ScreenHeight/25) ;
  static double radius30 = ScreenHeight/(ScreenHeight/30) ;
}