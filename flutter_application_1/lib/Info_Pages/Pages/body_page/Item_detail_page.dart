import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/util/dimensions.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

import '../../../widgets/app_reuse_icons.dart';

class PopularItemDetails extends StatelessWidget {
  const PopularItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.PopularItemImage,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("allassets/images/jew4.jpg"),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height50,
            left: Dimensions.width20,
            right: Dimensions.width20,
            
            child: Row(
              mainAxisAlignment : MainAxisAlignment.spaceBetween,
              children: [             
              AppReuseIcons(icons: Icons.arrow_back_ios,),
              AppReuseIcons(icons: Icons.shopping_cart_outlined,),
            ]),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.PopularItemImage-25,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius25),
                  topRight: Radius.circular(Dimensions.radius25)),
                  color: Colors.pinkAccent
              ),
               child : Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
               children: [
                BigText(text: "Dimond Jew"),
                SizedBox(height: 10,),
                SmallText(text: "Short Info"),

               ],
            ),
            ),
            
            ),
        
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
       // color: Colors.white,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom : Dimensions.height30,left: Dimensions.width30,right: Dimensions.width30),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.only(
            topLeft : Radius.circular(Dimensions.radius25),
            topRight: Radius.circular(Dimensions.radius25),
            ),
        ),
      ),
    );
  }
}
