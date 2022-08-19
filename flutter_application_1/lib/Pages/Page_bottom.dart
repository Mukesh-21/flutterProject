
import 'dart:ffi';
import 'package:flutter/material.dart';

class PageMiddleBottom extends StatefulWidget {
  PageMiddleBottom({Key? key}) : super(key: key);

  @override
  State<PageMiddleBottom> createState() => _PageBottomState();
}

class _PageBottomState extends State<PageMiddleBottom> {
  PageController pageController = PageController(viewportFraction: 0.8);
  var _currPageValue = 0.0 ;

  @override
  void initState(){
   super.initState();
   pageController.addListener(() { 
    setState(() {
      _currPageValue = pageController.page! ;
    
    });
   });
  }

  @override
  Void dispose(){
    super.dispose();
      pageController.dispose() ;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
         // height: 250,
          margin: EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.pink : Colors.red,
            image: DecorationImage(
              image: AssetImage("allassets/images/jew5.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
