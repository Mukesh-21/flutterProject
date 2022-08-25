import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double Size;
  double height;
   TextOverflow Overflow ;
  SmallText({
    Key? key,
    this.color = const Color.fromARGB(255, 89, 70, 70),
    required this.text,
     this.Overflow = TextOverflow.ellipsis ,
    this.Size = 15,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines :1 ,
      text,
      overflow: Overflow,
      style: TextStyle(
        fontSize: Size,
        color: color,
        fontFamily: GoogleFonts.lato().fontFamily,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
