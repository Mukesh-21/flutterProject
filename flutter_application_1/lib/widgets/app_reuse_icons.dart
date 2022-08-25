import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/util/dimensions.dart';

class AppReuseIcons extends StatelessWidget {
  final IconData icons ;
  final Color backgroundcolor ;
  final Color iconColor ;
  final double size ;

   AppReuseIcons({Key? key, 
    required this.icons, 
    this.backgroundcolor = const Color(0xFFfcf4e4), 
    this.iconColor = const Color(0xFF756d54), 
    this.size = 40
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(size/2),
      color: backgroundcolor
    ),
    child :Icon(
      icons,
      color :iconColor,
      size : Dimensions.iconsize16
      ) 
    );
    
  }
}