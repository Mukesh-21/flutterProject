import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
   Color? color ;
  final String text ;
  double Size ;
  TextOverflow Overflow ;
   BigText({Key? key, this.color = const Color(0xFF332d2b), 
   required this.text,
   this.Overflow = TextOverflow.ellipsis ,
   this.Size = 20 ,

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
     maxLines : 1 ,
     text ,
     overflow: Overflow,
     style: TextStyle(
      fontSize: Size == 0?Dimensions.font20:Size,
      color: color ,
      fontFamily: GoogleFonts.lato().fontFamily,
      fontWeight: FontWeight.bold,
     
           ),
    );
  }
}