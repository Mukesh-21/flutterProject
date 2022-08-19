import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

import '../widgets/drawer.dart';
import 'Page_bottom.dart';

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
      body: Column(
        children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 53, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    // Text("Country"),
                    BigText(
                      text: "India",
                      color: Colors.pinkAccent,
                      Size: 20,
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
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        PageMiddleBottom(),
      ]),
    );
  }
}
