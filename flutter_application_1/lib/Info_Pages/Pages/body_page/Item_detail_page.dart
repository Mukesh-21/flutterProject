import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/util/dimensions.dart';

import '../../../widgets/app_reuse_icons.dart';

class PopularItemDetails extends StatelessWidget {
  const PopularItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            top: 300,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
            ),
            ),
        ],
      ),
    );
  }
}
