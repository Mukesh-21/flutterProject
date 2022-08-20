import 'dart:ffi';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/dimensions.dart';

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
      Container(
      height: Dimensions.pageViewContainer,
     // color: Colors.redAccent,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    ),
    new DotsIndicator(
    dotsCount: 5,
    position: _currPageValue,
    decorator: DotsDecorator(
    color: Colors.black87, // Inactive color
    activeColor: Colors.pinkAccent,
  ),
    ),
  
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue-index) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;       
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }     
    else if (index == _currPageValue.floor() + 1) {
      var currScale = _scalFactor + (_currPageValue - index + 1) * (1 - _scalFactor);
      //print(" 1index : $index , 1currScale : $currScale ");
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1) ;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } 
    else if (index == _currPageValue.floor() - 1) {
     // print(" 2index : $index");
      var currScale = 1 - (_currPageValue - index) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      // matrix = Matrix4.diagonal3Values(1, currScale, 1) ;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
    else {
      var currScale = 0.8 ;
      var currentTrans = _height*(1-_scalFactor)/2 ;
         matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currentTrans, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            // height: 250,
            margin: EdgeInsets.only(left: Dimensions.width15, right: Dimensions.width15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven ? Colors.pink : Colors.red,
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
