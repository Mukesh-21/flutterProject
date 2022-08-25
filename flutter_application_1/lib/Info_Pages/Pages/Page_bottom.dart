import 'dart:ffi';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/dimensions.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

import '../../widgets/icon_and_text_widget.dart';


class PageMiddleBottom extends StatefulWidget {
  PageMiddleBottom({Key? key}) : super(key: key);

  @override
  State<PageMiddleBottom> createState() => _PageBottomState();
}

class _PageBottomState extends State<PageMiddleBottom> {
  PageController pageController = PageController(viewportFraction: 0.8);
  var _currPageValue = 0.0;
  double _scalFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider section
        Container(
          height: Dimensions.pageViewContainer,
          // width: 600,
          // color: Colors.redAccent,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        // dots section
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            color: Colors.black87, // Inactive color
            activeColor: Colors.pinkAccent,
          ),
        ),
        // popular jew section
        SizedBox(
          height: Dimensions.height15,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              Icon(Icons.arrow_drop_down_rounded),
            ],
          ),
        ),
        // list of jew

         ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                   margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20 ,bottom: Dimensions.width10),
                   child: Row(
                    children: [
                      // image section
                      Container(
                        width: Dimensions.ListViewImageSize,
                        height: Dimensions.ListViewImageSize,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius10),
                          color: Colors.white38,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("allassets/images/jew2.jpg"),
                          ),
                        ),
                      ),
                      // text section
                      Expanded(
                        child: Container(
                          // margin:  EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                           height: Dimensions.ListViewTextSize ,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight : Radius.circular(Dimensions.radius15),
                              bottomRight: Radius.circular(Dimensions.radius15),
                              ),
                      
                            color: Color.fromARGB(255, 226, 144, 144)
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 3,),
                                BigText(text: "Gold Chain With Blue Diamond"),
                                SizedBox(height: 5,),
                                SmallText(text: "Gold Chain Characteristic"),
                                SizedBox(height: 5,),
                                Flexible(
                                  child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconAndTextWidget(
                                        icon: Icons.label_outlined,
                                        text : "1234567890",                                      
                                        iconColor: Color.fromARGB(255, 59, 17, 8),
                                      ),
                                     // Spacer(),
                                      IconAndTextWidget(
                                        icon: Icons.monetization_on,
                                        text: "12,000",
                                        iconColor: Color.fromARGB(255, 59, 17, 8),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scalFactor + (_currPageValue - index + 1) * (1 - _scalFactor);
      //print(" 1index : $index , 1currScale : $currScale ");
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      // print(" 2index : $index");
      var currScale = 1 - (_currPageValue - index) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      // matrix = Matrix4.diagonal3Values(1, currScale, 1) ;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      var currentTrans = _height * (1 - _scalFactor) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currentTrans, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            // height: 250,
            margin: EdgeInsets.only(
                left: Dimensions.width15, right: Dimensions.width15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              // color: index.isEven ? Colors.pink : Colors.red,
              image: DecorationImage(
                image: AssetImage("allassets/images/jew5.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
