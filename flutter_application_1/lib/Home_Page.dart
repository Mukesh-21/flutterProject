import 'package:flutter/material.dart';

class HomPage extends StatelessWidget {
  var days = 36;
  var name = "Mukesh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
          child: Container(
        child: Text("Hello Flutter In $days , $name"),
        color: Colors.orange,
        height: 100,
        width: 200,
      )),
      drawer: Drawer(),
    );
  }
}
