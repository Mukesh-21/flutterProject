import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/dimensions.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

import 'Page_bottom.dart';
// import 'dart:html';

class HomPage extends StatelessWidget {
  var days = 399;
  var name = "Mukesh";
  @override
  Widget build(BuildContext context) {
    /*  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Catalog App",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
          child: Container(
        child: Text("Hello Flutter In $days , $name"),
        color: Colors.orange,
        height: 100,
        width: 200,
      )),
       drawer: MyDrawer(),
    );*/

    return Scaffold(
      body: Column(children: [
        //Showing Head
        Container(
          child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.height53, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    // Text("Country"),
                    BigText(
                      text: "India",
                      color: Colors.pinkAccent,
                      Size: Dimensions.font20,
                    ),
                    Row(
                      children: [
                        SmallText(text: "Satara"),
                        Icon(Icons.arrow_drop_down_rounded),
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Showing Body
        Expanded(child: SingleChildScrollView(child: PageMiddleBottom())),
      ]),
    );
  }
}
